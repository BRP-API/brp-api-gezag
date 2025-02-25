package nl.rijksoverheid.mev.gezagsmodule.model;

public record Burgerservicenummer(long value) {
    public static Burgerservicenummer from(String value) {
        return new Burgerservicenummer(Long.parseLong(value));
    }

    public String asString() {
        return String.valueOf(value);
    }
}
