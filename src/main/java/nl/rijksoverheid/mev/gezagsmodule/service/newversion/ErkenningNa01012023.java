package nl.rijksoverheid.mev.gezagsmodule.service.newversion;

import nl.rijksoverheid.mev.exception.AfleidingsregelException;
import nl.rijksoverheid.mev.gezagsmodule.domain.Ouder1;
import nl.rijksoverheid.mev.gezagsmodule.domain.Ouder2;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;

public class ErkenningNa01012023 extends GezagVraag {

    private static final String V2A_3_VOOR = "Voor";
    private static final String V2A_3_VOOR_OUDER1 = "Voor_ouder1";
    private static final String V2A_3_VOOR_OUDER2 = "Voor_ouder2";
    private static final String V2A_3_NA = "Na";
    private static final int DATE_JAN_1_2023 = 20230101;

    protected ErkenningNa01012023(final GezagBepaling gezagBepaling) {
        super(gezagBepaling);
        currentQuestion = "v2a_3";
    }

    /**
     * v2a_3
     *
     * @return VOOR of NA
     */
    @Override
    public void perform() {
        Persoonslijst plPersoon = gezagBepaling.getPlPersoon();
        Ouder1 persoonOuder1 = plPersoon.getOuder1();
        Ouder2 persoonOuder2 = plPersoon.getOuder2();
        if (persoonOuder1 == null || persoonOuder2 == null)
            throw new AfleidingsregelException("Preconditie: vraag 2a.3 - Geen twee ouders bij erkenning");
        // voor snelheid en gegevens in onderzoek
        boolean persoonErkend = plPersoon.geenOngeborenVruchtErkendOfGerechtelijkeVaststelling();
        boolean ouder1Erkend = plPersoon.geenOngeborenVruchtDoorOuder1ErkendOfGerechtelijkeVaststelling();
        boolean ouder2Erkend = plPersoon.geenOngeborenVruchtDoorOuder2ErkendOfGerechtelijkeVaststelling();
        boolean persoonOngeborenVruchtErkend = plPersoon.ongeborenVruchtErkend();
        boolean ouder1ErkendOpOfNa01012023 = Integer.parseInt(persoonOuder1.getDatumIngangFamiliebetrekking()) >= DATE_JAN_1_2023;
        boolean ouder2ErkendOpOfNa01012023 = Integer.parseInt(persoonOuder2.getDatumIngangFamiliebetrekking()) >= DATE_JAN_1_2023;
        boolean persoonGeborenVoor01012023 = Integer.parseInt(plPersoon.getPersoon().getGeboortedatum()) < DATE_JAN_1_2023;
        // evaluatie op volgorde
        if ((persoonErkend || persoonOngeborenVruchtErkend) &&
            (ouder1ErkendOpOfNa01012023 || ouder2ErkendOpOfNa01012023)) {
            answer = V2A_3_NA;
        }
        if (ouder1Erkend) {
            answer = V2A_3_VOOR_OUDER2;
        }
        if (ouder2Erkend) {
            answer = V2A_3_VOOR_OUDER1;
        }
        if (!persoonErkend && persoonOngeborenVruchtErkend && persoonGeborenVoor01012023) {
            answer = V2A_3_VOOR;
        }

        if(answer != null) {
            gezagBepaling.getArAntwoordenModel().setV02A03(answer);
        } else {
            throw new AfleidingsregelException("Preconditie: vraag 2a.3 - Geboortemoeder niet te bepalen");
        }
    }
}