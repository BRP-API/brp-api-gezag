package nl.rijksoverheid.mev.web.api;

import nl.rijksoverheid.mev.web.api.v1.GezagOuder;
import nl.rijksoverheid.mev.web.api.v2.*;

class Personen {

    private Personen() {
    }

    public static Persoon from(nl.rijksoverheid.mev.web.api.v1.Persoon persoon) {
        var gezagsrelaties = persoon.getGezag().stream()
            .map(AbstractGezagsrelaties::from)
            .toList();

        var result = new Persoon();
        result.setBurgerservicenummer(persoon.getBurgerservicenummer());
        result.setGezag(gezagsrelaties);

        return result;
    }

    private static class AbstractGezagsrelaties {

        private AbstractGezagsrelaties() {
        }

        public static AbstractGezagsrelatie from(nl.rijksoverheid.mev.web.api.v1.AbstractGezagsrelatie gezagsrelatie) {
            var result = switch (gezagsrelatie) {
                case nl.rijksoverheid.mev.web.api.v1.TweehoofdigOuderlijkGezag v1 -> {
                    var minderjarige = v1.getMinderjarige()
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::getBurgerservicenummer)
                        .map(Minderjarige::new);
                    var ouders = v1.getOuders().stream()
                        .map(GezagOuder::getBurgerservicenummer)
                        .map(Ouder::new)
                        .toList();

                    var v2 = new nl.rijksoverheid.mev.web.api.v2.TweehoofdigOuderlijkGezag();
                    v2.setMinderjarige(minderjarige);
                    v2.setOuders(ouders);
                    yield v2;
                }
                case nl.rijksoverheid.mev.web.api.v1.EenhoofdigOuderlijkGezag v1 -> {
                    var minderjarige = v1.getMinderjarige()
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::getBurgerservicenummer)
                        .map(Minderjarige::new);
                    var ouder = v1.getOuder()
                        .map(GezagOuder::getBurgerservicenummer)
                        .map(Ouder::new); // TODO fix typing in code generation

                    var v2 = new nl.rijksoverheid.mev.web.api.v2.EenhoofdigOuderlijkGezag();
                    v2.setMinderjarige(minderjarige);
                    v2.setOuder(ouder);
                    yield v2;
                }
                case nl.rijksoverheid.mev.web.api.v1.GezamenlijkGezag v1 -> {
                    var minderjarige = v1.getMinderjarige()
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::getBurgerservicenummer)
                        .map(Minderjarige::new);
                    var ouder = v1.getOuder()
                        .map(GezagOuder::getBurgerservicenummer)
                        .map(Ouder::new);

                    var v2 = new nl.rijksoverheid.mev.web.api.v2.GezamenlijkGezag();
                    v2.setMinderjarige(minderjarige);
                    v2.setOuder(ouder);
                    yield v2;
                }
                case nl.rijksoverheid.mev.web.api.v1.Voogdij v1 -> {
                    var minderjarige = v1.getMinderjarige()
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::getBurgerservicenummer)
                        .map(Minderjarige::new);
                    var bekendeDerden = v1.getDerden().stream()
                        .map(nl.rijksoverheid.mev.web.api.v1.BekendeDerde::getBurgerservicenummer)
                        .map(burgerservicenummer -> {
                            var bekendeDerdeV2 = new BekendeDerde().type("bekendeDerde");
                            bekendeDerdeV2.setBurgerservicenummer(burgerservicenummer);
                            return  bekendeDerdeV2;
                        })
                        .toList();

                    var v2 = new nl.rijksoverheid.mev.web.api.v2.Voogdij();
                    v2.setMinderjarige(minderjarige);
                    v2.setDerden(bekendeDerden);
                    yield v2;
                }
                case nl.rijksoverheid.mev.web.api.v1.GezagNietTeBepalen v1 -> {
                    var minderjarige = v1.getMinderjarige()
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::getBurgerservicenummer)
                        .map(Minderjarige::new);

                    var v2 = new nl.rijksoverheid.mev.web.api.v2.GezagNietTeBepalen();
                    v2.setMinderjarige(minderjarige);
                    v2.setToelichting(v1.getToelichting());
                    yield v2;
                }
                case nl.rijksoverheid.mev.web.api.v1.TijdelijkGeenGezag v1 -> {
                    var minderjarige = v1.getMinderjarige()
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::getBurgerservicenummer)
                        .map(Minderjarige::new);

                    var v2 = new nl.rijksoverheid.mev.web.api.v2.TijdelijkGeenGezag();
                    v2.setMinderjarige(minderjarige);
                    v2.setToelichting(v1.getToelichting());
                    yield v2;
                }
                default -> throw new IllegalArgumentException("Unexpected gezagsrelatie type: " + gezagsrelatie.getClass().getName());
            };

            result.setType(gezagsrelatie.getType());
            result.setInOnderzoek(gezagsrelatie.getInOnderzoek());

            return result;
        }
    }
}
