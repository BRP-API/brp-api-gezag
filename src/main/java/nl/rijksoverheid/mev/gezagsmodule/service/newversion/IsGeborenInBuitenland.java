package nl.rijksoverheid.mev.gezagsmodule.service.newversion;

import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import nl.rijksoverheid.mev.gezagsmodule.domain.Verblijfplaats;

import static org.apache.commons.lang3.StringUtils.isNotEmpty;

public class IsGeborenInBuitenland extends GezagVraag {

    private static final String V1_3A_JA = "Ja";
    private static final String V1_3A_NEE = "Nee";

    protected IsGeborenInBuitenland(final GezagBepaling gezagBepaling) {
        super(gezagBepaling);
        currentQuestion = "v1.3a";
    }

    /*
    /**
     * v1_3a
     *
     * @return "Ja" als is geboren in het buitenland anders "Nee"
     */
    @Override
    public void perform() {
        Persoonslijst plPersoon = gezagBepaling.getPlPersoon();

        String geboorteland = plPersoon.getPersoon().getGeboorteland();
        Verblijfplaats verblijfplaats = plPersoon.getVerblijfplaats();
        if (geboorteland == null) {
            gezagBepaling.addMissendeGegegevens("Geboorteland van bevraagde persoon");
        } else if (verblijfplaats == null) {
            gezagBepaling.addMissendeGegegevens("Verblijfplaats van bevraagde persoon");
        } else if (geboorteland.equals("6030") && isNotEmpty(verblijfplaats.getDatumVestigingInNederland())) {
            answer = V1_3A_JA;
        } else {
            answer = V1_3A_NEE;
        }

        /*
        if (plPersoon.isGeborenInBuitenland()) {
            answer = V1_3A_JA;
        } else {
            answer = V1_3A_NEE;
        }
        */

        gezagBepaling.getArAntwoordenModel().setV0103A(answer);
    }
}