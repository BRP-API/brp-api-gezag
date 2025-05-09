package nl.rijksoverheid.mev.gezagsmodule.service;

import lombok.RequiredArgsConstructor;
import nl.rijksoverheid.mev.brp.PersoonslijstFinder;
import nl.rijksoverheid.mev.exception.GezagException;
import nl.rijksoverheid.mev.gezagsmodule.domain.HuwelijkOfPartnerschap;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * Service voor BRP functionaliteit
 */

@Service
@RequiredArgsConstructor
public class BrpService {

    private final PersoonslijstFinder finder;

    /**
     * Ophalen persoonslijst
     *
     * @param bsn         de bsn om de persoonslijst voor op te halen
     * @return de persoonslijst
     * @throws GezagException wanneer BRP communicatie misgaat
     */
    public Optional<Persoonslijst> getPersoonslijst(final String bsn) {
        return finder.opvragenPersoonslijst(bsn);
    }

    /**
     * Ophalen bsns van minderjarige kinderen
     *
     * @param bsn         de bsn om de persoonslijst voor op te halen
     * @return de BSNs van de kinderen
     * @throws GezagException wanneer BRP communicatie misgaat
     */
    public Set<String> getBsnsMinderjarigeKinderenOuderEnPartners(final String bsn) {
        var optionalPersoonslijstOuder = finder.opvragenPersoonslijst(bsn);
        List<Persoonslijst> partners = optionalPersoonslijstOuder.stream()
            .map(Persoonslijst::getHuwelijkOfPartnerschappen)
            .flatMap(List::stream)
            .map(HuwelijkOfPartnerschap::getBsnPartner)
            .filter(Objects::nonNull)
            .map(finder::opvragenPersoonslijst)
            .flatMap(Optional::stream)
            .toList();

        Stream<String> burgerservicenummersVanKinderenVanOuder = optionalPersoonslijstOuder.stream()
            .flatMap(Persoonslijst::getBurgerservicenummersVanMinderjarigeKinderen);
        Stream<String> burgerservicenummersVanKinderenVanPartners = partners.stream()
            .flatMap(Persoonslijst::getBurgerservicenummersVanMinderjarigeKinderen);

        return Stream.concat(
                burgerservicenummersVanKinderenVanOuder,
                burgerservicenummersVanKinderenVanPartners
            )
            .collect(Collectors.toSet());
    }
}
