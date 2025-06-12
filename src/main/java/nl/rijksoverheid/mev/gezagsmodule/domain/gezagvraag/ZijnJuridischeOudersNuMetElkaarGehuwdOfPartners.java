package nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag;

import nl.rijksoverheid.mev.gezagsmodule.domain.HuwelijkOfPartnerschap;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import nl.rijksoverheid.mev.gezagsmodule.domain.PreconditieChecker;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Objects;

/**
 * v2a_1 Mogelijke antwoorden: - "Ja"        (Ja, gehuwd of partners) - "Nee" - "Nee_nooit" (Nee, na
 * geboorte nooit gehuwd/partners geweest met elkaar)
 */
@Component
public class ZijnJuridischeOudersNuMetElkaarGehuwdOfPartners implements GezagVraag {

    private static final Logger logger = LoggerFactory.getLogger(ZijnJuridischeOudersNuMetElkaarGehuwdOfPartners.class);
    private static final String QUESTION_ID = "v2a.1";
    private static final String V2A_1_JA_GEHUWD_OF_PARTNERS = "Ja";
    private static final String V2A_1_NEE = "Nee";
    private static final String V2A_1_NEE_NA_GEBOORTE_NOOIT_GEHUWD_PARTNERS_GEWEEST_MET_ELKAAR = "Nee_nooit";

    @Override
    public String getQuestionId() {
        return QUESTION_ID;
    }

    @Override
    public GezagVraagResult perform(final GezagsBepaling gezagsBepaling) {
        final var plPersoon = gezagsBepaling.getPlPersoon();
        final var geboortedatumKind = plPersoon.getPersoon().getGeboortedatum();
        PreconditieChecker.preconditieCheckOudersGeregistreerd(gezagsBepaling);

        final var plOuder1 = gezagsBepaling.getPlOuder1();
        final var plOuder2 = gezagsBepaling.getPlOuder2();
        String answer = null;

        if (plOuder1 != null && plOuder2 == null) {
            answer = plPersoon.getOuder2AsOptional().map(plOuder1::heeftHuwelijkMet).orElse(false)
                ? V2A_1_JA_GEHUWD_OF_PARTNERS
                : V2A_1_NEE_NA_GEBOORTE_NOOIT_GEHUWD_PARTNERS_GEWEEST_MET_ELKAAR;
        }
        if (plOuder1 == null && plOuder2 != null) {
            answer = plPersoon.getOuder1AsOptional().map(plOuder2::heeftHuwelijkMet).orElse(false)
                ? V2A_1_JA_GEHUWD_OF_PARTNERS
                : V2A_1_NEE_NA_GEBOORTE_NOOIT_GEHUWD_PARTNERS_GEWEEST_MET_ELKAAR;
        }
        if (answer != null) {
            gezagsBepaling.getArAntwoordenModel().setV02A01(answer);
            return new GezagVraagResult(QUESTION_ID, answer);
        }

        final var hopOuder1 = getOuderHuwelijkOfPartnerschap(plOuder1, plOuder2);
        final var hopOuder2 = getOuderHuwelijkOfPartnerschap(plOuder2, plOuder1);
        if (hopOuder1 == null || hopOuder2 == null) {
            answer = V2A_1_NEE_NA_GEBOORTE_NOOIT_GEHUWD_PARTNERS_GEWEEST_MET_ELKAAR;
        } else if (isHuwelijkOfPartnerschapTussenOudersActueel(hopOuder1, hopOuder2)) {
            if (!plOuder1.isOverleden() && !plOuder2.isOverleden()) {
                answer = V2A_1_JA_GEHUWD_OF_PARTNERS;
            } else {
                answer = V2A_1_NEE;
            }
        } else if (ouderGescheiden(hopOuder1, geboortedatumKind)
            || ouderGescheiden(hopOuder2, geboortedatumKind)) {
            answer = V2A_1_NEE_NA_GEBOORTE_NOOIT_GEHUWD_PARTNERS_GEWEEST_MET_ELKAAR;
        } else {
            answer = V2A_1_NEE;
        }

        logger.debug("""
            2a.1 Zijn beide juridische ouders nu met elkaar gehuwd/partners?
            {}""", answer);
        gezagsBepaling.getArAntwoordenModel().setV02A01(answer);
        return new GezagVraagResult(QUESTION_ID, answer);
    }

    private HuwelijkOfPartnerschap getOuderHuwelijkOfPartnerschap(
        final Persoonslijst persoonslijst1, final Persoonslijst persoonslijst2) {
        if (persoonslijst1 == null || persoonslijst2 == null) {
            return null;
        }
        for (final var hop : persoonslijst1.getHuwelijkOfPartnerschappen()) {
            if (persoonslijst2.getPersoon() != null
                && Objects.equals(persoonslijst2.getPersoon().getBurgerservicenummer(),
                hop.getBsnPartner())) {
                return hop;
            }
        }
        return null;
    }

    private boolean ouderGescheiden(final HuwelijkOfPartnerschap hop,
                                    final String geboortedatumKind) {
        if (hop != null && "S".equals(hop.getRedenOntbinding())) {
            return Integer.parseInt(hop.getDatumOntbinding()) < Integer.parseInt(geboortedatumKind);
        }
        return false;
    }

    private boolean isHuwelijkOfPartnerschapTussenOudersActueel(
        final HuwelijkOfPartnerschap hopOuder1, final HuwelijkOfPartnerschap hopOuder2) {
        return org.apache.commons.lang3.StringUtils.isNotBlank(hopOuder1.getDatumVoltrokken())
            && org.apache.commons.lang3.StringUtils.isNotBlank(hopOuder2.getDatumVoltrokken());
    }
}
