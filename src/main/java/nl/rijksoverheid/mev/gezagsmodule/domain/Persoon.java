package nl.rijksoverheid.mev.gezagsmodule.domain;

import jakarta.annotation.Nullable;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3PlPersoonRecord;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3TitelPredicaatRecord;
import org.apache.commons.lang3.builder.EqualsBuilder;

import java.util.Objects;
import java.util.Optional;

/**
 * Persoon (vanuit persoonslijst zoals opgenomen in de BRP)
 */
@Categorie(number = "01", name = "persoon")
public class Persoon extends PotentieelInOnderzoek implements WithAktenummer {

    private static final String ONBEKEND = ".";

    @VeldNummer(number = "010120", name = "burgerservicenummer van persoon")
    private final String burgerservicenummer;
    @VeldNummer(number = "010210", name = "voornamen van persoon")
    private final String voornaam;
    private final String voornaamMetDiakrieten;
    @VeldNummer(number = "010220", name = "adellijke titel/predicaat van persoon")
    private final String titelPredicaat;
    private final String titelPredicaatOmschrijving;
    private final String titelPredicaatSoort;
    @VeldNummer(number = "010230", name = "voorvoegsel geslachtsnaam van persoon")
    private final String geslachtsnaamVoorvoegsel;
    @VeldNummer(number = "010240", name = "geslachtsnaam van persoon")
    private final String geslachtsnaam;
    private final String geslachtsnaamMetDiakrieten;
    @VeldNummer(number = "010310", name = "geboortedatum van persoon")
    private final String geboortedatum;
    @VeldNummer(number = "010330", name = "geboorteland van persoon")
    private final String geboorteland;
    @VeldNummer(number = "010410", name = "geslachtsaanduiding van persoon")
    private final String geslachtsaanduiding;
    @VeldNummer(number = "018120", name = "aktenummer van persoon")
    private final String aktenummer;

    public Persoon(Lo3PlPersoonRecord lo3PlPersoonRecord, @Nullable Lo3TitelPredicaatRecord lo3TitelPredicaatRecord) {
        var burgerServiceNr = lo3PlPersoonRecord.getBurgerServiceNr();
        var burgerServiceNrAsString = burgerServiceNr == null ? null : "%09d".formatted(burgerServiceNr);

        var onderzoekGegevensAanduiding = lo3PlPersoonRecord.getOnderzoekGegevensAand();
        var onderzoekGegevensAanduidingAsString = onderzoekGegevensAanduiding == null ? null : "%06d".formatted(onderzoekGegevensAanduiding);

        this.burgerservicenummer = burgerServiceNrAsString;
        this.voornaam = lo3PlPersoonRecord.getVoorNaam();
        this.voornaamMetDiakrieten = lo3PlPersoonRecord.getDiakVoorNaam();
        this.titelPredicaat = lo3PlPersoonRecord.getTitelPredicaat();
        this.titelPredicaatOmschrijving = lo3TitelPredicaatRecord == null ? null : lo3TitelPredicaatRecord.getTitelPredicaatOms();
        this.titelPredicaatSoort = lo3TitelPredicaatRecord == null ? null : lo3TitelPredicaatRecord.getTitelPredicaatSoort();
        this.geslachtsnaamVoorvoegsel = lo3PlPersoonRecord.getGeslachtsNaamVoorvoegsel();
        this.geslachtsnaam = lo3PlPersoonRecord.getGeslachtsNaam();
        this.geslachtsnaamMetDiakrieten = lo3PlPersoonRecord.getDiakGeslachtsNaam();
        this.geboortedatum = Objects.toString(lo3PlPersoonRecord.getGeboorteDatum(), null);
        this.geboorteland = Objects.toString(lo3PlPersoonRecord.getGeboorteLandCode(), null);
        this.geslachtsaanduiding = Objects.toString(lo3PlPersoonRecord.getGeslachtsAand(), null);
        this.aktenummer = lo3PlPersoonRecord.getAkteNr();
        this.aanduidingGegevensInOnderzoek = onderzoekGegevensAanduidingAsString;
        this.datumEindeOnderzoek = Objects.toString(lo3PlPersoonRecord.getOnderzoekEindDatum(), null);
    }

    public String getBurgerservicenummer() {
        registerIfInOnderzoek("burgerservicenummer", getClass());

        return burgerservicenummer;
    }

    public Optional<Naam> getNaam() {
        var geslachtsnaamLocal = getGeslachtsnaam();
        if (geslachtsnaamLocal == null) return Optional.empty();
        if (geslachtsnaamLocal.equals(ONBEKEND)) return Optional.empty();

        var result = new Naam(getVoornaam(), getGeslachtsnaamVoorvoegsel(), geslachtsnaamLocal, getAdellijkeTitelPredicaat());
        return Optional.of(result);
    }

    private Optional<String> getVoornaam() {
        registerIfInOnderzoek("voornaam", getClass());
        var result = voornaamMetDiakrieten == null ? voornaam : voornaamMetDiakrieten;
        return Optional.ofNullable(result);
    }

    private Optional<AdellijkeTitelPredicaat> getAdellijkeTitelPredicaat() {
        registerIfInOnderzoek("titelPredicaat", getClass());

        var result = titelPredicaat == null
            ? null
            : new AdellijkeTitelPredicaat(titelPredicaat, titelPredicaatOmschrijving, titelPredicaatSoort);
        return Optional.ofNullable(result);
    }

    private Optional<String> getGeslachtsnaamVoorvoegsel() {
        registerIfInOnderzoek("geslachtsnaamVoorvoegsel", getClass());
        return Optional.ofNullable(geslachtsnaamVoorvoegsel);
    }

    private String getGeslachtsnaam() {
        registerIfInOnderzoek("geslachtsnaam", getClass());
        return geslachtsnaamMetDiakrieten == null ? geslachtsnaam : geslachtsnaamMetDiakrieten;
    }

    public String getGeboortedatum() {
        registerIfInOnderzoek("geboortedatum", getClass());

        return geboortedatum;
    }

    public String getGeboorteland() {
        registerIfInOnderzoek("geboorteland", getClass());

        return geboorteland;
    }

    public Optional<String> getGeslachtsaanduiding() {
        registerIfInOnderzoek("geslachtsaanduiding", getClass());
        return Optional.ofNullable(geslachtsaanduiding);
    }

    @Override
    public String getAktenummer() {
        registerIfInOnderzoek("aktenummer", getClass());

        return aktenummer;
    }

    @Override
    public boolean equals(Object o) {
        return EqualsBuilder.reflectionEquals(this, o);
    }

    @Override
    public int hashCode() {
        return Objects.hash(
            getBurgerservicenummer(),
            getGeboortedatum(),
            getGeboorteland(),
            getAktenummer(),
            getAanduidingGegevensInOnderzoek(),
            getDatumEindeOnderzoek());
    }
}