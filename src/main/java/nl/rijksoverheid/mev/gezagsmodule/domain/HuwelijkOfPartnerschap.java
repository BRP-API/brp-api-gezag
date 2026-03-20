package nl.rijksoverheid.mev.gezagsmodule.domain;

import jakarta.validation.constraints.NotNull;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3PlPersoonRecord;
import nl.rijksoverheid.mev.brp.brpv.generated.tables.records.Lo3TitelPredicaatRecord;

import java.util.Objects;
import java.util.Optional;

/**
 * Huwelijk of partnerschap
 */
@Categorie(number = "05", name = "relatie")
public class HuwelijkOfPartnerschap extends PotentieelInOnderzoek implements Comparable<HuwelijkOfPartnerschap> {

    private static final String ONBEKEND = ".";

    @VeldNummer(number = "050120", name = "burgerservicenummer van relatie")
    private final String burgerservicenummer;

    @VeldNummer(number = "050210", name = "voornamen van relatie")
    private final String voornaam;
    @VeldNummer(number = "050210", name = "voornamen (diakrieten) van relatie")
    private final String voornaamMetDiakrieten;
    @VeldNummer(number = "050220", name = "adellijke titel/predicaat van relatie")
    private final String titelPredicaat;
    private final String titelPredicaatOmschrijving;
    private final String titelPredicaatSoort;
    @VeldNummer(number = "050230", name = "voorvoegsel geslachtsnaam van relatie")
    private final String geslachtsnaamVoorvoegsel;
    @VeldNummer(number = "050240", name = "geslachtsnaam van relatie")
    private final String geslachtsnaam;
    @VeldNummer(number = "020240", name = "geslachtsnaam (diakrieten) van relatie")
    private final String geslachtsnaamMetDiakrieten;
    @VeldNummer(number = "050310", name = "geboortedatum van relatie")
    private final String geboortedatum;
    @VeldNummer(number = "050410", name = "geslachtsaanduiding van relatie")
    private final String geslachtsaanduiding;
    /**
     * Datum waarop het huwelijk is voltrokken of het partnerschap is aangegaan.
     * <p>
     * yyyyMMdd formaat
     */
    @VeldNummer(number = "050610", name = "datum voltrokken van relatie")
    private final String datumVoltrokken;
    /**
     * Datum waarop het huwelijk/partnerschap is ontbonden of nietig verklaard.
     * <p>
     * yyyyMMdd formaat
     */
    @VeldNummer(number = "050710", name = "datum ontbinding van relatie")
    private final String datumOntbinding;
    /**
     * Geeft aan om welke reden het partnerschap is ontbonden of nietig
     * verklaard
     * <p>
     * Code opgenomen in Tabel 41: Tabel Reden ontbinding/nietigverklaring
     * huwelijk/partnerschap
     *
     * @see <a href="https://publicaties.rvig.nl/Landelijke_tabellen">Tabel
     * Reden ontbinding/nietigverklaring huwelijk/partnerschap</a>
     */
    @VeldNummer(number = "050740", name = "reden ontbinding van relatie")
    private final String redenOntbinding;

    private final String geldigheidStartDatum;

    public HuwelijkOfPartnerschap(final Lo3PlPersoonRecord lo3PlPersoonRecord, Lo3TitelPredicaatRecord lo3TitelPredicaatRecord) {
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
        this.geslachtsaanduiding = Objects.toString(lo3PlPersoonRecord.getGeslachtsAand(), null);
        this.datumVoltrokken = Objects.toString(lo3PlPersoonRecord.getRelatieStartDatum(), null);
        this.datumOntbinding = Objects.toString(lo3PlPersoonRecord.getRelatieEindDatum(), null);
        this.redenOntbinding = lo3PlPersoonRecord.getRelatieEindReden();
        this.aanduidingGegevensInOnderzoek = onderzoekGegevensAanduidingAsString;
        this.datumEindeOnderzoek = Objects.toString(lo3PlPersoonRecord.getOnderzoekEindDatum(), null);
        this.geldigheidStartDatum = Objects.toString(lo3PlPersoonRecord.getGeldigheidStartDatum(), null);
    }

    public boolean isNietVerwijderdNaCorrectie() {
        return !isVerwijderdNaCorrectie();
    }

    public boolean isVerwijderdNaCorrectie() {
        return datumVoltrokken == null && datumOntbinding == null && geldigheidStartDatum == null;
    }

    public String getBsnPartner() {
        registerIfInOnderzoek("burgerservicenummer", getClass());

        return burgerservicenummer;
    }

    public Optional<String> getBurgerservicenummer() {
        registerIfInOnderzoek("burgerservicenummer", getClass());
        return Optional.ofNullable(burgerservicenummer);
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

    public Optional<String> getGeslachtsaanduiding() {
        registerIfInOnderzoek("geslachtsaanduiding", getClass());
        return Optional.ofNullable(geslachtsaanduiding);
    }

    public String getDatumVoltrokken() {
        registerIfInOnderzoek("datumVoltrokken", getClass());

        return datumVoltrokken;
    }

    public String getDatumOntbinding() {
        registerIfInOnderzoek("datumOntbinding", getClass());

        return datumOntbinding;
    }

    public String getRedenOntbinding() {
        registerIfInOnderzoek("redenOntbinding", getClass());

        return redenOntbinding;
    }


    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        HuwelijkOfPartnerschap that = (HuwelijkOfPartnerschap) o;
        return Objects.equals(burgerservicenummer, that.burgerservicenummer)
            && Objects.equals(datumVoltrokken, that.datumVoltrokken)
            && Objects.equals(datumOntbinding, that.datumOntbinding)
            && Objects.equals(geldigheidStartDatum, that.geldigheidStartDatum);
    }

    @Override
    public int hashCode() {
        return Objects.hash(burgerservicenummer, datumVoltrokken, datumOntbinding, geldigheidStartDatum);
    }

    /**
     * Compares this HuwelijkOfPartnerschap with another HuwelijkOfPartnerschap based on chronologic order of events.
     * <p>
     * The comparison assumes every HuwelijkOfPartnerschap has a present {@code datumVoltrokken}
     * exclusive or {@code datumOntbinding}. The two present dates are then compared to determine
     * the chronological order of events.
     * <p>
     * Note: this class has a natural ordering that is inconsistent with equals.
     *
     * @param o the object to be compared.
     * @return a negative integer, zero, or a positive integer as this object
     *         is less than, equal to, or greater than the specified object.
     */
    @Override
    public int compareTo(@NotNull HuwelijkOfPartnerschap o) {
        Objects.requireNonNull(o);

        if (Objects.equals(this.datumVoltrokken, o.datumVoltrokken) && Objects.equals(this.datumOntbinding, o.datumOntbinding))
            return 0;

        var thisDate = Optional.ofNullable(this.datumVoltrokken).orElseGet(() -> Optional.ofNullable(this.datumOntbinding).orElse(this.geldigheidStartDatum));
        var thatDate = Optional.ofNullable(o.datumVoltrokken).orElseGet(() -> Optional.ofNullable(o.datumOntbinding).orElse(o.geldigheidStartDatum));

        var result = thisDate.compareTo(thatDate);
        if (result == 0) { // datumVoltrokken == datumOntbinding
            return this.datumVoltrokken != null ? -1 : 1;
        } else {
            return result;
        }
    }
}
