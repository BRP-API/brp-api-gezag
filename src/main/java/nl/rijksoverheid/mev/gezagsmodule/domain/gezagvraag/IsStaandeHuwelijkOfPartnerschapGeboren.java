package nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag;

import jakarta.annotation.Nullable;
import nl.rijksoverheid.mev.gezagsmodule.domain.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import static nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst.isValideGeslachtsnaam;

/**
 * v2b_1 "Ja" als kind staande huwelijk of partnerschap geboren is, anders "Nee".
 * <p>
 * Nu vastgesteld is dat het kind 1 (of 2) ouder(s) heeft, we controleren of deze ouder(s) een
 * relatie had(den) tijdens de geboorte van het kind. Als dat het geval is (en er geen ontkenning
 * van ouderschap door de ander is en het huwelijk is actueel), dan is het antwoord "Ja".
 */
@Component
public class IsStaandeHuwelijkOfPartnerschapGeboren implements GezagVraag {

    private static final Logger logger = LoggerFactory.getLogger(IsStaandeHuwelijkOfPartnerschapGeboren.class);

    private static final String QUESTION_ID = "v2b.1";
    private static final String V2B_1_JA = "Ja";
    private static final String V2B_1_NEE = "Nee";
    private static final String OUDER_1 = "ouder1";
    private static final String OUDER_2 = "ouder2";

    private final PreconditieChecker preconditieChecker;

    public IsStaandeHuwelijkOfPartnerschapGeboren(PreconditieChecker preconditieChecker) {
        this.preconditieChecker = preconditieChecker;
    }

    @Override
    public String getQuestionId() {
        return QUESTION_ID;
    }

    @Override
    public GezagVraagResult perform(final GezagsBepaling gezagsBepaling) {
        final var plPersoon = gezagsBepaling.getPlPersoon();

        var answer = V2B_1_NEE;
        String geboorteDatumKind = plPersoon.getPersoon().getGeboortedatum();
        Ouder1 lOuder1 = plPersoon.getOuder1();
        Ouder2 lOuder2 = plPersoon.getOuder2();
        if (lOuder1 != null && isValideGeslachtsnaam(lOuder1.getGeslachtsnaam())) {
            final var plOuder1 = gezagsBepaling.getPlOuder1();
            preconditieChecker.preconditieCheckGeregistreerd(OUDER_1, plPersoon, plOuder1);
            if (heeftOuderRelatieBijGeboorteKind(plOuder1, geboorteDatumKind, gezagsBepaling)
                && !plPersoon.ontkenningOuderschapDoorOuder2()) {
                answer = V2B_1_JA;
                gezagsBepaling.setV02B01Ouder('1');
            }
        }
        if (lOuder2 != null && isValideGeslachtsnaam(lOuder2.getGeslachtsnaam())) {
            final var plOuder2 = gezagsBepaling.getPlOuder2();
            preconditieChecker.preconditieCheckGeregistreerd(OUDER_2, plPersoon, plOuder2);
            if (heeftOuderRelatieBijGeboorteKind(plOuder2, geboorteDatumKind, gezagsBepaling)
                && !plPersoon.ontkenningOuderschapDoorOuder1()) {
                answer = V2B_1_JA;
                gezagsBepaling.setV02B01Ouder('2');
            }
        }

        logger.debug("""
            2b.1 Is het kind staande huwelijk of partnerschap geboren?
            {}""", answer);
        gezagsBepaling.getArAntwoordenModel().setV02B01(answer);
        return new GezagVraagResult(QUESTION_ID, answer);
    }

    private boolean heeftOuderRelatieBijGeboorteKind(
        @Nullable Persoonslijst plOuder,
        String geboortedatum,
        GezagsBepaling gezagsBepaling
    ) {
        if (plOuder == null) return false;
        var huwelijkOfPartnerschappen = plOuder.getHuwelijkOfPartnerschappen();
        if (huwelijkOfPartnerschappen.isEmpty()) return false;

        var hopRelaties = plOuder.getHopRelaties();
        var hopRelatie = hopRelaties.findRelatieByDate(Integer.parseInt(geboortedatum));
        var isKindGeborenTijdensRelatie = hopRelatie != null;
        if (isKindGeborenTijdensRelatie) {
            var relatieStartDatumAsString = String.valueOf(hopRelatie.getStartDatum());
            huwelijkOfPartnerschappen.stream()
                .filter(it -> relatieStartDatumAsString.equals(it.getDatumVoltrokken()))
                .findAny()
                .ifPresent(gezagsBepaling::setRelatieNietOuder);
        }
        return isKindGeborenTijdensRelatie;
    }
}
