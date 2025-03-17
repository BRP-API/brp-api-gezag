package nl.rijksoverheid.mev.brp.brpv;

import nl.rijksoverheid.mev.brp.TitelPredicaatFinder;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.Lo3TitelPredicaat;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3TitelPredicaatRecord;
import org.jooq.DSLContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Repository
@Transactional(readOnly = true)
public class JooqTitelPredicaatFinder implements TitelPredicaatFinder {

    private final DSLContext create;

    public JooqTitelPredicaatFinder(DSLContext create) {
        this.create = create;
    }

    @Override
    public Optional<Lo3TitelPredicaatRecord> findBy(String titelPredicaatCode) {
        return create.selectFrom(Lo3TitelPredicaat.LO3_TITEL_PREDICAAT)
            .where(Lo3TitelPredicaat.LO3_TITEL_PREDICAAT.TITEL_PREDICAAT.equal(titelPredicaatCode))
            .fetchOptionalInto(Lo3TitelPredicaatRecord.class);
    }
}
