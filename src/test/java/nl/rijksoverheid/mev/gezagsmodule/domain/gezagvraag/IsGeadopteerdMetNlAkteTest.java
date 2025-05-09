package nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag;

import nl.rijksoverheid.mev.gezagsmodule.domain.ARAntwoordenModel;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoon;
import nl.rijksoverheid.mev.gezagsmodule.domain.Persoonslijst;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class IsGeadopteerdMetNlAkteTest {

    private static final String V1_3B_JA = "Ja";
    private static final String V1_3B_NEE = "Nee";
    private static final String AKTE_ERKENNING = "1AC0109";
    private static final String AKTE_ADOPTIE = "1AQ0109";
    @Mock
    private GezagsBepaling gezagsBepaling;
    @Mock
    private Persoon persoon;
    @Mock
    private ARAntwoordenModel arAntwoordenModel;
    private IsGeadopteerdMetNlAkte classUnderTest;

    @BeforeEach
    public void setup() {
        Persoonslijst persoonslijst = new Persoonslijst();
        persoonslijst.setPersoon(persoon);
        when(gezagsBepaling.getPlPersoon()).thenReturn(persoonslijst);
        when(gezagsBepaling.getArAntwoordenModel()).thenReturn(arAntwoordenModel);
        classUnderTest = new IsGeadopteerdMetNlAkte();
    }

    @Test
    void isGeadopteerdMetNlAkteWithoutAktenummer() {
        var antwoord = classUnderTest.perform(gezagsBepaling);

        assertThat(antwoord.answer()).isEqualTo(V1_3B_NEE);
    }

    @Test
    void isGeadopteerdMetNlAkteWithAktenummerNotBeingAdoptie() {
        when(persoon.getAktenummer()).thenReturn(AKTE_ERKENNING);

        var antwoord = classUnderTest.perform(gezagsBepaling);

        assertThat(antwoord.answer()).isEqualTo(V1_3B_NEE);
    }

    @Test
    void isGeadopteerdMetNlAkteWithAktenummerBeingAdoptie() {
        when(persoon.getAktenummer()).thenReturn(AKTE_ADOPTIE);

        var antwoord = classUnderTest.perform(gezagsBepaling);

        assertThat(antwoord.answer()).isEqualTo(V1_3B_JA);
    }
}