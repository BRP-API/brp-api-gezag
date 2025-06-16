package nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag;

import nl.rijksoverheid.mev.gezagsmodule.domain.Ouder1;
import nl.rijksoverheid.mev.gezagsmodule.domain.Ouder2;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import nl.rijksoverheid.mev.gezagsmodule.domain.PreconditieChecker;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.Map;

/**
 * v4a_3 "Ja" / "Nee" in verschillende varianten,
 */
@Component
public class OuderOverledenOfOnbevoegdTotGezag implements GezagVraag {

    private static final Logger logger = LoggerFactory.getLogger(OuderOverledenOfOnbevoegdTotGezag.class);
    private static final String QUESTION_ID = "v4a.3";
    private static final Map<String, String> ANTWOORDEN = Map.of(
        "??", "Nee",
        "?c", "Ja_ouder_onder_curatele",
        "?m", "Ja_ouder_minderjarig",
        "?o", "Ja_ouder_overleden",
        "cc", "Ja_beiden_onder_curatele",
        "cm", "Ja_ouder_onder_curatele_en_andere_ouder_minderjarig",
        "co", "Ja_ouder_overleden_en_andere_ouder_onder_curatele",
        "mm", "Ja_beiden_minderjarig",
        "mo", "Ja_ouder_overleden_en_andere_ouder_minderjarig",
        "oo", "Ja_beiden_overleden"
    );

    @Override
    public String getQuestionId() {
        return QUESTION_ID;
    }

    @Override
    public GezagVraagResult perform(final GezagsBepaling gezagsBepaling) {
        var isOuder1Irrelevant = isOuder1Irrelevant(gezagsBepaling);
        var optionalPersoonslijstOuder1 = gezagsBepaling.fetchPersoonslijstVanOuder1();
        var isOuder1OverledenOfOnbevoegdToken = isOuder1Irrelevant ? '?' : optionalPersoonslijstOuder1
            .map(Persoonslijst::isOverledenOfOnbevoegdEncoded)
            .orElseGet(() -> gezagsBepaling.getPlPersoon().getOuder1AsOptional().flatMap(Ouder1::isMinderjarigEncoded))
            .orElse('?');

        var isOuder2Irrelevant = isOuder2Irrelevant(gezagsBepaling);
        var optionalPersoonslijstOuder2 = gezagsBepaling.fetchPersoonslijstVanOuder2();
        if (isOuder2Irrelevant) PreconditieChecker.preconditieCheckGeregistreerd("ouder2", optionalPersoonslijstOuder2.orElse(null));
        var isOuder2OverledenOfOnbevoegdToken = isOuder2Irrelevant ? '?' : optionalPersoonslijstOuder2
            .map(Persoonslijst::isOverledenOfOnbevoegdEncoded)
            .orElseGet(() -> gezagsBepaling.getPlPersoon().getOuder2AsOptional().flatMap(Ouder2::isMinderjarigEncoded))
            .orElse('?');

        var key = constructKey(isOuder1OverledenOfOnbevoegdToken, isOuder2OverledenOfOnbevoegdToken);
        var answer = ANTWOORDEN.get(key);

        if (isOuder1Irrelevant) {
            PreconditieChecker.preconditieCheckGeregistreerd("ouder2", optionalPersoonslijstOuder2.orElse(null));
            answer = answer.equals("Nee") ? "Nee_ouder2" : answer;
        } else if (isOuder2Irrelevant) {
            PreconditieChecker.preconditieCheckGeregistreerd("ouder1", optionalPersoonslijstOuder1.orElse(null));
            answer = answer.equals("Nee") ? "Nee_ouder1" : answer;
        }

        logger.debug("""
            4a.3 Ouder overleden of onbevoegd tot gezag?
            {}""", answer);
        gezagsBepaling.getArAntwoordenModel().setV04A03(answer);
        return new GezagVraagResult(QUESTION_ID, answer);
    }

    private boolean isOuder1Irrelevant(GezagsBepaling gezagsBepaling) {
        var antwoordenModel = gezagsBepaling.getArAntwoordenModel();
        var antwoordErkenning = antwoordenModel.getV02A03();
        var antwoordIndicatieGezag = antwoordenModel.getV0302();

        return "Voor_ouder2".equals(antwoordErkenning) || "2".equals(antwoordIndicatieGezag) || gezagsBepaling.isOuder1Afwezig();
    }

    private boolean isOuder2Irrelevant(GezagsBepaling gezagsBepaling) {
        var antwoordenModel = gezagsBepaling.getArAntwoordenModel();
        var antwoordErkenning = antwoordenModel.getV02A03();
        var antwoordIndicatieGezag = antwoordenModel.getV0302();

        return "Voor_ouder1".equals(antwoordErkenning) || "1".equals(antwoordIndicatieGezag) || gezagsBepaling.isOuder2Afwezig();
    }

    private String constructKey(char token1, char token2) {
        var tokenArray = new char[]{token1, token2};
        Arrays.sort(tokenArray);
        return new String(tokenArray);
    }
}
