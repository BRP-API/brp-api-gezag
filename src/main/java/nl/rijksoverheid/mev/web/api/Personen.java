package nl.rijksoverheid.mev.web.api;

import nl.rijksoverheid.mev.web.api.v2.*;

class Personen {

    private Personen() {
    }

    public static nl.rijksoverheid.mev.web.api.v1.Persoon from(Persoon persoon) {
        var gezagsrelaties = persoon.getGezag().stream()
            .map(AbstractGezagsrelaties::from)
            .toList();

        var result = new nl.rijksoverheid.mev.web.api.v1.Persoon();
        result.setBurgerservicenummer(persoon.getBurgerservicenummer());
        result.setGezag(gezagsrelaties);

        return result;
    }

    private static class AbstractGezagsrelaties {

        private AbstractGezagsrelaties() {
        }

        public static nl.rijksoverheid.mev.web.api.v1.AbstractGezagsrelatie from(AbstractGezagsrelatie gezagsrelatie) {
            var result = switch (gezagsrelatie) {
                case TweehoofdigOuderlijkGezag v2 -> {
                    var minderjarige = v2.getMinderjarige()
                        .map(Minderjarige::getBurgerservicenummer)
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::new);
                    var ouders = v2.getOuders().stream()
                        .map(GezagOuder::getBurgerservicenummer)
                        .map(it -> it.orElse(""))
                        .map(it -> new nl.rijksoverheid.mev.web.api.v1.GezagOuder().burgerservicenummer(it))
                        .toList();

                    var v1 = new nl.rijksoverheid.mev.web.api.v1.TweehoofdigOuderlijkGezag();
                    v1.setMinderjarige(minderjarige);
                    v1.setOuders(ouders);
                    yield v1;
                }
                case EenhoofdigOuderlijkGezag v2 -> {
                    var minderjarige = v2.getMinderjarige()
                        .map(Minderjarige::getBurgerservicenummer)
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::new);
                    var ouder = v2.getOuder()
                        .map(GezagOuder::getBurgerservicenummer)
                        .map(it -> it.orElse(""))
                        .map(it -> new nl.rijksoverheid.mev.web.api.v1.GezagOuder().burgerservicenummer(it));

                    var v1 = new nl.rijksoverheid.mev.web.api.v1.EenhoofdigOuderlijkGezag();
                    v1.setMinderjarige(minderjarige);
                    v1.setOuder(ouder);
                    yield v1;
                }
                case GezamenlijkGezag v2 -> {
                    var minderjarige = v2.getMinderjarige()
                        .map(Minderjarige::getBurgerservicenummer)
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::new);
                    var ouder = v2.getOuder()
                        .map(GezagOuder::getBurgerservicenummer)
                        .map(it -> it.orElse(""))
                        .map(it -> new nl.rijksoverheid.mev.web.api.v1.GezagOuder().burgerservicenummer(it));

                    var v1 = new nl.rijksoverheid.mev.web.api.v1.GezamenlijkGezag();
                    v1.setMinderjarige(minderjarige);
                    v1.setOuder(ouder);
                    yield v1;
                }
                case Voogdij v2 -> {
                    var minderjarige = v2.getMinderjarige()
                        .map(Minderjarige::getBurgerservicenummer)
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::new);
                    var bekendeDerden = v2.getDerden().stream()
                        .map(BekendeDerde::getBurgerservicenummer)
                        .map(burgerservicenummer -> {
                            var bekendeDerdeV1 = new nl.rijksoverheid.mev.web.api.v1.BekendeDerde().type("bekendeDerde");
                            bekendeDerdeV1.setBurgerservicenummer(burgerservicenummer);
                            return  bekendeDerdeV1;
                        })
                        .toList();

                    var v1 = new nl.rijksoverheid.mev.web.api.v1.Voogdij();
                    v1.setMinderjarige(minderjarige);
                    v1.setDerden(bekendeDerden);
                    yield v1;
                }
                case GezagNietTeBepalen v2 -> {
                    var minderjarige = v2.getMinderjarige()
                        .map(Minderjarige::getBurgerservicenummer)
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::new);

                    var v1 = new nl.rijksoverheid.mev.web.api.v1.GezagNietTeBepalen();
                    v1.setMinderjarige(minderjarige);
                    v1.setToelichting(v2.getToelichting());
                    yield v1;
                }
                case TijdelijkGeenGezag v2 -> {
                    var minderjarige = v2.getMinderjarige()
                        .map(Minderjarige::getBurgerservicenummer)
                        .map(nl.rijksoverheid.mev.web.api.v1.Minderjarige::new);

                    var v1 = new nl.rijksoverheid.mev.web.api.v1.TijdelijkGeenGezag();
                    v1.setMinderjarige(minderjarige);
                    v1.setToelichting(v2.getToelichting());
                    yield v1;
                }
                default -> throw new IllegalArgumentException("Unexpected gezagsrelatie type: " + gezagsrelatie.getClass().getName());
            };

            result.setType(gezagsrelatie.getType());
            result.setInOnderzoek(gezagsrelatie.getInOnderzoek());

            return result;
        }
    }
}
