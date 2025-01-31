package nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag;

import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * v2_1
 * EEN OUDER/TWEE OUDERS/GEEN OUDERS/2 PUNTOUDERS/ONBEKEND of
 * IN_ONDERZOEK
 */
public class HoeveelJuridischeOudersHeeftMinderjarige extends GezagVraag {

    private static final Logger logger = LoggerFactory.getLogger(HoeveelJuridischeOudersHeeftMinderjarige.class);

    protected HoeveelJuridischeOudersHeeftMinderjarige(final GezagsBepaling gezagsBepaling) {
        super(gezagsBepaling);
        currentQuestion = "v2.1";
    }

    @Override
    public void perform() {
        Persoonslijst plPersoon = gezagsBepaling.getPlPersoon();

        answer = plPersoon.hoeveelJuridischeOuders();

        logger.debug("""
            2.1 Hoeveel juridische ouders heeft de minderjarige?
            {}""", answer);
        gezagsBepaling.getArAntwoordenModel().setV0201(answer);
    }
}