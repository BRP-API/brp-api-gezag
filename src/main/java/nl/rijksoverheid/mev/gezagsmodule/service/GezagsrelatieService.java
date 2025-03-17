package nl.rijksoverheid.mev.gezagsmodule.service;

import nl.rijksoverheid.mev.gezagsmodule.domain.ARAntwoordenModel;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoon;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag.GezagsBepaling;
import nl.rijksoverheid.mev.web.api.Gezagsrelaties;
import nl.rijksoverheid.mev.web.api.v2.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GezagsrelatieService {

    private static final Logger logger = LoggerFactory.getLogger(GezagsrelatieService.class);
    private static final String TYPE_GEZAMENLIJK_OUDERLIJK_GEZAG = "GezamenlijkOuderlijkGezag";
    private static final String TYPE_EENHOOFDIG_OUDERLIJK_GEZAG = "EenhoofdigOuderlijkGezag";
    private static final String TYPE_GEZAMELIJK_GEZAG = "GezamenlijkGezag";
    private static final String TYPE_VOOGDIJ = "Voogdij";
    private static final String TYPE_TIJDELIJK_GEEN_GEZAG = "TijdelijkGeenGezag";
    private static final String TYPE_GEZAG_NIET_TE_BEPALEN = "GezagNietTeBepalen";

    /**
     * Bepaal op basis van het antwoorden model (resultaat van een gezagsbepaling) wat de gezagsrelaties zijn voor de persoon
     *
     * @param arAntwoordenModel resultaat van de gezagsbepaling
     * @param gezagsBepaling    de (uitgevoerde gezags bepaling
     * @return de gezagsrelaties of leeg
     */
    public List<Gezagsrelatie> bepaalGezagsrelaties(
        final ARAntwoordenModel arAntwoordenModel,
        final GezagsBepaling gezagsBepaling) {
        List<Gezagsrelatie> gezagsrelaties = new ArrayList<>();
        if (hasRequired(arAntwoordenModel, gezagsBepaling)) {
            return gezagsrelaties;
        }

        String burgerservicenummer = gezagsBepaling.getBurgerservicenummer();
        String burgerservicenummerPersoon = gezagsBepaling.getBurgerservicenummerPersoon();
        String burgerservicenummerOuder1 = gezagsBepaling.getBurgerservicenummerOuder1();
        String burgerservicenummerOuder2 = gezagsBepaling.getBurgerservicenummerOuder2();
        String burgerservicenummerNietOuder = gezagsBepaling.getBurgerservicenummerNietOuder();

        boolean bevraagdePersoonIsDeMinderjarige = burgerservicenummer.equals(burgerservicenummerPersoon);
        if (tenminsteEenRelatieMetPersoon(bevraagdePersoonIsDeMinderjarige, burgerservicenummerPersoon, burgerservicenummerOuder1, burgerservicenummerOuder2, burgerservicenummerNietOuder, arAntwoordenModel)) {
            String soortGezag = arAntwoordenModel.getSoortGezag();
            Gezagsrelatie gezag = switch (soortGezag) {
                case "OG1" -> createEenhoofdelijkOuderlijkGezag(
                    arAntwoordenModel,
                    bevraagdePersoonIsDeMinderjarige,
                    gezagsBepaling
                );
                case "OG2" -> createGezamenlijkOuderlijkGezag(gezagsBepaling);
                case "GG" -> createGezamenlijkGezag(arAntwoordenModel, gezagsBepaling);
                case "V" -> createVoogdij(bevraagdePersoonIsDeMinderjarige, arAntwoordenModel.hasNietOuderGezag(), gezagsBepaling);
                case "G" ->
                    createTijdelijkeGeenGezag(bevraagdePersoonIsDeMinderjarige, arAntwoordenModel.getUitleg(), gezagsBepaling);
                case "N" ->
                    createGezagNietTeBepalen(bevraagdePersoonIsDeMinderjarige, arAntwoordenModel.getUitleg(), gezagsBepaling);
                case "NVT" -> {
                    logger.info("Gezag uitkomst is NVT");
                    yield null;
                }
                default -> {
                    logger.warn("Onverwachte gezagsoort ontvangen: {}", soortGezag);
                    yield null;
                }
            };
            if(gezag != null) {
                if(gezagsBepaling.warenVeldenInOnderzoek()) {
                    gezag.inOnderzoek(true);
                }

                gezagsrelaties.add(gezag);
            }
        }

        return gezagsrelaties;
    }

    private boolean hasRequired(final ARAntwoordenModel arAntwoordenModel, final GezagsBepaling gezagsBepaling) {
        return arAntwoordenModel == null ||
            gezagsBepaling == null ||
            gezagsBepaling.getBurgerservicenummer() == null ||
            gezagsBepaling.getBurgerservicenummerPersoon() == null;
    }

    private Gezagsrelatie createEenhoofdelijkOuderlijkGezag(
        final ARAntwoordenModel arAntwoordenModel,
        final boolean bevraagdePersoonIsDeMinderjarige,
        final GezagsBepaling gezagsBepaling
    ) {
        String burgerservicenummerPersoon = gezagsBepaling.getBurgerservicenummerPersoon();
        String burgerservicenummerOuder1 = gezagsBepaling.getBurgerservicenummerOuder1();
        String burgerservicenummerOuder2 = gezagsBepaling.getBurgerservicenummerOuder2();
        var minderjarige = gezagsBepaling.getPlPersoon().getPersoon();

        if (arAntwoordenModel.hasOuder1Gezag() && burgerservicenummerOuder1 != null && (bevraagdePersoonIsDeMinderjarige || burgerservicenummerPersoon.equals(burgerservicenummerOuder1))) {
            var ouder1 = gezagsBepaling.getPlPersoon().getOuder1AsOptional().orElseThrow();

            return new EenhoofdigOuderlijkGezag()
                .ouder(Gezagsrelaties.GezagOuders.from(ouder1))
                .minderjarige(Gezagsrelaties.Minderjarigen.from(minderjarige))
                .type(TYPE_EENHOOFDIG_OUDERLIJK_GEZAG);
        }
        if (arAntwoordenModel.hasOuder2Gezag() && burgerservicenummerOuder2 != null && (bevraagdePersoonIsDeMinderjarige || burgerservicenummerPersoon.equals(burgerservicenummerOuder2))) {
            var ouder2 = gezagsBepaling.getPlPersoon().getOuder2AsOptional().orElseThrow();

            return new EenhoofdigOuderlijkGezag()
                .minderjarige(Gezagsrelaties.Minderjarigen.from(minderjarige))
                .ouder(Gezagsrelaties.GezagOuders.from(ouder2))
                .type(TYPE_EENHOOFDIG_OUDERLIJK_GEZAG);
        }

        return null;
    }

    private Gezagsrelatie createGezamenlijkOuderlijkGezag(GezagsBepaling gezagsBepaling) {
        var minderjarige = gezagsBepaling.getPlPersoon().getPersoon();
        var ouder1 = gezagsBepaling.getPlPersoon().getOuder1AsOptional().orElseThrow();
        var ouder2 = gezagsBepaling.getPlPersoon().getOuder2AsOptional().orElseThrow();

        return new GezamenlijkOuderlijkGezag()
            .minderjarige(Gezagsrelaties.Minderjarigen.from(minderjarige))
            .addOudersItem(Gezagsrelaties.GezagOuders.from(ouder1))
            .addOudersItem(Gezagsrelaties.GezagOuders.from(ouder2))
            .type(TYPE_GEZAMENLIJK_OUDERLIJK_GEZAG);
    }

    private Gezagsrelatie createGezamenlijkGezag(ARAntwoordenModel arAntwoordenModel, GezagsBepaling gezagsBepaling) {
        var minderjarige = gezagsBepaling.getPlPersoon().getPersoon();
        String burgerservicenummerOuder1 = gezagsBepaling.getBurgerservicenummerOuder1();
        String burgerservicenummerNietOuder = gezagsBepaling.getBurgerservicenummerNietOuder();

        var ouder1 = gezagsBepaling.getPlPersoon().getOuder1AsOptional();
        var ouder2 = gezagsBepaling.getPlPersoon().getOuder2AsOptional();

        var hasOuder1Gezag = arAntwoordenModel.hasOuder1Gezag();
        var gezagOuder = hasOuder1Gezag && burgerservicenummerOuder1 != null
            ? ouder1.map(Gezagsrelaties.GezagOuders::from).orElseThrow()
            : ouder2.map(Gezagsrelaties.GezagOuders::from).orElseThrow();

        var isGezamenlijkGezagVanwegeGerechtelijkeUitspraak = arAntwoordenModel.isGezamenlijkGezagVanwegeGerechtelijkeUitspraak();
        var derde = burgerservicenummerNietOuder == null || isGezamenlijkGezagVanwegeGerechtelijkeUitspraak
            ? Gezagsrelaties.Derden.from()
            : Gezagsrelaties.Derden.from(gezagsBepaling.getPlNietOuder().getPersoon());

        return new GezamenlijkGezag()
            .minderjarige(Gezagsrelaties.Minderjarigen.from(minderjarige))
            .ouder(gezagOuder)
            .derde(derde)
            .type(TYPE_GEZAMELIJK_GEZAG);
    }

    private Gezagsrelatie createVoogdij(
        final boolean isMinderjarigeDeBevraagdePersoon,
        final boolean heeftNietOuderGezag,
        GezagsBepaling gezagsBepaling
    ) {
        var optionalNietOuder = gezagsBepaling.fetchPersoonslijstVanNietOuder().map(Persoonslijst::getPersoon);
        String burgerservicenummerBevraagdePersoon = gezagsBepaling.getBurgerservicenummerPersoon();
        boolean isNietOuderDeBevraagdePersoon = optionalNietOuder
            .map(Persoon::getBurgerservicenummer)
            .map(burgerservicenummerBevraagdePersoon::equals)
            .orElse(false);

        if (!isMinderjarigeDeBevraagdePersoon && !isNietOuderDeBevraagdePersoon) {
            return null;
        }

        var minderjarige = gezagsBepaling.getPlPersoon().getPersoon();
        var voogdij = new Voogdij()
            .minderjarige(Gezagsrelaties.Minderjarigen.from(minderjarige))
            .type(TYPE_VOOGDIJ);

        if (heeftNietOuderGezag) {
            var bekendeDerde = optionalNietOuder
                .map(Gezagsrelaties.Derden::from)
                .orElseThrow(() -> new IllegalStateException("niet ouder heeft gezag maar is niet aanwezig"));
            voogdij.addDerdenItem(bekendeDerde);
        }

        return voogdij;

    }

    private Gezagsrelatie createTijdelijkeGeenGezag(
        final boolean bevraagdePersoonIsDeMinderjarige,
        final String uitleg,
        GezagsBepaling gezagsBepaling
    ) {
        var minderjarige = gezagsBepaling.getPlPersoon().getPersoon();

        if (bevraagdePersoonIsDeMinderjarige) {
            return new TijdelijkGeenGezag()
                .type(TYPE_TIJDELIJK_GEEN_GEZAG)
                .minderjarige(Gezagsrelaties.Minderjarigen.from(minderjarige))
                .toelichting(uitleg);
        }
        return null;
    }

    private Gezagsrelatie createGezagNietTeBepalen(
        final boolean bevraagdePersoonIsDeMinderjarige,
        final String uitleg,
        GezagsBepaling gezagsBepaling
    ) {
        var minderjarige = gezagsBepaling.getPlPersoon().getPersoon();

        if (bevraagdePersoonIsDeMinderjarige) {
            return new GezagNietTeBepalen()
                .type(TYPE_GEZAG_NIET_TE_BEPALEN)
                .minderjarige(Gezagsrelaties.Minderjarigen.from(minderjarige))
                .toelichting(uitleg);
        }
        return null;
    }

    private boolean tenminsteEenRelatieMetPersoon(
        final boolean bevraagdePersoonIsDeMinderjarige,
        final String burgerservicenummerPersoon,
        final String burgerservicenummerOuder1,
        final String burgerservicenummerOuder2,
        final String burgerservicenummerNietOuder,
        final ARAntwoordenModel arAntwoordenModel) {
        return bevraagdePersoonIsDeMinderjarige ||
            burgerservicenummerPersoon.equals(burgerservicenummerOuder1) && arAntwoordenModel.hasOuder1Gezag() ||
            burgerservicenummerPersoon.equals(burgerservicenummerOuder2) && arAntwoordenModel.hasOuder2Gezag() ||
            burgerservicenummerPersoon.equals(burgerservicenummerNietOuder) && !arAntwoordenModel.isGezamenlijkGezagVanwegeGerechtelijkeUitspraak();
    }
}
