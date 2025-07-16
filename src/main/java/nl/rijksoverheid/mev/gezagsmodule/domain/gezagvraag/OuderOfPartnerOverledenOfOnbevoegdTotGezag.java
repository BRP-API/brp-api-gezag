package nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag;

import nl.rijksoverheid.mev.gezagsmodule.domain.Ouder1;
import nl.rijksoverheid.mev.gezagsmodule.domain.Ouder2;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import nl.rijksoverheid.mev.gezagsmodule.domain.PreconditieChecker;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Map;
import java.util.Optional;

/**
 * v4b1 "Ja_..." of "Nee" als ouder of partner overleden of onbevoegd is.
 */
@Component
public class OuderOfPartnerOverledenOfOnbevoegdTotGezag implements GezagVraag {

    private static final Logger logger = LoggerFactory.getLogger(OuderOfPartnerOverledenOfOnbevoegdTotGezag.class);
    private static final String QUESTION_ID = "v4b.1";
    private static final String V4B_1_NEE = "Nee";
    private static final String V4B_1_JA_BEIDEN = "Ja_beiden";
    private static final String V4B_1_JA_OUDER1 = "Ja_ouder1";
    private static final String V4B_1_JA_OUDER2 = "Ja_ouder2";
    private static final String V4B_1_JA_NIET_OUDER1 = "Ja_nietouder1";
    private static final String V4B_1_JA_NIET_OUDER2 = "Ja_nietouder2";
    private static final Map<String, String> ouderOfPartnerOverledenOfOnbevoegdTotGezagMap = Map.of(
        "ouder1,true,true", V4B_1_JA_BEIDEN,
        "ouder1,true,false", V4B_1_JA_OUDER1,
        "ouder1,false,true", V4B_1_JA_NIET_OUDER1,
        "ouder1,false,false", V4B_1_NEE,
        "ouder2,true,true", V4B_1_JA_BEIDEN,
        "ouder2,true,false", V4B_1_JA_OUDER2,
        "ouder2,false,true", V4B_1_JA_NIET_OUDER2,
        "ouder2,false,false", V4B_1_NEE
    );
    private static final Map<String, String> JA_BEIDEN_ANTWOORDEN = Map.of(
        "cc", "Ja_beiden_onder_curatele",
        "cm", "Ja_ouder_onder_curatele_en_niet_ouder_minderjarig",
        "co", "Ja_ouder_onder_curatele_en_niet_ouder_overleden",
        "mc", "Ja_ouder_minderjarig_en_niet_ouder_onder_curatele",
        "mm", "Ja_beiden_minderjarig",
        "mo", "Ja_ouder_minderjarig_en_niet_ouder_overleden",
        "oc", "Ja_ouder_overleden_en_niet_ouder_onder_curatele",
        "om", "Ja_ouder_overleden_en_niet_ouder_minderjarig",
        "oo", "Ja_beiden_overleden"
    );

    private final PreconditieChecker preconditieChecker;

    public OuderOfPartnerOverledenOfOnbevoegdTotGezag(PreconditieChecker preconditieChecker) {
        this.preconditieChecker = preconditieChecker;
    }

    @Override
    public String getQuestionId() {
        return QUESTION_ID;
    }

    @Override
    public GezagVraagResult perform(final GezagsBepaling gezagsBepaling) {
        var optionalPersoonslijstOuder1 = gezagsBepaling.fetchPersoonslijstVanOuder1();
        var optionalOuder1OverledenOfOnbevoegdToken = optionalPersoonslijstOuder1
            .map(Persoonslijst::isOverledenOfOnbevoegdEncoded)
            .orElseGet(() -> gezagsBepaling.getPlPersoon().getOuder1AsOptional().flatMap(Ouder1::isMinderjarigEncoded));

        var optionalPersoonslijstOuder2 = gezagsBepaling.fetchPersoonslijstVanOuder2();
        var optionalOuder2OverledenOfOnbevoegdToken = optionalPersoonslijstOuder2
            .map(Persoonslijst::isOverledenOfOnbevoegdEncoded)
            .orElseGet(() -> gezagsBepaling.getPlPersoon().getOuder2AsOptional().flatMap(Ouder2::isMinderjarigEncoded));

        final var persoonslijstNietOuder = gezagsBepaling.isGezamenlijkGezagVanwegeGerechtelijkeUitspraak()
            ? null
            : fetchPersoonslijstNietOuder(gezagsBepaling);
        final var optionalNietOuderOverledenOfOnbevoegdToken = persoonslijstNietOuder == null
            ? Optional.<Character>empty()
            : persoonslijstNietOuder.isOverledenOfOnbevoegdEncoded();
        boolean isNietOuderOverledenOfOnbevoegd = optionalNietOuderOverledenOfOnbevoegdToken.isPresent();

        var isOuder2Irrelevant = isOuder2Irrelevant(gezagsBepaling);
        String key = isOuder2Irrelevant
            ? "ouder1," + optionalOuder1OverledenOfOnbevoegdToken.isPresent() + "," + isNietOuderOverledenOfOnbevoegd
            : "ouder2," + optionalOuder2OverledenOfOnbevoegdToken.isPresent() + "," + isNietOuderOverledenOfOnbevoegd;
        var answer = ouderOfPartnerOverledenOfOnbevoegdTotGezagMap.get(key);

        var persoonslijstPersoon = gezagsBepaling.getPlPersoon();
        Optional<Character> optionalOuderOverledenOfOnbevoegdToken;
        if (isOuder2Irrelevant) {
            var persoonslijstOuder1 = optionalPersoonslijstOuder1.orElse(null);
            preconditieChecker.preconditieCheckGeregistreerd("ouder1", persoonslijstPersoon, persoonslijstOuder1);
            optionalOuderOverledenOfOnbevoegdToken = optionalOuder1OverledenOfOnbevoegdToken;
        } else { // isOuder1Irrelevant == true
            var persoonslijstOuder2 = optionalPersoonslijstOuder2.orElse(null);
            preconditieChecker.preconditieCheckGeregistreerd("ouder2", persoonslijstPersoon, persoonslijstOuder2);
            optionalOuderOverledenOfOnbevoegdToken = optionalOuder2OverledenOfOnbevoegdToken;
        }
        if (V4B_1_JA_BEIDEN.equals(answer)) {
            var ouderOverledenOfOnbevoegdToken = optionalOuderOverledenOfOnbevoegdToken.orElseThrow();
            var nietOuderOverledenOfOnbevoegdToken = optionalNietOuderOverledenOfOnbevoegdToken.orElseThrow();
            var key2 = "%c%c".formatted(ouderOverledenOfOnbevoegdToken, nietOuderOverledenOfOnbevoegdToken);
            answer = JA_BEIDEN_ANTWOORDEN.get(key2);
        }

        logger.debug("""
            4b.1 Ouder, echtgenoot of partner overleden of onbevoegd tot gezag?
            {}""", answer);
        gezagsBepaling.getArAntwoordenModel().setV04B01(answer);
        return new GezagVraagResult(QUESTION_ID, answer);
    }

    private boolean isOuder2Irrelevant(GezagsBepaling gezagsBepaling) {
        var antwoordenModel = gezagsBepaling.getArAntwoordenModel();
        var ouderMetStaandeHuwelijk = gezagsBepaling.getV02B01Ouder().orElse('0');
        var antwoordIndicatieGezag = antwoordenModel.getV0302();

        return '1' == ouderMetStaandeHuwelijk || "1D".equals(antwoordIndicatieGezag) || gezagsBepaling.isOuder2Afwezig();
    }

    private Persoonslijst fetchPersoonslijstNietOuder(GezagsBepaling gezagsBepaling) {
        var persoonLijstPersoon = gezagsBepaling.getPlPersoon();
        var persoonslijstNietOuder = gezagsBepaling.getPlNietOuder();
        preconditieChecker.preconditieCheckGeregistreerd("niet-ouder", persoonLijstPersoon, persoonslijstNietOuder);
        return persoonslijstNietOuder;
    }
}
