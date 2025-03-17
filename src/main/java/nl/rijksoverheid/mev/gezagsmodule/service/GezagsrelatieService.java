package nl.rijksoverheid.mev.gezagsmodule.service;

import nl.rijksoverheid.mev.gezagsmodule.domain.ARAntwoordenModel;
import nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag.GezagsBepaling;
import nl.rijksoverheid.mev.web.api.v2.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GezagsrelatieService {

    private static final Logger logger = LoggerFactory.getLogger(GezagsrelatieService.class);
    private static final String TYPE_TWEEHOOFDIG_OUDERLIJK_GEZAG = "TweehoofdigOuderlijkGezag";
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
    public List<AbstractGezagsrelatie> bepaalGezagsrelaties(
        final ARAntwoordenModel arAntwoordenModel,
        final GezagsBepaling gezagsBepaling) {
        List<AbstractGezagsrelatie> gezagsrelaties = new ArrayList<>();
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
            AbstractGezagsrelatie gezag = switch (soortGezag) {
                case "OG1" -> createEenhoofdelijkOuderlijkGezag(
                    arAntwoordenModel,
                    bevraagdePersoonIsDeMinderjarige,
                    gezagsBepaling
                );
                case "OG2" -> createTweehoofdigOuderlijkGezag(gezagsBepaling);
                case "GG" -> createGezamenlijkGezag(arAntwoordenModel, gezagsBepaling);
                case "V" -> createVoogdij(
                    bevraagdePersoonIsDeMinderjarige,
                    burgerservicenummerPersoon,
                    burgerservicenummerNietOuder,
                    burgerservicenummer,
                    arAntwoordenModel.hasNietOuderGezag());
                case "G" ->
                    createTijdelijkeGeenGezag(bevraagdePersoonIsDeMinderjarige, burgerservicenummer, arAntwoordenModel.getUitleg());
                case "N" ->
                    createGezagNietTeBepalen(bevraagdePersoonIsDeMinderjarige, burgerservicenummer, arAntwoordenModel.getUitleg());
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

    private AbstractGezagsrelatie createEenhoofdelijkOuderlijkGezag(
        final ARAntwoordenModel arAntwoordenModel,
        final boolean bevraagdePersoonIsDeMinderjarige,
        final GezagsBepaling gezagsBepaling
    ) {
        String burgerservicenummer = gezagsBepaling.getBurgerservicenummer();
        String burgerservicenummerPersoon = gezagsBepaling.getBurgerservicenummerPersoon();
        String burgerservicenummerOuder1 = gezagsBepaling.getBurgerservicenummerOuder1();
        String burgerservicenummerOuder2 = gezagsBepaling.getBurgerservicenummerOuder2();

        if (arAntwoordenModel.hasOuder1Gezag() && burgerservicenummerOuder1 != null && (bevraagdePersoonIsDeMinderjarige || burgerservicenummerPersoon.equals(burgerservicenummerOuder1))) {
            var ouder1 = gezagsBepaling.getPlPersoon().getOuder1AsOptional().orElseThrow();
            var geslachtsnaam = ouder1.getGeslachtsnaam();

            return new EenhoofdigOuderlijkGezag()
                .ouder(new GezagOuder()
                    .burgerservicenummer(burgerservicenummerOuder1)
                    .naam(new NaamVolledigeNaam().volledigeNaam(geslachtsnaam)))
                .minderjarige(new Minderjarige().burgerservicenummer(burgerservicenummer))
                .type(TYPE_EENHOOFDIG_OUDERLIJK_GEZAG);
        }
        if (arAntwoordenModel.hasOuder2Gezag() && burgerservicenummerOuder2 != null && (bevraagdePersoonIsDeMinderjarige || burgerservicenummerPersoon.equals(burgerservicenummerOuder2))) {
            var ouder2 = gezagsBepaling.getPlPersoon().getOuder2AsOptional().orElseThrow();
            var geslachtsnaam = ouder2.getGeslachtsnaam();

            return new EenhoofdigOuderlijkGezag()
                .ouder(new GezagOuder()
                    .burgerservicenummer(burgerservicenummerOuder1)
                    .naam(new NaamVolledigeNaam().volledigeNaam(geslachtsnaam)))
                .minderjarige(new Minderjarige().burgerservicenummer(burgerservicenummer))
                .type(TYPE_EENHOOFDIG_OUDERLIJK_GEZAG);
        }

        return null;
    }

    private AbstractGezagsrelatie createTweehoofdigOuderlijkGezag(GezagsBepaling gezagsBepaling) {
        String burgerservicenummer = gezagsBepaling.getBurgerservicenummer();
        String burgerservicenummerOuder1 = gezagsBepaling.getBurgerservicenummerOuder1();
        String burgerservicenummerOuder2 = gezagsBepaling.getBurgerservicenummerOuder2();

        var ouder1 = gezagsBepaling.getPlPersoon().getOuder1AsOptional().orElseThrow();
        var ouder1Geslachtsnaam = ouder1.getGeslachtsnaam();
        var ouder2 = gezagsBepaling.getPlPersoon().getOuder2AsOptional().orElseThrow();
        var ouder2Geslachtsnaam = ouder2.getGeslachtsnaam();

        return new TweehoofdigOuderlijkGezag()
            .minderjarige(new Minderjarige().burgerservicenummer(burgerservicenummer))
            .addOudersItem(new GezagOuder()
                .burgerservicenummer(burgerservicenummerOuder1)
                .naam(new NaamVolledigeNaam().volledigeNaam(ouder1Geslachtsnaam))
            )
            .addOudersItem(new GezagOuder()
                .burgerservicenummer(burgerservicenummerOuder2)
                .naam(new NaamVolledigeNaam().volledigeNaam(ouder2Geslachtsnaam))
            )
            .type(TYPE_TWEEHOOFDIG_OUDERLIJK_GEZAG);
    }

    private AbstractGezagsrelatie createGezamenlijkGezag(
        ARAntwoordenModel arAntwoordenModel,
        GezagsBepaling gezagsBepaling
    ) {
        String burgerservicenummer = gezagsBepaling.getBurgerservicenummer();
        String burgerservicenummerOuder1 = gezagsBepaling.getBurgerservicenummerOuder1();
        String burgerservicenummerOuder2 = gezagsBepaling.getBurgerservicenummerOuder2();
        String burgerservicenummerNietOuder = gezagsBepaling.getBurgerservicenummerNietOuder();

        var ouder1 = gezagsBepaling.getPlPersoon().getOuder1AsOptional().orElseThrow();
        var ouder1Geslachtsnaam = ouder1.getGeslachtsnaam();
        var ouder2 = gezagsBepaling.getPlPersoon().getOuder2AsOptional().orElseThrow();
        var ouder2Geslachtsnaam = ouder2.getGeslachtsnaam();

        var hasOuder1Gezag = arAntwoordenModel.hasOuder1Gezag();
        // @formatter:off
        var gezagOuder = hasOuder1Gezag && burgerservicenummerOuder1 != null
            ? new GezagOuder()
                .burgerservicenummer(burgerservicenummerOuder1)
                .naam(new NaamVolledigeNaam().volledigeNaam(ouder1Geslachtsnaam))
            : new GezagOuder()
                .burgerservicenummer(burgerservicenummerOuder2)
                .naam(new NaamVolledigeNaam().volledigeNaam(ouder2Geslachtsnaam));
        // @formatter:on

        var isGezamenlijkGezagVanwegeGerechtelijkeUitspraak = arAntwoordenModel.isGezamenlijkGezagVanwegeGerechtelijkeUitspraak();
        var derde = burgerservicenummerNietOuder == null || isGezamenlijkGezagVanwegeGerechtelijkeUitspraak
            ? new OnbekendeDerde()
            : new BekendeDerde().burgerservicenummer(burgerservicenummerNietOuder);

        return new GezamenlijkGezag()
            .minderjarige(new Minderjarige().burgerservicenummer(burgerservicenummer))
            .ouder(gezagOuder)
            .derde(derde)
            .type(TYPE_GEZAMELIJK_GEZAG);
    }

    private AbstractGezagsrelatie createVoogdij(
        final boolean bevraagdePersoonIsDeMinderjarige,
        final String burgerservicenummerPersoon,
        final String burgerservicenummerNietOuder,
        final String burgerservicenummer,
        final boolean nietOuderGezag) {
        if (bevraagdePersoonIsDeMinderjarige || burgerservicenummerPersoon.equals(burgerservicenummerNietOuder)) {
            Voogdij gezag = new Voogdij()
                .minderjarige(new Minderjarige().burgerservicenummer(burgerservicenummer))
                .type(TYPE_VOOGDIJ);

            if (nietOuderGezag && burgerservicenummerNietOuder != null) {
                gezag.addDerdenItem(new BekendeDerde().burgerservicenummer(burgerservicenummerNietOuder));
            }

            return gezag;
        }

        return null;
    }

    private AbstractGezagsrelatie createTijdelijkeGeenGezag(
        final boolean bevraagdePersoonIsDeMinderjarige,
        final String burgerservicenummer,
        final String uitleg) {
        if (bevraagdePersoonIsDeMinderjarige) {
            return new TijdelijkGeenGezag()
                .type(TYPE_TIJDELIJK_GEEN_GEZAG)
                .minderjarige(new Minderjarige().burgerservicenummer(burgerservicenummer))
                .toelichting(uitleg);
        }
        return null;
    }

    private AbstractGezagsrelatie createGezagNietTeBepalen(
        final boolean bevraagdePersoonIsDeMinderjarige,
        final String burgerservicenummer,
        final String uitleg) {
        if (bevraagdePersoonIsDeMinderjarige) {
            return new GezagNietTeBepalen()
                .type(TYPE_GEZAG_NIET_TE_BEPALEN)
                .minderjarige(new Minderjarige().burgerservicenummer(burgerservicenummer))
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
