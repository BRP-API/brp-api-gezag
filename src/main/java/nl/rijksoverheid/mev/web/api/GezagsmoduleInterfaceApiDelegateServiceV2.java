package nl.rijksoverheid.mev.web.api;

import nl.rijksoverheid.mev.exception.GezagException;
import nl.rijksoverheid.mev.gmapi.BevoegdheidTotGezagService;
import nl.rijksoverheid.mev.web.api.v2.GezagRequest;
import nl.rijksoverheid.mev.web.api.v2.GezagResponse;
import nl.rijksoverheid.mev.web.api.v2.GezagsmoduleInterfaceApiDelegate;
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
public class GezagsmoduleInterfaceApiDelegateServiceV2 implements GezagsmoduleInterfaceApiDelegate {

    private final BevoegdheidTotGezagService bevoegdheidTotGezagService;

    public GezagsmoduleInterfaceApiDelegateServiceV2(BevoegdheidTotGezagService bevoegdheidTotGezagService) {
        this.bevoegdheidTotGezagService = bevoegdheidTotGezagService;
    }

    @Override
    public Optional<NativeWebRequest> getRequest() {
        return GezagsmoduleInterfaceApiDelegate.super.getRequest();
    }

    /**
     * Opvragen bevoegdheid to gezag (meerder / minderjarig)
     *
     * @param gezagRequest de aanvraag
     * @throws GezagException wanneer een
     * exceptie optreed bij BRP communcatie of bij het bepalen van gezag in de
     * gezagmodule
     * @return gezagsrelaties of leeg
     */
    @Override
    public ResponseEntity<GezagResponse> opvragenBevoegdheidTotGezag(
        final Integer acceptGezagVersion,
        final GezagRequest gezagRequest
    ) {
        MDC.put("metadata.apiVersion", acceptGezagVersion.toString());

        var personen = bevoegdheidTotGezagService.bepaalBevoegdheidTotGezag(gezagRequest);

        var gezagResponse = new GezagResponse()
            .personen(personen);
        return ResponseEntity.ok(gezagResponse);
    }

    @ExceptionHandler
    public ResponseEntity<String> handle(final GezagException e) {
        return ResponseEntity
                .status(e.getStatusCode())
                .body(e.getMessage());
    }
}
