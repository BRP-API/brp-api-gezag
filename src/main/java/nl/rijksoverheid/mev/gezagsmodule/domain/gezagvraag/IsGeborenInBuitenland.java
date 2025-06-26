package nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag;

import jakarta.annotation.Nullable;
import nl.rijksoverheid.mev.exception.AfleidingsregelException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Objects;

/**
 * v1_3a "Ja" als de persoon in het buitenland is geboren, anders "Nee".
 */
@Component
public class IsGeborenInBuitenland implements GezagVraag {

    private static final Logger logger = LoggerFactory.getLogger(IsGeborenInBuitenland.class);
    private static final String QUESTION_ID = "v1.3a";
    private static final String GEBOORTELAND_CODE_NEDERLAND = "6030";
    private static final String V1_3A_JA = "Ja";
    private static final String V1_3A_NEE = "Nee";

    @Override
    public String getQuestionId() {
        return QUESTION_ID;
    }
    
    @Override
    public GezagVraagResult perform(final GezagsBepaling gezagsBepaling) {
        var answer = doPerform(gezagsBepaling);

        logger.debug("""
            1.3a Is minderjarige geboren in het buitenland?
            {}""", answer);
        gezagsBepaling.getArAntwoordenModel().setV0103A(answer);
        return new GezagVraagResult(QUESTION_ID, answer);
    }

    @Nullable
    private String doPerform(GezagsBepaling gezagsBepaling) {
        logger.debug("Interne aanroep naar vraag v2a.1 (buiten het stroomschema om) vanwege #393");
        try {
            var zijnJuridischeOudersGehuwdAsString = new ZijnJuridischeOudersNuMetElkaarGehuwdOfPartners().doPerform(gezagsBepaling);
            var zijnJuridischeOudersGehuwd = Objects.equals(zijnJuridischeOudersGehuwdAsString, ZijnJuridischeOudersNuMetElkaarGehuwdOfPartners.V2A_1_JA_GEHUWD_OF_PARTNERS);
            if (zijnJuridischeOudersGehuwd) {
                return V1_3A_NEE; // answer V1_3A_NEE to skip this question, but actual answer should be "V1_3A_JA, but skip this question"
            }
        } catch (AfleidingsregelException e) {
            // ignore exception; zijnJuridischeOudersGehuwd == false
        }

        var plPersoon = gezagsBepaling.getPlPersoon();
        var geboorteland = plPersoon.getPersoon().getGeboorteland();
        if (geboorteland == null || geboorteland.isEmpty()) {
            gezagsBepaling.addMissendeGegegevens("Geboorteland van bevraagde persoon");
            return null;
        }

        return geboorteland.equals(GEBOORTELAND_CODE_NEDERLAND)
            ? V1_3A_NEE
            : V1_3A_JA;
    }
}
