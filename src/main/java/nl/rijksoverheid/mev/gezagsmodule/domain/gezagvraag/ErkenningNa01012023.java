package nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag;

import jakarta.annotation.Nullable;
import nl.rijksoverheid.mev.exception.AfleidingsregelException;
import nl.rijksoverheid.mev.gezagsmodule.domain.Ouder1;
import nl.rijksoverheid.mev.gezagsmodule.domain.Ouder2;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import static java.lang.Integer.parseInt;

/**
 * v2a_3 VOOR of NA
 */
@Component
public class ErkenningNa01012023 implements GezagVraag {

    private static final Logger logger = LoggerFactory.getLogger(ErkenningNa01012023.class);
    private static final String QUESTION_ID = "v2a.3";
    private static final String V2A_3_VOOR = "Voor";
    private static final String V2A_3_VOOR_OUDER1 = "Voor_ouder1";
    private static final String V2A_3_VOOR_OUDER2 = "Voor_ouder2";
    private static final String V2A_3_NA = "Na";
    private static final String GESLACHTSAANDUIDING_VROUW = "V";
    private static final int DATE_JAN_1_2023 = 20230101;

    @Override
    public String getQuestionId() {
        return QUESTION_ID;
    }

    @Override
    public GezagVraagResult perform(final GezagsBepaling gezagsBepaling) {
        var answer = doPerform(gezagsBepaling);

        logger.debug("""
            2a.3 Erkenning voor of na 1-1-2023?
            {}""", answer);
        gezagsBepaling.getArAntwoordenModel().setV02A03(answer);
        return new GezagVraagResult(QUESTION_ID, answer);
    }

    @Nullable
    private String doPerform(final GezagsBepaling gezagsBepaling) {
        final var minderjarige = gezagsBepaling.getPlPersoon();
        final var ouder1 = minderjarige.getOuder1();
        final var ouder2 = minderjarige.getOuder2();
        final var persoonErkend = minderjarige.ongeborenVruchtErkendOfGerechtelijkeVaststelling();
        final var persoonOngeborenVruchtErkend = minderjarige.ongeborenVruchtErkend();
        final var isPersoonErkend = persoonErkend || persoonOngeborenVruchtErkend;

        if (!requirementsForRuleAreMet(ouder1, ouder2, isPersoonErkend, gezagsBepaling)) {
            return null;
        }

        String answer = null;
        if (isPersoonErkend) {
            answer = isPersoonErkendOpOfNa01012023(ouder1, ouder2) ? V2A_3_NA : null;
        }
        if (answer == null) {
            answer = doorWelkeOuderErkend(minderjarige);
        }
        if (answer != null) {
            return answer;
        }

        boolean persoonGeborenVoor01012023 = isPersoonGeborenVoor01012023(minderjarige);
        if (persoonGeborenVoor01012023) {
            answer = bepaalGezagOpBasisVanGeboortemoeder(ouder1, ouder2);
        } else {
            answer = V2A_3_NA;
        }

        return answer;
    }

    private boolean requirementsForRuleAreMet(
        final Ouder1 ouder1,
        final Ouder2 ouder2,
        final boolean isPersoonErkend,
        final GezagsBepaling gezagsBepaling
    ) {
        if (ouder1 == null || ouder2 == null) {
            throw new AfleidingsregelException(
                "Preconditie: vraag 2a.3 - Geen twee ouders bij erkenning",
                ouder1 == null && ouder2 == null
                    ? "beide ouders van bevraagde persoon"
                    : "een ouder van de bevraagde persoon"
            );
        }

        if (isPersoonErkend && ouder1.getDatumIngangFamiliebetrekking() == null) {
            gezagsBepaling.addMissendeGegegevens("datum ingang familiebetrekking van ouder 1");
            return false;
        } else if (isPersoonErkend && ouder2.getDatumIngangFamiliebetrekking() == null) {
            gezagsBepaling.addMissendeGegegevens("datum ingang familiebetrekking van ouder 2");
            return false;
        }
        return true;
    }

    private boolean isPersoonErkendOpOfNa01012023(final Ouder1 ouder1, final Ouder2 ouder2) {
        boolean ouder1ErkendOpOfNa01012023 = Integer.parseInt(ouder1.getDatumIngangFamiliebetrekking()) >= DATE_JAN_1_2023;
        boolean ouder2ErkendOpOfNa01012023 = Integer.parseInt(ouder2.getDatumIngangFamiliebetrekking()) >= DATE_JAN_1_2023;

        return ouder1ErkendOpOfNa01012023 || ouder2ErkendOpOfNa01012023;
    }

    @Nullable
    private String doorWelkeOuderErkend(final Persoonslijst plPersoon) {
        final var ouder1Erkend = plPersoon.ongeborenVruchtDoorOuder1ErkendOfGerechtelijkeVaststelling();
        final var ouder2Erkend = plPersoon.ongeborenVruchtDoorOuder2ErkendOfGerechtelijkeVaststelling();
        if (ouder1Erkend && ouder2Erkend) return null;

        if (ouder1Erkend) {
            return V2A_3_VOOR_OUDER2;
        }
        if (ouder2Erkend) {
            return V2A_3_VOOR_OUDER1;
        }
        return null;
    }

    private boolean isPersoonGeborenVoor01012023(final Persoonslijst plPersoon) {
        return parseInt(plPersoon.getPersoon().getGeboortedatum()) < DATE_JAN_1_2023;
    }

    private String bepaalGezagOpBasisVanGeboortemoeder(
        final Ouder1 ouder1,
        final Ouder2 ouder2
    ) {
        boolean isOuder1Vrouw = ouder1.getGeslachtsAanduiding().map(this::isVrouw).orElse(false);
        boolean isOuder2Vrouw = ouder2.getGeslachtsAanduiding().map(this::isVrouw).orElse(false);

        if (eenVanDeOudersVrouw(isOuder1Vrouw, isOuder2Vrouw)) {
            return isOuder1Vrouw ? V2A_3_VOOR_OUDER1 : V2A_3_VOOR_OUDER2;
        } else {
            return V2A_3_VOOR;
        }
    }

    private boolean isVrouw(final String geslachtsAand) {
        return GESLACHTSAANDUIDING_VROUW.equals(geslachtsAand);
    }

    private boolean eenVanDeOudersVrouw(final boolean isOuder1Vrouw, final boolean isOuder2Vrouw) {
        return isOuder1Vrouw ^ isOuder2Vrouw;
    }
}
