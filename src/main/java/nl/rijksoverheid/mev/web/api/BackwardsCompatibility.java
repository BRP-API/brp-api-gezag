package nl.rijksoverheid.mev.web.api;

import nl.rijksoverheid.mev.gezagsmodule.domain.PreconditieChecker;
import nl.rijksoverheid.mev.web.api.v1.AbstractGezagsrelatie;
import nl.rijksoverheid.mev.web.api.v2.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.Optional;

/**
 * Enables backwards compatibility between v2 and v1 of the OpenApi Specification of this system.
 */
class BackwardsCompatibility {

    private static final Logger logger = LoggerFactory.getLogger(BackwardsCompatibility.class);

    private BackwardsCompatibility() {
    }

    /**
     * Upgrades gezag request (v1) to gezag request (v2) to enable backwards compatibility.
     *
     * @param gezagRequest gezag request (v1)
     * @return gezag request (v2)
     */
    static GezagRequest upgrade(nl.rijksoverheid.mev.web.api.v1.GezagRequest gezagRequest) {
        var burgerservicenummers = gezagRequest.getBurgerservicenummer();
        return new GezagRequest().burgerservicenummer(burgerservicenummers);
    }

    /**
     * Downgrades <i>personen</i> (v2) to <i>personen</i> (v1) to enable backwards compatibility.
     *
     * @param personen personen (v2) to downgrade to v1
     * @return personen (v1)
     */
    static List<nl.rijksoverheid.mev.web.api.v1.Persoon> downgrade(
        List<Persoon> personen,
        PreconditieChecker preconditieChecker
    ) {
        return personen.stream()
            .map(it -> downgrade(it, preconditieChecker))
            .toList();
    }

    private static nl.rijksoverheid.mev.web.api.v1.Persoon downgrade(
        Persoon persoon,
        PreconditieChecker preconditieChecker
    ) {
        var gezagsrelaties = persoon.getGezag().stream()
            .map(gezagsrelatie -> downgrade(gezagsrelatie, preconditieChecker))
            .flatMap(Optional::stream)
            .toList();

        var result = new nl.rijksoverheid.mev.web.api.v1.Persoon();
        result.setBurgerservicenummer(persoon.getBurgerservicenummer());
        result.setGezag(gezagsrelaties);

        return result;
    }

    private static Optional<AbstractGezagsrelatie> downgrade(
        Gezagsrelatie gezagsrelatie,
        PreconditieChecker preconditieChecker
    ) {
        nl.rijksoverheid.mev.web.api.v1.AbstractGezagsrelatie result;
        try {
            result = switch (gezagsrelatie) {
                case GezamenlijkOuderlijkGezag it -> BackwardsCompatibility.downgrade(it);
                case EenhoofdigOuderlijkGezag it -> BackwardsCompatibility.downgrade(it);
                case GezamenlijkGezag it -> BackwardsCompatibility.downgrade(it);
                case Voogdij it -> BackwardsCompatibility.downgrade(it);
                case GezagNietTeBepalen it -> BackwardsCompatibility.downgrade(it);
                case TijdelijkGeenGezag it -> BackwardsCompatibility.downgrade(it);
                default ->
                    throw new IllegalArgumentException("Unexpected gezagsrelatie type: " + gezagsrelatie.getClass().getName());
            };
        } catch (BurgerservicenummerAbsentException e) {
            logger.info("Transformeer gezag uitspraak {} (v2) naar GezagNietTeBepalen (v1) omdat een ouder van de minderjarige het burgerservicenummer mist", gezagsrelatie.getType());

            var minderjarige = BackwardsCompatibility.downgrade(gezagsrelatie.getMinderjarige());
            var missendGegeven = preconditieChecker.getMissendGegevenByBurgservicenummer(minderjarige.getBurgerservicenummer());
            var toelichting = "Gezag kan niet worden bepaald omdat relevante gegevens ontbreken. Het gaat om de volgende gegevens: " + missendGegeven;

            result = new nl.rijksoverheid.mev.web.api.v1.GezagNietTeBepalen()
                .minderjarige(minderjarige)
                .toelichting(toelichting);
        }

        result.setType(gezagsrelatie.getType());
        result.setInOnderzoek(gezagsrelatie.getInOnderzoek());

        return Optional.of(result);
    }

    private static nl.rijksoverheid.mev.web.api.v1.TweehoofdigOuderlijkGezag downgrade(
        GezamenlijkOuderlijkGezag gezamenlijkOuderlijkGezag
    ) {
        var minderjarige = BackwardsCompatibility.downgrade(gezamenlijkOuderlijkGezag.getMinderjarige());
        var gezagOuders = gezamenlijkOuderlijkGezag.getOuders().stream()
            .map(BackwardsCompatibility::downgrade)
            .toList();

        return new nl.rijksoverheid.mev.web.api.v1.TweehoofdigOuderlijkGezag()
            .minderjarige(minderjarige)
            .ouders(gezagOuders);
    }

    private static nl.rijksoverheid.mev.web.api.v1.EenhoofdigOuderlijkGezag downgrade(
        EenhoofdigOuderlijkGezag eenhoofdigOuderlijkGezag
    ) {
        var minderjarige = BackwardsCompatibility.downgrade(eenhoofdigOuderlijkGezag.getMinderjarige());
        var gezagOuder = BackwardsCompatibility.downgrade(eenhoofdigOuderlijkGezag.getOuder());

        return new nl.rijksoverheid.mev.web.api.v1.EenhoofdigOuderlijkGezag()
            .minderjarige(minderjarige)
            .ouder(gezagOuder);
    }

    private static nl.rijksoverheid.mev.web.api.v1.GezamenlijkGezag downgrade(GezamenlijkGezag gezamenlijkGezag) {
        var minderjarige = BackwardsCompatibility.downgrade(gezamenlijkGezag.getMinderjarige());
        var derde = gezamenlijkGezag.getDerde().map(BackwardsCompatibility::downgrade).orElseThrow();
        var optionalGezagOuder = gezamenlijkGezag.getOuder().map(BackwardsCompatibility::downgrade);

        var result = new nl.rijksoverheid.mev.web.api.v1.GezamenlijkGezag()
            .minderjarige(minderjarige)
            .derde(derde);
        result.setOuder(optionalGezagOuder);
        return result;
    }

    private static nl.rijksoverheid.mev.web.api.v1.GezagOuder downgrade(GezagOuder gezagOuder) {
        var burgerservicenummer = gezagOuder.getBurgerservicenummer().orElseThrow(BurgerservicenummerAbsentException::new);
        return new nl.rijksoverheid.mev.web.api.v1.GezagOuder()
            .burgerservicenummer(burgerservicenummer);
    }

    private static class BurgerservicenummerAbsentException extends RuntimeException {
    }

    private static nl.rijksoverheid.mev.web.api.v1.Derde downgrade(Derde derde) {
        return switch (derde) {
            case BekendeDerde it -> BackwardsCompatibility.downgrade(it);
            case OnbekendeDerde it -> BackwardsCompatibility.downgrade(it);
            default -> throw new IllegalArgumentException("Unexpected derde type: " + derde.getClass().getName());
        };
    }

    private static nl.rijksoverheid.mev.web.api.v1.OnbekendeDerde downgrade(OnbekendeDerde onbekendeDerde) {
        return new nl.rijksoverheid.mev.web.api.v1.OnbekendeDerde()
            .type(onbekendeDerde.getType());
    }

    private static nl.rijksoverheid.mev.web.api.v1.Voogdij downgrade(Voogdij voogdij) {
        var minderjarige = BackwardsCompatibility.downgrade(voogdij.getMinderjarige());
        var bekendeDerden = voogdij.getDerden().stream()
            .map(BackwardsCompatibility::downgrade)
            .toList();

        return new nl.rijksoverheid.mev.web.api.v1.Voogdij()
            .minderjarige(minderjarige)
            .derden(bekendeDerden);
    }

    private static nl.rijksoverheid.mev.web.api.v1.BekendeDerde downgrade(BekendeDerde bekendeDerde) {
        var burgerservicenummer = bekendeDerde.getBurgerservicenummer().orElseThrow(BurgerservicenummerAbsentException::new);
        return new nl.rijksoverheid.mev.web.api.v1.BekendeDerde()
            .type(bekendeDerde.getType())
            .burgerservicenummer(burgerservicenummer);
    }

    private static nl.rijksoverheid.mev.web.api.v1.GezagNietTeBepalen downgrade(GezagNietTeBepalen gezagNietTeBepalen) {
        var minderjarige = BackwardsCompatibility.downgrade(gezagNietTeBepalen.getMinderjarige());
        var toelichting = gezagNietTeBepalen.getToelichting();

        return new nl.rijksoverheid.mev.web.api.v1.GezagNietTeBepalen()
            .minderjarige(minderjarige)
            .toelichting(toelichting);
    }

    private static nl.rijksoverheid.mev.web.api.v1.TijdelijkGeenGezag downgrade(TijdelijkGeenGezag tijdelijkGeenGezag) {
        var minderjarige = BackwardsCompatibility.downgrade(tijdelijkGeenGezag.getMinderjarige());
        var toelichting = tijdelijkGeenGezag.getToelichting();

        return new nl.rijksoverheid.mev.web.api.v1.TijdelijkGeenGezag()
            .minderjarige(minderjarige)
            .toelichting(toelichting);
    }

    private static nl.rijksoverheid.mev.web.api.v1.Minderjarige downgrade(Minderjarige minderjarige) {
        return new nl.rijksoverheid.mev.web.api.v1.Minderjarige()
            .burgerservicenummer(minderjarige.getBurgerservicenummer());
    }
}
