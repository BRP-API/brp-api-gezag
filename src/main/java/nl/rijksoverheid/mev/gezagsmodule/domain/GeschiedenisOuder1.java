package nl.rijksoverheid.mev.gezagsmodule.domain;

import nl.rijksoverheid.mev.brpadapter.soap.persoonlijst.Categorie;
import nl.rijksoverheid.mev.brpadapter.soap.persoonlijst.PotentieelInOnderzoek;
import org.apache.commons.lang3.builder.EqualsBuilder;

import java.time.Clock;
import java.util.Map;
import java.util.Objects;

/**
 * Geschiedenis persoon
 */
public class GeschiedenisOuder1 extends PotentieelInOnderzoek {

    private static final String BSN = "520120";
    private static final String VOORNAMEN = "520210";
    private static final String VOORVOEGSEL = "520230";// Voorvoegsel geslachtsnaam persoon
    private static final String GESLACHTSNAAM = "520240";
    private static final String GEBOORTEDATUM = "520310";
    private static final String GEBOORTELAND = "520330";
    private static final String RNI_DEELNEMER = "528810";
    private static final String AKTENUMMER = "528120";
    private static final String DOCUMENT_BESCHRIJVING = "528230";

    public GeschiedenisOuder1(final Map<String, String> values, final Clock clock) {
        super(Categorie.GESCHIEDENIS_OUDER_1, values, clock);
    }

    public String getBsn() {
        return get(BSN);
    }

    public String getVoornamen() {
        return get(VOORNAMEN);
    }

    public String getVoorvoegsel() {
        return get(VOORVOEGSEL);
    }

    public String getGeslachtsnaam() {
        return get(GESLACHTSNAAM);
    }

    public String getGeboortedatum() {
        return get(GEBOORTEDATUM);
    }

    public String getGeboorteland() {
        return get(GEBOORTELAND);
    }

    public String getAktenummer() {
        return get(AKTENUMMER);
    }

    public String getDocumentBeschrijving() {
        return get(DOCUMENT_BESCHRIJVING);
    }

    public String getRniDeelnemer() {
        return get(RNI_DEELNEMER);
    }

    @Override
    public boolean equals(Object o) {
        return EqualsBuilder.reflectionEquals(this, o);
    }

    @Override
    public int hashCode() {
        return Objects.hash(
                getBsn(),
                getVoornamen(),
                getVoorvoegsel(),
                getGeslachtsnaam(),
                getGeboortedatum(),
                getGeboorteland(),
                getAktenummer(),
                getDocumentBeschrijving(),
                getRniDeelnemer(),
                getAanduidingGegevensInOnderzoek(),
                getDatumIngangOnderzoek(),
                getDatumEindeOnderzoek());
    }
}