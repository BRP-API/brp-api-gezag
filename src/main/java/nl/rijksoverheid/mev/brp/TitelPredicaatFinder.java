package nl.rijksoverheid.mev.brp;

import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3TitelPredicaatRecord;

import java.util.Optional;

public interface TitelPredicaatFinder {

    Optional<Lo3TitelPredicaatRecord> findBy(String titelPredicaatCode);

}
