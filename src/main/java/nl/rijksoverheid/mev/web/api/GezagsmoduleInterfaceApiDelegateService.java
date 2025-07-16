package nl.rijksoverheid.mev.web.api;

import nl.rijksoverheid.mev.exception.GezagException;
import nl.rijksoverheid.mev.gezagsmodule.domain.PreconditieChecker;
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
    private final PreconditieChecker preconditieChecker;

    public GezagsmoduleInterfaceApiDelegateService(
        BevoegdheidTotGezagService bevoegdheidTotGezagService,
        PreconditieChecker preconditieChecker
    ) {
        this.bevoegdheidTotGezagService = bevoegdheidTotGezagService;
        this.preconditieChecker = preconditieChecker;
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
        var personenV1 = BackwardsCompatibility.downgrade(personenV2, preconditieChecker);

        var gezagResponse = new GezagResponse();
        gezagResponse.setPersonen(personenV1);
        return ResponseEntity.ok(gezagResponse);
    }

    @ExceptionHandler
    public ResponseEntity<String> handle(final GezagException e) {
        return ResponseEntity
                .status(e.getStatusCode())
                .body(e.getMessage());
    }
}
