package nl.rijksoverheid.mev.gezagsmodule.service;

import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3PlPersoonRecord;
import nl.rijksoverheid.mev.gezagsmodule.domain.*;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoon;
import nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag.GezagsBepaling;
import nl.rijksoverheid.mev.web.api.v2.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class GezagsrelatieServiceTest {

    @Mock
    private GezagsBepaling gezagsBepalingMock;

    private GezagsrelatieService classUnderTest;

    private static final String OG1 = "OG1";
    private static final String OG2 = "OG2";
    private static final String V = "V";
    private static final String GG = "GG";
    private static final String INDICATION_GEZAG = "Ja";
    private static final String BURGERSERVICENUMMER_ONE = "000000012";
    private static final String BURGERSERVICENUMMER_TWO = "000000024";
    private static final String BURGERSERVICENUMMER_THREE = "000000036";
    private static final String UITLEG = "uitleg";

    @BeforeEach
    public void setup() {
        classUnderTest = new GezagsrelatieService();
    }

    @Test
    void bepaalGezagsrelatiesWithoutAntwoordenModelAndGezagsbepaling() {
        ARAntwoordenModel arAntwoordenModel = null;
        GezagsBepaling gezagsBepaling = null;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertTrue(gezagsRelaties.isEmpty());
    }

    @Test
    void bepaalGezagsrelatiesWithGezagsuitkomstInAntwoordenModelAndHavingNoParents() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertTrue(gezagsRelaties.isEmpty());
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelOG1ForOuder1NotHavingPersonAndNotHavingAnyParents() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(OG1);
        arAntwoordenModel.setGezagOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setUitleg(UITLEG);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertTrue(gezagsRelaties.isEmpty());
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelOG1HavingPersonAndNotHavingAnyParents() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(OG1);
        arAntwoordenModel.setGezagOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setUitleg(UITLEG);
        String minderjarige = BURGERSERVICENUMMER_ONE;
        String bevraagdePersoon = minderjarige;
        when(gezagsBepalingMock.getPlPersoon()).thenReturn(Fixture.persoonslijstBabette());
        when(gezagsBepalingMock.getBurgerservicenummer()).thenReturn(minderjarige);
        when(gezagsBepalingMock.getBurgerservicenummerPersoon()).thenReturn(bevraagdePersoon);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertTrue(gezagsRelaties.isEmpty());
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelOG1AndHavingOneParentAsOuder1() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(OG1);
        arAntwoordenModel.setGezagOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setUitleg(UITLEG);
        String minderjarige = BURGERSERVICENUMMER_ONE;
        String bevraagdePersoon = minderjarige;
        String ouder1 = BURGERSERVICENUMMER_TWO;
        when(gezagsBepalingMock.getPlPersoon()).thenReturn(Fixture.persoonslijstBabetteMetOuder1());
        when(gezagsBepalingMock.getBurgerservicenummer()).thenReturn(minderjarige);
        when(gezagsBepalingMock.getBurgerservicenummerPersoon()).thenReturn(bevraagdePersoon);
        when(gezagsBepalingMock.getBurgerservicenummerOuder1()).thenReturn(ouder1);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertFalse(gezagsRelaties.isEmpty());
        EenhoofdigOuderlijkGezag gezag = (EenhoofdigOuderlijkGezag) gezagsRelaties.getFirst();
        assertEquals(minderjarige, gezag.getMinderjarige().getBurgerservicenummer());
        assertEquals(ouder1, gezag.getOuder().getBurgerservicenummer().orElse(""));
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelOG1AndHavingOneParentAsOuder2_resultingInNoGezag() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(OG1);
        arAntwoordenModel.setGezagOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setUitleg(UITLEG);
        String minderjarige = BURGERSERVICENUMMER_ONE;
        String bevraagdePersoon = minderjarige;
        String ouder2 = BURGERSERVICENUMMER_TWO;
        when(gezagsBepalingMock.getPlPersoon()).thenReturn(Fixture.persoonslijstBabetteMetOuder2());
        when(gezagsBepalingMock.getBurgerservicenummer()).thenReturn(minderjarige);
        when(gezagsBepalingMock.getBurgerservicenummerPersoon()).thenReturn(bevraagdePersoon);
        when(gezagsBepalingMock.getBurgerservicenummerOuder2()).thenReturn(ouder2);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertTrue(gezagsRelaties.isEmpty());
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelOG2AndHavingTwoParents() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(OG2);
        arAntwoordenModel.setUitleg(UITLEG);
        String minderjarige = BURGERSERVICENUMMER_ONE;
        String bevraagdePersoon = minderjarige;
        String ouder1 = BURGERSERVICENUMMER_TWO;
        String ouder2 = BURGERSERVICENUMMER_THREE;
        when(gezagsBepalingMock.getPlPersoon()).thenReturn(Fixture.persoonslijstBabetteMetBeideOuders());
        when(gezagsBepalingMock.getBurgerservicenummer()).thenReturn(minderjarige);
        when(gezagsBepalingMock.getBurgerservicenummerPersoon()).thenReturn(bevraagdePersoon);
        when(gezagsBepalingMock.getBurgerservicenummerOuder1()).thenReturn(ouder1);
        when(gezagsBepalingMock.getBurgerservicenummerOuder2()).thenReturn(ouder2);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertFalse(gezagsRelaties.isEmpty());
        GezamenlijkOuderlijkGezag gezag = (GezamenlijkOuderlijkGezag) gezagsRelaties.getFirst();
        assertEquals(minderjarige, gezag.getMinderjarige().getBurgerservicenummer());
        assertEquals(ouder1, gezag.getOuders().get(0).getBurgerservicenummer().orElse(""));
        assertEquals(ouder2, gezag.getOuders().get(1).getBurgerservicenummer().orElse(""));
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelVAndHavingOneParentOuder1() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(V);
        arAntwoordenModel.setGezagNietOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setUitleg(UITLEG);
        String minderjarige = BURGERSERVICENUMMER_ONE;
        String bevraagdePersoon = minderjarige;
        String ouder1 = BURGERSERVICENUMMER_TWO;
        when(gezagsBepalingMock.getPlPersoon()).thenReturn(Fixture.persoonslijstBabette());
        when(gezagsBepalingMock.getBurgerservicenummer()).thenReturn(minderjarige);
        when(gezagsBepalingMock.getBurgerservicenummerPersoon()).thenReturn(bevraagdePersoon);
        when(gezagsBepalingMock.getBurgerservicenummerOuder1()).thenReturn(ouder1);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertFalse(gezagsRelaties.isEmpty());
        Voogdij gezag = (Voogdij) gezagsRelaties.getFirst();
        assertEquals(minderjarige, gezag.getMinderjarige().getBurgerservicenummer());
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelVAndHavingOneParentNietOuder() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(V);
        arAntwoordenModel.setGezagNietOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setUitleg(UITLEG);
        String minderjarige = BURGERSERVICENUMMER_ONE;
        String bevraagdePersoon = minderjarige;
        String nietOuder = BURGERSERVICENUMMER_TWO;
        when(gezagsBepalingMock.getPlPersoon()).thenReturn(Fixture.persoonslijstBabette());
        when(gezagsBepalingMock.getBurgerservicenummer()).thenReturn(minderjarige);
        when(gezagsBepalingMock.getBurgerservicenummerPersoon()).thenReturn(bevraagdePersoon);
        when(gezagsBepalingMock.getBurgerservicenummerNietOuder()).thenReturn(nietOuder);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertFalse(gezagsRelaties.isEmpty());
        Voogdij gezag = (Voogdij) gezagsRelaties.getFirst();
        assertEquals(minderjarige, gezag.getMinderjarige().getBurgerservicenummer());
        assertEquals(nietOuder, gezag.getDerden().getFirst().getBurgerservicenummer().orElse(""));
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelVAndHavingOneParentNietOuder2() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(V);
        arAntwoordenModel.setGezagNietOuder2(INDICATION_GEZAG);
        arAntwoordenModel.setUitleg(UITLEG);
        String minderjarige = BURGERSERVICENUMMER_ONE;
        String bevraagdePersoon = minderjarige;
        String nietOuder = BURGERSERVICENUMMER_TWO;
        when(gezagsBepalingMock.getPlPersoon()).thenReturn(Fixture.persoonslijstBabette());
        when(gezagsBepalingMock.getBurgerservicenummer()).thenReturn(minderjarige);
        when(gezagsBepalingMock.getBurgerservicenummerPersoon()).thenReturn(bevraagdePersoon);
        when(gezagsBepalingMock.getBurgerservicenummerNietOuder()).thenReturn(nietOuder);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertFalse(gezagsRelaties.isEmpty());
        Voogdij gezag = (Voogdij) gezagsRelaties.getFirst();
        assertEquals(minderjarige, gezag.getMinderjarige().getBurgerservicenummer());
        assertEquals(nietOuder, gezag.getDerden().getFirst().getBurgerservicenummer().orElse(""));
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelGGAndHavingOneParentOuder1AndNoNietOuder() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(GG);
        arAntwoordenModel.setGezagOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setGezagNietOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setUitleg(UITLEG);
        String minderjarige = BURGERSERVICENUMMER_ONE;
        String bevraagdePersoon = minderjarige;
        String ouder1 = BURGERSERVICENUMMER_TWO;
        when(gezagsBepalingMock.getPlPersoon()).thenReturn(Fixture.persoonslijstBabetteMetOuder1());
        when(gezagsBepalingMock.getBurgerservicenummer()).thenReturn(minderjarige);
        when(gezagsBepalingMock.getBurgerservicenummerPersoon()).thenReturn(bevraagdePersoon);
        when(gezagsBepalingMock.getBurgerservicenummerOuder1()).thenReturn(ouder1);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertFalse(gezagsRelaties.isEmpty());
        GezamenlijkGezag gezag = (GezamenlijkGezag) gezagsRelaties.getFirst();
        assertEquals(minderjarige, gezag.getMinderjarige().getBurgerservicenummer());
        assertEquals(ouder1, gezag.getOuder().get().getBurgerservicenummer().orElse(""));
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelGGAndHavingOneParentOuder1AndHavingNietOuder() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(GG);
        arAntwoordenModel.setGezagOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setGezagNietOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setUitleg(UITLEG);
        String minderjarige = BURGERSERVICENUMMER_ONE;
        String bevraagdePersoon = minderjarige;
        String ouder1 = BURGERSERVICENUMMER_TWO;
        String nietOuder = BURGERSERVICENUMMER_THREE;
        when(gezagsBepalingMock.getPlPersoon()).thenReturn(Fixture.persoonslijstBabetteMetOuder1());
        when(gezagsBepalingMock.getBurgerservicenummer()).thenReturn(minderjarige);
        when(gezagsBepalingMock.getBurgerservicenummerPersoon()).thenReturn(bevraagdePersoon);
        when(gezagsBepalingMock.getBurgerservicenummerOuder1()).thenReturn(ouder1);
        when(gezagsBepalingMock.getBurgerservicenummerNietOuder()).thenReturn(nietOuder);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertFalse(gezagsRelaties.isEmpty());
        GezamenlijkGezag gezag = (GezamenlijkGezag) gezagsRelaties.getFirst();
        assertEquals(minderjarige, gezag.getMinderjarige().getBurgerservicenummer());
        assertEquals(ouder1, gezag.getOuder().flatMap(GezagOuder::getBurgerservicenummer).orElse(""));
        var expectedNietOuder = gezag.getDerde()
            .map(it -> (BekendeDerde) it)
            .flatMap(BekendeDerde::getBurgerservicenummer)
            .orElse("");
        assertEquals(nietOuder, expectedNietOuder);
    }

    @Test
    void bepaalGezagsrelatiesWithAntwoordenModelOG2AndHavingValuesInResearch() {
        ARAntwoordenModel arAntwoordenModel = new ARAntwoordenModel();
        arAntwoordenModel.setSoortGezag(OG2);
        arAntwoordenModel.setGezagOuder1(INDICATION_GEZAG);
        arAntwoordenModel.setGezagOuder2(INDICATION_GEZAG);
        arAntwoordenModel.setUitleg(UITLEG);
        String minderjarige = BURGERSERVICENUMMER_ONE;
        String bevraagdePersoon = minderjarige;
        String ouder1 = BURGERSERVICENUMMER_TWO;
        String nietOuder = BURGERSERVICENUMMER_THREE;
        when(gezagsBepalingMock.getPlPersoon()).thenReturn(Fixture.persoonslijstBabetteMetBeideOuders());
        when(gezagsBepalingMock.warenVeldenInOnderzoek()).thenReturn(true);
        when(gezagsBepalingMock.getBurgerservicenummer()).thenReturn(minderjarige);
        when(gezagsBepalingMock.getBurgerservicenummerPersoon()).thenReturn(bevraagdePersoon);
        when(gezagsBepalingMock.getBurgerservicenummerOuder1()).thenReturn(ouder1);
        when(gezagsBepalingMock.getBurgerservicenummerNietOuder()).thenReturn(nietOuder);
        GezagsBepaling gezagsBepaling = gezagsBepalingMock;

        List<Gezagsrelatie> gezagsRelaties = classUnderTest.bepaalGezagsrelaties(arAntwoordenModel, gezagsBepaling);

        assertFalse(gezagsRelaties.isEmpty());
        GezamenlijkOuderlijkGezag gezag = (GezamenlijkOuderlijkGezag) gezagsRelaties.getFirst();
        assertTrue(gezag.getInOnderzoek().get());
    }

    private static class Fixture {
        private static Persoonslijst persoonslijstBabette() {
            var lo3PlPersoonRecord = new Lo3PlPersoonRecord();
            lo3PlPersoonRecord.setBurgerServiceNr(Long.valueOf(BURGERSERVICENUMMER_ONE));
            lo3PlPersoonRecord.setVoorNaam("Babette");
            lo3PlPersoonRecord.setGeslachtsNaam("Boter");
            lo3PlPersoonRecord.setGeslachtsAand("F");
            lo3PlPersoonRecord.setGeboorteDatum(12122012);
            var persoon = new Persoon(lo3PlPersoonRecord, null);

            var result = new Persoonslijst();
            result.setPersoon(persoon);
            return result;
        }

        private static Persoonslijst persoonslijstBabetteMetOuder1() {
            var result = persoonslijstBabette();
            result.setOuder1(ouder1());
            return result;
        }

        private static Persoonslijst persoonslijstBabetteMetOuder2() {
            var result = persoonslijstBabette();
            result.setOuder2(ouder2());
            return result;
        }

        private static Persoonslijst persoonslijstBabetteMetBeideOuders() {
            var result = persoonslijstBabette();
            result.setOuder1(ouder1());
            result.setOuder2(ouder2());
            return result;
        }

        private static Ouder1 ouder1() {
            var lo3PlPersoonRecord = new Lo3PlPersoonRecord();
            lo3PlPersoonRecord.setBurgerServiceNr(Long.valueOf(BURGERSERVICENUMMER_TWO));
            lo3PlPersoonRecord.setVoorNaam("Petra");
            lo3PlPersoonRecord.setGeslachtsNaam("Pet");
            lo3PlPersoonRecord.setGeslachtsAand("F");

            return new Ouder1(lo3PlPersoonRecord, null);
        }

        private static Ouder2 ouder2() {
            var lo3PlPersoonRecord = new Lo3PlPersoonRecord();
            lo3PlPersoonRecord.setBurgerServiceNr(Long.valueOf(BURGERSERVICENUMMER_THREE));
            lo3PlPersoonRecord.setVoorNaam("Bert");
            lo3PlPersoonRecord.setGeslachtsNaam("Beter");
            lo3PlPersoonRecord.setGeslachtsAand("M");

            return new Ouder2(lo3PlPersoonRecord, null);
        }
    }
}
