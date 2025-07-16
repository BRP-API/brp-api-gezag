package nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag;

import jakarta.annotation.Nullable;
import nl.rijksoverheid.mev.exception.AfleidingsregelException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Objects;

/**
 * v1_3 "Ja" als de persoon (die in NL geboren is) ooit naar buitenland geëmigreerd is geweest,
 * anders "Nee".
 */
@Component
public class IsNaarBuitenlandGeemigreerdGeweest implements GezagVraag {
    private static final Logger logger = LoggerFactory.getLogger(IsNaarBuitenlandGeemigreerdGeweest.class);
    private static final String QUESTION_ID = "v1.3";
    private static final String V1_3_JA = "Ja";
    private static final String V1_3_NEE = "Nee";

    private final ZijnJuridischeOudersNuMetElkaarGehuwdOfPartners zijnJuridischeOudersNuMetElkaarGehuwdOfPartners;

    public IsNaarBuitenlandGeemigreerdGeweest(ZijnJuridischeOudersNuMetElkaarGehuwdOfPartners zijnJuridischeOudersNuMetElkaarGehuwdOfPartners) {
        this.zijnJuridischeOudersNuMetElkaarGehuwdOfPartners = zijnJuridischeOudersNuMetElkaarGehuwdOfPartners;
    }

    @Override
    public String getQuestionId() {
        return QUESTION_ID;
    }

    @Override
    public GezagVraagResult perform(final GezagsBepaling gezagsBepaling) {
        var answer = doPerform(gezagsBepaling);

        logger.debug("""
            1.3 Is minderjarige naar het buitenland geëmigreerd geweest?
            {}""", answer);
        gezagsBepaling.getArAntwoordenModel().setV0103(answer);
        return new GezagVraagResult(QUESTION_ID, answer);
    }

    @Nullable
    private String doPerform(GezagsBepaling gezagsBepaling) {
        logger.debug("Interne aanroep naar vraag v2a.1 (buiten het stroomschema om) vanwege #393");
        try {
            var zijnJuridischeOudersGehuwdAsString = zijnJuridischeOudersNuMetElkaarGehuwdOfPartners.doPerform(gezagsBepaling);
            var zijnJuridischeOudersGehuwd = Objects.equals(zijnJuridischeOudersGehuwdAsString, ZijnJuridischeOudersNuMetElkaarGehuwdOfPartners.V2A_1_JA_GEHUWD_OF_PARTNERS);
            if (zijnJuridischeOudersGehuwd) {
                return V1_3_NEE; // answer V1_3_NEE to skip this question, but actual answer should be "V1_3_JA, but skip this question"
            }
        } catch (AfleidingsregelException e) {
            // ignore exception; zijnJuridischeOudersGehuwd == false
        }

        final var plPersoon = gezagsBepaling.getPlPersoon();
        final var geboorteland = plPersoon.getPersoon().getGeboorteland();
        final var verblijfplaats = plPersoon.getVerblijfplaats();

        String answer;
        if (geboorteland == null || geboorteland.isEmpty()) {
            gezagsBepaling.addMissendeGegegevens("Geboorteland van bevraagde persoon");
            answer = null;
        } else if (verblijfplaats == null) {
            gezagsBepaling.addMissendeGegegevens("Verblijfplaats van bevraagde persoon");
            answer = null;
        } else if (geboorteland.equals("6030")
            && verblijfplaats.getDatumVestigingInNederland() != null
            && !verblijfplaats.getDatumVestigingInNederland().isEmpty()) {
            answer = V1_3_JA;
        } else {
            answer = V1_3_NEE;
        }
        return answer;
    }
}
