package nl.rijksoverheid.mev.web.api;

import nl.rijksoverheid.mev.gezagsmodule.domain.AdellijkeTitelPredicaat;
import nl.rijksoverheid.mev.gezagsmodule.domain.Ouder1;
import nl.rijksoverheid.mev.gezagsmodule.domain.Ouder2;
import nl.rijksoverheid.mev.web.api.v2.*;

import java.util.Optional;

/**
 * Extension functions on {@link Gezagsrelatie}.
 */
public class Gezagsrelaties {
    private Gezagsrelaties() {
    }

    /**
     * Extension functions on {@link Minderjarige}.
     */
    public static class Minderjarigen {

        private Minderjarigen() {
        }

        public static Minderjarige from(nl.rijksoverheid.mev.gezagsmodule.domain.Persoon minderjarige) {
            var naam = minderjarige.getNaam().map(Namen::from).orElseThrow();
            var optionalGeslacht = minderjarige.getGeslachtsaanduiding().map(Geslachtsaanduidingen::from);

            var result = new Minderjarige()
                .burgerservicenummer(minderjarige.getBurgerservicenummer())
                .naam(naam)
                .geboorte(new GeboorteBasis().datum(minderjarige.getGeboortedatum()));
            result.setGeslacht(optionalGeslacht);
            return result;
        }
    }

    /**
     * Extension functions on {@link GezagOuder}.
     */
    public static class GezagOuders {

        private GezagOuders() {
        }

        public static GezagOuder from(Ouder1 ouder1) {
            var naam = ouder1.getNaam().map(Namen::from).orElseThrow();
            var optionalBurgerservicenummer = Optional.ofNullable(ouder1.getBurgerservicenummer());
            var optionalGeslacht = ouder1.getGeslachtsAanduiding().map(Geslachtsaanduidingen::from);

            var result = new GezagOuder()
                .naam(naam);
            result.setBurgerservicenummer(optionalBurgerservicenummer);
            result.setGeslacht(optionalGeslacht);
            return result;
        }

        public static GezagOuder from(Ouder2 ouder2) {
            var naam = ouder2.getNaam().map(Namen::from).orElseThrow();
            var optionalBurgerservicenummer = Optional.ofNullable(ouder2.getBurgerservicenummer());
            var optionalGeslacht = ouder2.getGeslachtsAanduiding().map(Geslachtsaanduidingen::from);

            var result = new GezagOuder()
                .naam(naam);
            result.setBurgerservicenummer(optionalBurgerservicenummer);
            result.setGeslacht(optionalGeslacht);
            return result;
        }
    }

    public static class Derden {

        private Derden() {
        }

        public static BekendeDerde from(nl.rijksoverheid.mev.gezagsmodule.domain.HuwelijkOfPartnerschap huwelijkOfPartnerschap) {
            var naam = huwelijkOfPartnerschap.getNaam().map(Namen::from).orElseThrow();
            var optionalBurgerservicenummer = huwelijkOfPartnerschap.getBurgerservicenummer();
            var optionalGeslachtsaanduiding = huwelijkOfPartnerschap.getGeslachtsaanduiding().map(Geslachtsaanduidingen::from);

            var result = new BekendeDerde()
                .type("BekendeDerde")
                .naam(naam);
            result.setBurgerservicenummer(optionalBurgerservicenummer);
            result.setGeslacht(optionalGeslachtsaanduiding);
            return result;
        }

        public static BekendeDerde from(nl.rijksoverheid.mev.gezagsmodule.domain.Persoon derde) {
            var burgerservicenummer = derde.getBurgerservicenummer();
            var naam = derde.getNaam().map(Namen::from).orElseThrow();
            var optionalGeslachtsaanduiding = derde.getGeslachtsaanduiding().map(Geslachtsaanduidingen::from);

            var result = new BekendeDerde()
                .type("BekendeDerde")
                .burgerservicenummer(burgerservicenummer)
                .naam(naam);
            result.setGeslacht(optionalGeslachtsaanduiding);
            return result;
        }

        public static OnbekendeDerde from() {
            return new OnbekendeDerde()
                .type("OnbekendeDerde");
        }
    }

    private static class Namen {
        private static Naam from(nl.rijksoverheid.mev.gezagsmodule.domain.Naam naam) {
            var result = new Naam()
                .geslachtsnaam(naam.geslachtsnaam());
            result.setVoornamen(naam.voornamen());
            result.setVoorvoegsel(naam.geslachtsnaamVoorvoegsel());
            result.setAdellijkeTitelPredicaat(
                naam.adellijkeTitelPredicaat().map(AdellijkeTitelsPredicaten::from)
            );
            return result;
        }
    }

    private static class AdellijkeTitelsPredicaten {
        private static AdellijkeTitelPredicaatType from(AdellijkeTitelPredicaat adellijkeTitelPredicaat) {
            return new AdellijkeTitelPredicaatType()
                .code(adellijkeTitelPredicaat.code())
                .omschrijving(adellijkeTitelPredicaat.omschrijving())
                .soort(AdellijkeTitelPredicaatSoort.valueOf(adellijkeTitelPredicaat.soort()));
        }
    }

    private static class Geslachtsaanduidingen {
        private static Geslachtsaanduiding from(String geslachtsaanduiding) {
            return new Geslachtsaanduiding()
                .code(geslachtsaanduiding);
        }
    }
}
