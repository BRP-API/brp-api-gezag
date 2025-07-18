package nl.rijksoverheid.mev.gezagsmodule.domain;

import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3PlPersoonRecord;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3TitelPredicaatRecord;
import org.apache.commons.lang3.builder.EqualsBuilder;

import java.time.LocalDate;
import java.util.Objects;
import java.util.Optional;

/**
 * Ouder1 voor persoon
 */
@Categorie(number = "02", name = "ouder 1")
public class Ouder1 extends PotentieelInOnderzoek implements WithAktenummer {

    private static final String ONBEKEND = ".";
    private static final int MEERDERJARIGE_LEEFTIJD = 180000;

    @VeldNummer(number = "020120", name = "burgerservicenummer van ouder 1")
    private final String burgerservicenummer;
    @VeldNummer(number = "020210", name = "voornamen van ouder 1")
    private final String voornaam;
    @VeldNummer(number = "020210", name = "voornamen (diakrieten) van ouder 1")
    private final String voornaamMetDiakrieten;
    @VeldNummer(number = "020220", name = "adellijke titel/predicaat van ouder 1")
    private final String titelPredicaat;
    private final String titelPredicaatOmschrijving;
    private final String titelPredicaatSoort;
    @VeldNummer(number = "020230", name = "voorvoegsel geslachtsnaam van ouder 1")
    private final String geslachtsnaamVoorvoegsel;
    @VeldNummer(number = "020240", name = "geslachtsnaam van ouder 1")
    private final String geslachtsnaam;
    @VeldNummer(number = "020240", name = "geslachtsnaam (diakrieten) van ouder 1")
    private final String geslachtsnaamMetDiakrieten;
    @VeldNummer(number = "020310", name = "geboortedatum van ouder 1")
    private final String geboortedatum;
    @VeldNummer(number = "020410", name = "geslachts aanduiding van ouder 1")
    private final String geslachtsAanduiding;
    @VeldNummer(number = "028120", name = "aktenummer van ouder 1")
    private final String aktenummer;
    @VeldNummer(number = "026210", name = "datum ingang familiebetrekking van ouder 1")
    private final String datumIngangFamilieBetrekking;

    public Ouder1(final Lo3PlPersoonRecord lo3PlPersoonRecord, Lo3TitelPredicaatRecord lo3TitelPredicaatRecord) {
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
        this.geslachtsAanduiding = Objects.toString(lo3PlPersoonRecord.getGeslachtsAand(), null);
        this.aktenummer = lo3PlPersoonRecord.getAkteNr();
        this.datumIngangFamilieBetrekking = Objects.toString(lo3PlPersoonRecord.getFamilieBetrekStartDatum(), null);
        this.aanduidingGegevensInOnderzoek = onderzoekGegevensAanduidingAsString;
        this.datumEindeOnderzoek = Objects.toString(lo3PlPersoonRecord.getOnderzoekEindDatum(), null);
    }

    public Optional<Character> isMinderjarigEncoded() {
        return isMinderjarig() ? Optional.of('m') : Optional.empty();
    }

    public boolean isMinderjarig() {
        if (geboortedatum == null) {
            return false;
        }
        int minderjarigTotInt = Integer.parseInt(geboortedatum) + MEERDERJARIGE_LEEFTIJD;
        int datumVandaag = Integer.parseInt(LocalDate.now().format(FORMATTER));
        return minderjarigTotInt > datumVandaag;
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

    public String getGeslachtsnaam() {
        registerIfInOnderzoek("geslachtsnaam", getClass());
        return geslachtsnaamMetDiakrieten == null ? geslachtsnaam : geslachtsnaamMetDiakrieten;
    }

    public String getGeboortedatum() {
        registerIfInOnderzoek("geboortedatum", getClass());
        return geboortedatum;
    }

    public Optional<String> getGeslachtsAanduiding() {
        registerIfInOnderzoek("geslachtsAanduiding", getClass());
        return Optional.ofNullable(geslachtsAanduiding);
    }

    public String getDatumIngangFamiliebetrekking() {
        registerIfInOnderzoek("datumIngangFamilieBetrekking", getClass());

        return datumIngangFamilieBetrekking;
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
            getGeslachtsnaam(),
            getDatumIngangFamiliebetrekking(),
            getAktenummer(),
            getAanduidingGegevensInOnderzoek(),
            getDatumEindeOnderzoek());
    }
}