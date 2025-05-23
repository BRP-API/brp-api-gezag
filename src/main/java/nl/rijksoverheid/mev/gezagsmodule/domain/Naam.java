package nl.rijksoverheid.mev.gezagsmodule.domain;

import java.util.Optional;

public record Naam(
    Optional<String> voornamen,
    Optional<String> geslachtsnaamVoorvoegsel,
    String geslachtsnaam,
    Optional<AdellijkeTitelPredicaat> adellijkeTitelPredicaat
) {
}
