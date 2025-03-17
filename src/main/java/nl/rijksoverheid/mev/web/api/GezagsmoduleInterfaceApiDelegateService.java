package nl.rijksoverheid.mev.web.api;

import nl.rijksoverheid.mev.exception.GezagException;
import nl.rijksoverheid.mev.gmapi.BevoegdheidTotGezagService;
import nl.rijksoverheid.mev.web.api.v1.GezagRequest;
import nl.rijksoverheid.mev.web.api.v1.GezagResponse;
import nl.rijksoverheid.mev.web.api.v1.GezagsmoduleInterfaceApiDelegate;
import nl.rijksoverheid.mev.web.api.v1.Persoon;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.NativeWebRequest;

import java.util.List;
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
     * @param gezagRequest de aanvraag
     * @throws nl.rijksoverheid.mev.exception.GezagException wanneer een
     * exceptie optreed bij BRP communcatie of bij het bepalen van gezag in de
     * gezagmodule
     * @return gezagsrelaties of leeg
     */
    @Override
    public ResponseEntity<GezagResponse> opvragenBevoegdheidTotGezag(final GezagRequest gezagRequest) {
        List<Persoon> gezagsrelaties = bevoegdheidTotGezagService.bepaalBevoegdheidTotGezag(gezagRequest);

        GezagResponse response = new GezagResponse();
        response.setPersonen(gezagsrelaties);
        return ResponseEntity.ok(response);
    }

    @ExceptionHandler
    public ResponseEntity<String> handle(final GezagException e) {
        return ResponseEntity
                .status(e.getStatusCode())
                .body(e.getMessage());
    }
}
