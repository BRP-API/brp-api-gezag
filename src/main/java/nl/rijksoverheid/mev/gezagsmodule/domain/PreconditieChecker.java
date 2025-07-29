package nl.rijksoverheid.mev.gezagsmodule.domain;

import jakarta.annotation.Nullable;
import nl.rijksoverheid.mev.exception.AfleidingsregelException;
import nl.rijksoverheid.mev.exception.GezagException;
import nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag.GezagsBepaling;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

import java.util.HashMap;
import java.util.Map;

/**
 * Controleerd of aan verschillende precondities is voldaan
 */
@RequestScope
@Component
public class PreconditieChecker {

    private final Map<String, String> missendGegevensByBurgservicenummer = new HashMap<>();

    /**
     * Controleer of de ouders geregistreerd zijn
     *
     * @param gezagsBepaling de gezagsbepaling om de ouders voor te controleren
     * @throws GezagException wanneer de ouder niet is geregistreerd
     */
    public void preconditieCheckOudersGeregistreerd(final GezagsBepaling gezagsBepaling) throws GezagException {
        final var plPersoon = gezagsBepaling.getPlPersoon();
        if (!plPersoon.heeftTweeOuders()) {
            throw new AfleidingsregelException(
                "Preconditie: Kind moet twee ouders hebben",
                "Van de bevraagde persoon zijn geen twee ouders bekend"
            );
        }
        var persoonslijstOuder1 = gezagsBepaling.getPlOuder1();
        String burgerservicenummerKind = plPersoon.getPersoon().getBurgerservicenummer();
        if (persoonslijstOuder1 == null) {
            missendGegevensByBurgservicenummer.put(burgerservicenummerKind, "ouder1 van bevraagde persoon is niet in BRP geregistreerd");
            return;
        }
        var persoonslijstOuder2 = gezagsBepaling.getPlOuder2();
        if (persoonslijstOuder2 == null) {
            missendGegevensByBurgservicenummer.put(burgerservicenummerKind, "ouder2 van bevraagde persoon is niet in BRP geregistreerd");
            return;
        }

        preconditieCheckGeregistreerd("ouder1", plPersoon, persoonslijstOuder1);
        preconditieCheckGeregistreerd("ouder2", plPersoon, persoonslijstOuder2);
    }

    /**
     * Controleer of de persoonslijst een ingeschreven persoon is
     *
     * @param beschrijving de type persoon om te controleren
     * @param plOuder de persoonslijst van de ouder
     * @throws AfleidingsregelException wanneer de ouder niet is geregistreerd
     */
    public void preconditieCheckGeregistreerd(
        String beschrijving,
        Persoonslijst plKind,
        @Nullable Persoonslijst plOuder
    ) throws AfleidingsregelException {
        if (plOuder == null) { // move into #getPlNietOuder()?
            var burgservicenummerKind = plKind.getPersoon().getBurgerservicenummer();
            var missendGegeven = "%s van bevraagde persoon is niet in BRP geregistreerd".formatted(beschrijving);
            missendGegevensByBurgservicenummer.put(burgservicenummerKind, missendGegeven);
            return;
        }

        if (plOuder.isIngeschrevenInRNI()) {
            throw new AfleidingsregelException(
                "Preconditie: " + beschrijving + " moet in BRP geregistreerd staan",
                beschrijving + " van bevraagde persoon is niet in BRP geregistreerd");
        }
    }

    public String getMissendGegevenByBurgservicenummer(String burgerservicenummer) {
        return missendGegevensByBurgservicenummer.getOrDefault(burgerservicenummer, "");
    }
}
