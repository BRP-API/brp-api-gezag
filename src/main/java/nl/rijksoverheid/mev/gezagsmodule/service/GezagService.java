package nl.rijksoverheid.mev.gezagsmodule.service;

import lombok.RequiredArgsConstructor;
import nl.rijksoverheid.mev.exception.AfleidingsregelException;
import nl.rijksoverheid.mev.exception.GezagException;
import nl.rijksoverheid.mev.gezagsmodule.domain.ARAntwoordenModel;
import nl.rijksoverheid.mev.gezagsmodule.domain.Leeftijd;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoon;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag.GezagsBepaling;
import nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag.GezagsVragenMapFactory;
import nl.rijksoverheid.mev.logging.GezagResultaat;
import nl.rijksoverheid.mev.logging.LoggingContext;
import nl.rijksoverheid.mev.web.api.v2.Gezagsrelatie;
import nl.rijksoverheid.mev.web.api.v2.GezagNietTeBepalen;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.*;

import static net.logstash.logback.marker.Markers.appendEntries;

/**
 * Service voor bepalen gezag
 */
@Service
@RequiredArgsConstructor
public class GezagService {

    private static final Logger logger = LoggerFactory.getLogger(GezagService.class);
    private static final String ROUTE_MEERDERJARIG = "2m";
    private static final String TOELICHTING_ONBEKEND_PERSOON = "Gezag kan niet worden bepaald omdat er geen persoonslijst is gevonden bij het opgegeven burgerservicenummer.";
    private final GezagsrelatieService gezagsrelatieService;
    private final VragenlijstService vragenlijstService;
    private final BrpService brpService;
    private final BeslissingsmatrixService beslissingsmatrixService;
    private final LoggingContext loggingContext;
    private final ToelichtingService toelichtingService;
    private final GezagsVragenMapFactory gezagsVragenMapFactory;

    /**
     * Bepaal gezag van kind
     *
     * @param burgerservicenummers       de burgerservicenummers om gezag voor te bepalen
     * @param burgerservicenummerPersoon het burgerservicenummer van de persoon waar de gezag
     *                                   bepaling voor plaats vind
     * @return lijst gezagsrelaties of lijst gezagsrelatie 'N'
     */
    public List<Gezagsrelatie> getGezag(final Set<String> burgerservicenummers,
                                                final String burgerservicenummerPersoon) {
        List<Gezagsrelatie> gezagsRelaties = new ArrayList<>();
        for (String burgerservicenummer : burgerservicenummers) {
            try {
                gezagsRelaties.addAll(
                    getGezagResultaat(burgerservicenummer, burgerservicenummerPersoon));
            } catch (AfleidingsregelException ex) {
                logger.error(
                    "Gezagsrelatie kon niet worden bepaald, dit is een urgent probleem! Resultaat 'N' wordt als antwoord gegeven",
                    ex);
                gezagsRelaties.add(new GezagNietTeBepalen().toelichting(
                    "Gezagsrelatie kon niet worden bepaald vanwege een onverwachte exceptie, resultaat 'N' wordt als antwoord gegeven"));
            }
        }
        return gezagsRelaties;
    }

    /**
     * Bepaal gezag afleidingsresultaat
     *
     * @param burgerservicenummer        het burgerservicenummers om gezag voor te bepalen
     * @param burgerservicenummerPersoon het burgerservicenummer van de persoon waar de gezag
     *                                   bepaling voor plaats vind
     * @return gezagsafleidingsresultaat
     * @throws AfleidingsregelException wanneer gezag niet kan worden bepaald
     */
    public List<Gezagsrelatie> getGezagResultaat(final String burgerservicenummer,
                                                         final String burgerservicenummerPersoon) throws GezagException {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        List<Gezagsrelatie> gezagsRelaties = new ArrayList<>();
        String route = null;
        Optional<Persoonslijst> plPersoon = Optional.empty();
        GezagsBepaling gezagsBepaling = null;
        try {
            plPersoon = brpService.getPersoonslijst(burgerservicenummer);
            if (plPersoon.isPresent()) {
                Persoonslijst persoonslijst = plPersoon.get();
                Persoon persoon = persoonslijst.getPersoon();
                if (persoon != null && Leeftijd.of(persoon.getGeboortedatum()).isMinderjarig()) {
                    gezagsBepaling = new GezagsBepaling(burgerservicenummer,
                        burgerservicenummerPersoon, persoonslijst, brpService,
                        vragenlijstService.getVragenMap(),
                        gezagsVragenMapFactory.getGezagVragen());
                    arAntwoordenModel = gezagsBepaling.start();
                } else {
                    route = ROUTE_MEERDERJARIG;
                }
            }
        } catch (AfleidingsregelException ex) {
            arAntwoordenModel.setException(ex);
        }

        route = (route == null ? beslissingsmatrixService.findMatchingRoute(arAntwoordenModel, gezagsBepaling) : route);
        arAntwoordenModel.setRoute(route);
        setConfiguredValues(arAntwoordenModel, plPersoon.isPresent());

        if (gezagsBepaling != null) {
            List<String> missendeGegegevens = gezagsBepaling.getMissendeGegegevens();
            UUID errorTraceCode = gezagsBepaling.getErrorTraceCode();

            String toelichting = arAntwoordenModel.getUitleg();
            if (errorTraceCode != null) {
                toelichting = toelichtingService.setErrorReferenceToelichting(toelichting, errorTraceCode.toString());
            } else if (!missendeGegegevens.isEmpty()) {
                toelichting = toelichtingService.decorateToelichting(toelichting, missendeGegegevens);
            }
            arAntwoordenModel.setUitleg(toelichting);

            gezagsRelaties = gezagsrelatieService.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);
        }

        if (logger.isInfoEnabled()) {
            var gezagResultaat = new GezagResultaat(
                loggingContext.getPlIdBy(burgerservicenummer),
                burgerservicenummer,
                arAntwoordenModel.getSoortGezag(),
                arAntwoordenModel.getUitleg(),
                route
            );
            logger.info(
                appendEntries(Map.of(
                    "gezag_resultaat", gezagResultaat,
                    "antwoorden_model", arAntwoordenModel
                )),
                "Gezag bepaald voor persoon"
            );
        }
        return gezagsRelaties;
    }

    private void setConfiguredValues(final ARAntwoordenModel arAntwoordenModel,
                                     final boolean persoonslijstExists) throws AfleidingsregelException {
        ARAntwoordenModel configuredARAntwoordenModel = beslissingsmatrixService.getARAntwoordenModel(
            arAntwoordenModel);
        arAntwoordenModel.setSoortGezag(configuredARAntwoordenModel.getSoortGezag());
        arAntwoordenModel.setGezagOuder1(configuredARAntwoordenModel.getGezagOuder1());
        arAntwoordenModel.setGezagOuder2(configuredARAntwoordenModel.getGezagOuder2());
        arAntwoordenModel.setGezagNietOuder1(configuredARAntwoordenModel.getGezagNietOuder1());
        arAntwoordenModel.setGezagNietOuder2(configuredARAntwoordenModel.getGezagNietOuder2());
        arAntwoordenModel.setUitleg((!persoonslijstExists ? TOELICHTING_ONBEKEND_PERSOON :
            configuredARAntwoordenModel.getUitleg()));
    }
}
