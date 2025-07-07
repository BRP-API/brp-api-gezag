package nl.rijksoverheid.mev.web.api;

import nl.rijksoverheid.mev.exception.GezagException;
import nl.rijksoverheid.mev.gmapi.BevoegdheidTotGezagService;
import nl.rijksoverheid.mev.web.api.v1.*;
import org.slf4j.MDC;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.NativeWebRequest;

import java.util.Optional;

/**
 * Service tussen gm api controller en gezag service
 */
@Service
public class GezagsmoduleInterfaceApiDelegateService implements GezagsmoduleInterfaceApiDelegate {

    private final BevoegdheidTotGezagService bevoegdheidTotGezagService;

    public GezagsmoduleInterfaceApiDelegateService(BevoegdheidTotGezagService bevoegdheidTotGezagService) {
        this.bevoegdheidTotGezagService = bevoegdheidTotGezagService;
    }

    @Override
    public Optional<NativeWebRequest> getRequest() {
        return GezagsmoduleInterfaceApiDelegate.super.getRequest();
    }

    /**
     * Opvragen bevoegdheid to gezag (meerder / minderjarig)
     *
     * @param gezagRequestV1 de aanvraag
     * @throws nl.rijksoverheid.mev.exception.GezagException wanneer een
     * exceptie optreed bij BRP communcatie of bij het bepalen van gezag in de
     * gezagmodule
     * @return gezagsrelaties of leeg
     */
    @Override
    public ResponseEntity<GezagResponse> opvragenBevoegdheidTotGezag(final GezagRequest gezagRequestV1) {
        MDC.put("metadata.apiVersion", "1");

        var gezagRequestV2 = BackwardsCompatibility.upgrade(gezagRequestV1);
        var personenV2 = bevoegdheidTotGezagService.bepaalBevoegdheidTotGezag(gezagRequestV2);
        var personenV1 = personenV2.stream()
            .map(BackwardsCompatibility::downgrade)
            .map(this::excludeIndirectGezagsrelaties)
            .toList();

        var gezagResponse = new GezagResponse();
        gezagResponse.setPersonen(personenV1);
        return ResponseEntity.ok(gezagResponse);
    }

    /**
     * Exclude irrelevant <i>gezagsrelaties</i>.
     * <p>
     * <i>Gezagsrelaties</i> are irrelevant when <code>minderjarige.burgerservicenummer</code> is not equal to
     * <code>persoon.burgservicenummer</code> and its type is the following:
     * <ul>
     *   <li>GezagNietTeBepalen</li>
     *   <li>TijdelijkGeenGezag</li>
     * </ul>
     *
     * @param persoon <i>persoon</i> whose gezagsrelaties to filter
     * @return <i>persoon</i> without irrelevant <i>gezagsrelaties</i>
     */
    private Persoon excludeIndirectGezagsrelaties(Persoon persoon) {
        var gezagsrelaties = persoon.getGezag().stream()
            .filter(gezagsrelatie ->
                switch (gezagsrelatie) {
                    case GezagNietTeBepalen it -> it.getMinderjarige().map(Minderjarige::getBurgerservicenummer).equals(persoon.getBurgerservicenummer());
                    case TijdelijkGeenGezag it -> it.getMinderjarige().map(Minderjarige::getBurgerservicenummer).equals(persoon.getBurgerservicenummer());
                    default -> true;

            })
            .toList();
        persoon.setGezag(gezagsrelaties);
        return persoon;
    }

    @ExceptionHandler
    public ResponseEntity<String> handle(final GezagException e) {
        return ResponseEntity
                .status(e.getStatusCode())
                .body(e.getMessage());
    }
}
