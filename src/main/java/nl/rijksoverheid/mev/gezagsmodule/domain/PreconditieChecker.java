package nl.rijksoverheid.mev.gezagsmodule.domain;

import nl.rijksoverheid.mev.exception.AfleidingsregelException;
import nl.rijksoverheid.mev.exception.GezagException;
import nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag.GezagsBepaling;
import org.slf4j.MDC;

/**
 * Controleerd of aan verschillende precondities is voldaan
 */
public class PreconditieChecker {

    public static final String IS_EEN_OUDER_NIET_GEREGISTREERD_MISSEND_VELD = "isEenOuderNietGeregistreerdMissendVeld";

    private PreconditieChecker() {}

    /**
     * Controleer of de ouders geregistreerd zijn
     *
     * @param gezagsBepaling de gezagsbepaling om de ouders voor te controleren
     * @throws GezagException wanneer de ouder niet is geregistreerd
     */
    public static  void preconditieCheckOudersGeregistreerd(final GezagsBepaling gezagsBepaling) throws GezagException {
        final var plPersoon = gezagsBepaling.getPlPersoon();
        if (!plPersoon.heeftTweeOuders()) {
            throw new AfleidingsregelException(
                "Preconditie: Kind moet twee ouders hebben",
                "Van de bevraagde persoon zijn geen twee ouders bekend"
            );
        }
        var persoonslijstOuder1 = gezagsBepaling.getPlOuder1();
        if (persoonslijstOuder1 == null) {
            MDC.put(IS_EEN_OUDER_NIET_GEREGISTREERD_MISSEND_VELD, "ouder1 van bevraagde persoon is niet in BRP geregistreerd");
            return;
        }
        var persoonslijstOuder2 = gezagsBepaling.getPlOuder2();
        if (persoonslijstOuder2 == null) {
            MDC.put(IS_EEN_OUDER_NIET_GEREGISTREERD_MISSEND_VELD, "ouder2 van bevraagde persoon is niet in BRP geregistreerd");
            return;
        }

        preconditieCheckGeregistreerd("ouder1", persoonslijstOuder1);
        preconditieCheckGeregistreerd("ouder2", persoonslijstOuder2);
    }

    /**
     * Controleer of de persoonslijst een ingeschreven persoon is
     *
     * @param beschrijving de type persoon om te controleren
     * @param plOuder de persoonslijst van de ouder
     * @throws AfleidingsregelException wanneer de ouder niet is geregistreerd
     */
    public static void preconditieCheckGeregistreerd(final String beschrijving, final Persoonslijst plOuder) throws AfleidingsregelException {
        if (plOuder == null) { // move into #getPlNietOuder()?
            var missendVeld = MDC.get(IS_EEN_OUDER_NIET_GEREGISTREERD_MISSEND_VELD);
            if (missendVeld == null) {
                MDC.put(IS_EEN_OUDER_NIET_GEREGISTREERD_MISSEND_VELD, "%s van bevraagde persoon is niet in BRP geregistreerd".formatted(beschrijving));
            }
            return;
        }

        if (!plOuder.isNietIngeschrevenInRNI()) {
            throw new AfleidingsregelException(
                "Preconditie: " + beschrijving + " moet in BRP geregistreerd staan",
                beschrijving + " van bevraagde persoon is niet in BRP geregistreerd");
        }
    }
}
