package nl.rijksoverheid.mev.brp.brpv;

import nl.rijksoverheid.mev.brp.PersoonslijstFinder;
import nl.rijksoverheid.mev.brp.TitelPredicaatFinder;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.Lo3PlGezagsverhouding;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.Lo3PlVerblijfplaats;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3PlGezagsverhoudingRecord;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3PlPersoonRecord;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3PlRecord;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3PlVerblijfplaatsRecord;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import nl.rijksoverheid.mev.gezagsmodule.model.Burgerservicenummer;
import nl.rijksoverheid.mev.logging.LoggingContext;
import org.jooq.DSLContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import static nl.rijksoverheid.mev.brp.brpv.generated.tables.Lo3Pl.LO3_PL;
import static nl.rijksoverheid.mev.brp.brpv.generated.tables.Lo3PlPersoon.LO3_PL_PERSOON;

@Repository
@Transactional(readOnly = true)
public class JooqPersoonslijstFinder implements PersoonslijstFinder {

    private static final String PERSOON = "P";
    private static final String OUDER_1 = "1";
    private static final String OUDER_2 = "2";
    private static final String KIND = "K";
    private static final String RELATIE = "R";
    private static final String OPSCHORT_REDEN_FOUT = "F";
    private static final String OPSCHORT_REDEN_WISSEN = "W";

    private final DSLContext create;
    private final LoggingContext loggingContext;
    private final TitelPredicaatFinder titelPredicaatFinder;

    public JooqPersoonslijstFinder(
        DSLContext create,
        LoggingContext loggingContext,
        TitelPredicaatFinder titelPredicaatFinder
    ) {
        this.create = create;
        this.loggingContext = loggingContext;
        this.titelPredicaatFinder = titelPredicaatFinder;
    }

    @Override
    public Optional<Persoonslijst> opvragenPersoonslijst(final String burgerservicenummerString) {
        var burgerservicenummer = Burgerservicenummer.from(burgerservicenummerString);

        return findPersoonslijst(burgerservicenummer);
    }

    private Optional<Persoonslijst> findPersoonslijst(Burgerservicenummer burgerservicenummer) {
        var optionalLo3PlRecord = findLo3PlRecord(burgerservicenummer);
        if (optionalLo3PlRecord.isEmpty()) return Optional.empty();
        var lo3PlRecord = optionalLo3PlRecord.get();

        var result = new Persoonslijst();
        result.addInschrijving(lo3PlRecord);

        var plId = lo3PlRecord.getPlId();
        var lo3PlPersoonRecordsByPersoonType = findPlPersoonByPlId(plId);

        var plPersoonPersoon = lo3PlPersoonRecordsByPersoonType.getOrDefault(PERSOON, Collections.emptyList());
        if (!plPersoonPersoon.isEmpty()) {
            var plPersoonPersoonRecent = plPersoonPersoon.getFirst();
            var titelPredicaatCode = plPersoonPersoonRecent.getTitelPredicaat();
            var titelPredicaat = Optional.ofNullable(titelPredicaatCode)
                .flatMap(titelPredicaatFinder::findBy)
                .orElse(null);

            result.addPersoon(plPersoonPersoonRecent, titelPredicaat);
            plPersoonPersoon.stream()
                .skip(1)
                .forEach(result::addPersoonGeschiedenis);
        }

        var plPersoonOuder1 = lo3PlPersoonRecordsByPersoonType.getOrDefault(OUDER_1, Collections.emptyList());
        if (!plPersoonOuder1.isEmpty()) {
            var plPersoonOuder1Recent = plPersoonOuder1.getFirst();
            var titelPredicaatCode = plPersoonOuder1Recent.getTitelPredicaat();
            var titelPredicaat = Optional.ofNullable(titelPredicaatCode)
                .flatMap(titelPredicaatFinder::findBy)
                .orElse(null);

            result.addOuder1(plPersoonOuder1Recent, titelPredicaat);
            plPersoonOuder1.stream()
                .skip(1)
                .forEach(result::addOuder1Geschiedenis);
        }

        var plPersoonOuder2 = lo3PlPersoonRecordsByPersoonType.getOrDefault(OUDER_2, Collections.emptyList());
        if (!plPersoonOuder2.isEmpty()) {
            var plPersoonOuder2Recent = plPersoonOuder2.getFirst();
            var titelPredicaatCode = plPersoonOuder2Recent.getTitelPredicaat();
            var titelPredicaat = Optional.ofNullable(titelPredicaatCode)
                .flatMap(titelPredicaatFinder::findBy)
                .orElse(null);

            result.addOuder2(plPersoonOuder2Recent, titelPredicaat);
            plPersoonOuder2.stream()
                .skip(1)
                .forEach(result::addOuder2Geschiedenis);
        }

        var plPersoonKinderenMetGeschiedenis = lo3PlPersoonRecordsByPersoonType.getOrDefault(KIND, Collections.emptyList());
        var plPersoonKinderenZonderGeschiedenis = plPersoonKinderenMetGeschiedenis.stream()
            .filter(it -> it.getVolgNr() == (short) 0);
        plPersoonKinderenZonderGeschiedenis.forEach(result::addKind);

        var plPersoonRelaties = lo3PlPersoonRecordsByPersoonType.getOrDefault(RELATIE, Collections.emptyList());
        plPersoonRelaties.forEach(relatie -> {
            var titelPredicaatCode = relatie.getTitelPredicaat();
            var titelPredicaat = Optional.ofNullable(titelPredicaatCode)
                .flatMap(titelPredicaatFinder::findBy)
                .orElse(null);

            result.addRelatie(relatie, titelPredicaat);
        });

        var optionalPlVerblijfplaats = findPlVerblijfplaatsByPlId(plId);
        optionalPlVerblijfplaats.ifPresent(result::addVerblijfplaats);

        var optionalPlGezagsverhouding = findPlGezagsverhoudingByPlId(plId);
        optionalPlGezagsverhouding.ifPresent(result::addGezagsverhouding);

        loggingContext.addPlId(plId, burgerservicenummer);
        return Optional.of(result);
    }

    private Optional<Lo3PlRecord> findLo3PlRecord(Burgerservicenummer burgerservicenummer) {
        return create.select()
            .from(LO3_PL)
            .join(LO3_PL_PERSOON).on(LO3_PL.PL_ID.eq(LO3_PL_PERSOON.PL_ID))
            .where(LO3_PL_PERSOON.BURGER_SERVICE_NR.equal(burgerservicenummer.value())
                .and(LO3_PL_PERSOON.PERSOON_TYPE.equal(PERSOON))
                .and(LO3_PL_PERSOON.STAPEL_NR.equal((short) 0))
                .and(LO3_PL_PERSOON.VOLG_NR.equal((short) 0))
                .and(LO3_PL.BIJHOUDING_OPSCHORT_REDEN.isNull()
                    .or(LO3_PL.BIJHOUDING_OPSCHORT_REDEN.notIn(OPSCHORT_REDEN_FOUT, OPSCHORT_REDEN_WISSEN))
                )
            )
            .fetchOptionalInto(Lo3PlRecord.class);
    }

    private Map<String, List<Lo3PlPersoonRecord>> findPlPersoonByPlId(long plId) {
        return create.selectFrom(LO3_PL_PERSOON)
            .where(LO3_PL_PERSOON.PL_ID.equal(plId)
                .and(LO3_PL_PERSOON.ONJUIST_IND.isNull())
            )
            .orderBy(LO3_PL_PERSOON.PERSOON_TYPE.asc(), LO3_PL_PERSOON.STAPEL_NR.desc(), LO3_PL_PERSOON.VOLG_NR.asc())
            .fetch()
            .stream()
            .collect(Collectors.groupingBy(Lo3PlPersoonRecord::getPersoonType));
    }

    private Optional<Lo3PlVerblijfplaatsRecord> findPlVerblijfplaatsByPlId(long plId) {
        return create.selectFrom(Lo3PlVerblijfplaats.LO3_PL_VERBLIJFPLAATS)
            .where(Lo3PlVerblijfplaats.LO3_PL_VERBLIJFPLAATS.PL_ID.equal(plId)
                .and(Lo3PlVerblijfplaats.LO3_PL_VERBLIJFPLAATS.VOLG_NR.equal((short) 0))
                .and(Lo3PlVerblijfplaats.LO3_PL_VERBLIJFPLAATS.ONJUIST_IND.isNull())
            )
            .fetchOptionalInto(Lo3PlVerblijfplaatsRecord.class);
    }

    private Optional<Lo3PlGezagsverhoudingRecord> findPlGezagsverhoudingByPlId(long plId) {
        return create.selectFrom(Lo3PlGezagsverhouding.LO3_PL_GEZAGSVERHOUDING)
            .where(Lo3PlGezagsverhouding.LO3_PL_GEZAGSVERHOUDING.PL_ID.equal(plId)
                .and(Lo3PlGezagsverhouding.LO3_PL_GEZAGSVERHOUDING.VOLG_NR.equal((short) 0))
                .and(Lo3PlGezagsverhouding.LO3_PL_GEZAGSVERHOUDING.ONJUIST_IND.isNull())
            )
            .fetchOptionalInto(Lo3PlGezagsverhoudingRecord.class);
    }
}
