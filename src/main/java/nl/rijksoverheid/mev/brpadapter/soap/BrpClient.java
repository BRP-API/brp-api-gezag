package nl.rijksoverheid.mev.brpadapter.soap;

import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;

import java.util.Optional;

/**
 * Client voor communicatie met de BRP
 */
public interface BrpClient {

    /**
     * Opvragen persoonslijst bij de BRP
     *
     * @param bsn de bsn van de persoon waarvoor de persoonslijst wordt
     * opgevraagd
     * @return de persoonslijst
     */
    Optional<Persoonslijst> opvragenPersoonslijst(final String bsn);
}
