package nl.rijksoverheid.mev.gezagsmodule.domain.gezagvraag;

import lombok.Getter;
import nl.rijksoverheid.mev.exception.AfleidingsregelException;
import nl.rijksoverheid.mev.exception.GezagException;
import nl.rijksoverheid.mev.gezagsmodule.domain.*;
import nl.rijksoverheid.mev.gezagsmodule.service.BrpService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.*;

/**
 * Gezag bepaling bevat alle informatie voor een gezag bepaling voor een persoon
 */
public class GezagsBepaling {

    private static final Logger logger = LoggerFactory.getLogger(GezagsBepaling.class);

    private static final String GESLACHTNAAM_AANDUIDING_PUNT_OUDER = ".";
    private static final Set<String> TE_NEGEREN_VELDEN_IN_ONDERZOEK = Set.of(
        "burgerservicenummer van persoon",
        "gemeente van inschrijving"
    );

    @Getter
    private UUID errorTraceCode;
    @Getter
    private final Persoonslijst plPersoon;
    private Persoonslijst plOuder1;
    private Persoonslijst plOuder2;
    private Persoonslijst plNietOuder;
    @Getter
    private List<String> missendeGegegevens;
    @Getter
    private final String burgerservicenummer;
    @Getter
    private final String burgerservicenummerPersoon;
    private final BrpService brpService;
    private final Map<String, Map<String, String>> hoofdstroomschema;
    private final Map<String, GezagVraag> vragenMap;
    @Getter
    private final ARAntwoordenModel arAntwoordenModel;
    private HuwelijkOfPartnerschap relatieNietOuder;
    private Character v02B01Ouder;

    public GezagsBepaling(
        final String burgerservicenummer,
        final String burgerservicenummerPersoon,
        final Persoonslijst plPersoon,
        final BrpService brpService,
        final Map<String, Map<String, String>> hoofdstroomschema,
        final Map<String, GezagVraag> vragenMap
    ) {
        this.burgerservicenummer = burgerservicenummer;
        this.burgerservicenummerPersoon = burgerservicenummerPersoon;
        this.plPersoon = plPersoon;
        this.brpService = brpService;
        this.hoofdstroomschema = hoofdstroomschema;
        this.vragenMap = vragenMap;
        arAntwoordenModel = new ARAntwoordenModel();
        missendeGegegevens = new ArrayList<>();
    }

    /**
     * Start de gezag bepaling
     */
    public ARAntwoordenModel start() {
        String nextQuestion = "v1.1";

        GezagVraagResult result;
        boolean hasNextQuestion = true;
        try {
            while (hasNextQuestion) {
                result = vragenMap.get(nextQuestion).perform(this);
                nextQuestion = determineNext(result.questionId(), result.answer());
                if (nextQuestion == null) {
                    hasNextQuestion = false;
                }
            }
        } catch (AfleidingsregelException ex) {
            addMissendeGegegevens(ex.getMissendVeld());
            arAntwoordenModel.setException(ex);
        } catch (Exception ex) {
            errorTraceCode = UUID.randomUUID();
            logger.error("Programmeerfout tijdens het bepalen van gezag ({})", errorTraceCode, ex);
            arAntwoordenModel.setRoute("0");
            arAntwoordenModel.setException(ex);
        }

        return arAntwoordenModel;
    }

    public String determineNext(final String currentQuestion, final String answer) {
        Map<String, String> antwoordEnActieParen = hoofdstroomschema.get(currentQuestion);
        if (antwoordEnActieParen != null && antwoordEnActieParen.containsKey(answer)) {
            return antwoordEnActieParen.get(answer);
        }

        return null;
    }

    public boolean isGezamenlijkGezagVanwegeGerechtelijkeUitspraak() {
        return arAntwoordenModel.isGezamenlijkGezagVanwegeGerechtelijkeUitspraak();
    }

    /**
     * @return burgerservicenummer van ouder 1 of null wanneer ouder 1 geen waarde heeft
     */
    public String getBurgerservicenummerOuder1() {
        return plOuder1 != null && plOuder1.getPersoon() != null ? plOuder1.getPersoon().getBurgerservicenummer() : null;
    }

    /**
     * @return burgerservicenummer van ouder 2 of null wanneer ouder 2 geen waarde heeft
     */
    public String getBurgerservicenummerOuder2() {
        return plOuder2 != null && plOuder2.getPersoon() != null ? plOuder2.getPersoon().getBurgerservicenummer() : null;
    }

    /**
     * @return burgerservicenummer van niet ouder of null wanneer niet ouder geen waarde heeft
     */
    public String getBurgerservicenummerNietOuder() {
        return plNietOuder != null && plNietOuder.getPersoon() != null ? plNietOuder.getPersoon().getBurgerservicenummer() : null;
    }

    /**
     * @return of er velden in onderzoek waren (010120 en 080910 worden gefiltered)
     */
    public boolean warenVeldenInOnderzoek() {
        Set<String> veldenInOnderzoek = new HashSet<>(plPersoon.getUsedVeldenInOnderzoek());
        if (plOuder1 != null) {
            veldenInOnderzoek.addAll(plOuder1.getUsedVeldenInOnderzoek());
        }
        if (plOuder2 != null) {
            veldenInOnderzoek.addAll(plOuder2.getUsedVeldenInOnderzoek());
        }
        if (plNietOuder != null) {
            veldenInOnderzoek.addAll(plNietOuder.getUsedVeldenInOnderzoek());
        }
        if (!veldenInOnderzoek.isEmpty()) {
            logger.info("De volgende velden zijn in onderzoek: {}", veldenInOnderzoek);
        }
        return veldenInOnderzoek.stream()
            .anyMatch(veldInOnderzoek ->
                TE_NEGEREN_VELDEN_IN_ONDERZOEK.stream().noneMatch(veldInOnderzoek::contains)
            );
    }

    /**
     * @return velden in onderzoek per persoon
     */
    public VeldenInOnderzoek getVeldenInOnderzoek() {
        VeldenInOnderzoek velden = new VeldenInOnderzoek();
        velden.setPersoon(plPersoon.getUsedVeldenInOnderzoek());
        if (plOuder1 != null) {
            velden.setOuder1(plOuder1.getUsedVeldenInOnderzoek());
        }
        if (plOuder2 != null) {
            velden.setOuder2(plOuder2.getUsedVeldenInOnderzoek());
        }
        if (plNietOuder != null) {
            velden.setNietOuder(plNietOuder.getUsedVeldenInOnderzoek());
        }
        return velden;
    }

    public void addMissendeGegegevens(final String missendGegegeven) {
        if (missendeGegegevens == null) {
            missendeGegegevens = new ArrayList<>();
        }
        missendeGegegevens.add(missendGegegeven);
    }

    public boolean isOuder1Aanwezig() {
        return plPersoon.getOuder1AsOptional()
            .map(Ouder1::getGeslachtsnaam)
            .filter(it -> !it.equals(GESLACHTNAAM_AANDUIDING_PUNT_OUDER))
            .isPresent();
    }

    public boolean isOuder1Afwezig() {
        return !isOuder1Aanwezig();
    }

    public boolean isOuder2Aanwezig() {
        return plPersoon.getOuder2AsOptional()
            .map(Ouder2::getGeslachtsnaam)
            .filter(it -> !it.equals(GESLACHTNAAM_AANDUIDING_PUNT_OUDER))
            .isPresent();
    }

    public boolean isOuder2Afwezig() {
        return !isOuder2Aanwezig();
    }

    public Optional<Persoonslijst> fetchPersoonslijstVanOuder1() {
        return Optional.ofNullable(getPlOuder1());
    }

    /**
     * @return ouder 1 of null
     */
    public Persoonslijst getPlOuder1() {
        if (plOuder1 == null) {
            try {
                if (plPersoon.getOuder1() != null
                    && plPersoon.getOuder1().getBurgerservicenummer() != null) {
                    brpService.getPersoonslijst(
                            plPersoon.getOuder1().getBurgerservicenummer())
                        .ifPresent(ouder1 -> {
                            ouder1.setHopRelaties(new HopRelaties());
                            ouder1.checkHopRelaties();
                            plOuder1 = ouder1;
                        });
                }
            } catch (GezagException ex) {
                logger.debug(ex.getMessage());
            }
        }
        return plOuder1;
    }

    public Optional<Persoonslijst> fetchPersoonslijstVanOuder2() {
        return Optional.ofNullable(getPlOuder2());
    }

    /**
     * @return ouder2 of null
     */
    public Persoonslijst getPlOuder2() {
        if (plOuder2 == null) {
            try {
                if (plPersoon.getOuder2() != null
                    && plPersoon.getOuder2().getBurgerservicenummer() != null) {
                    brpService.getPersoonslijst(
                            plPersoon.getOuder2().getBurgerservicenummer())
                        .ifPresent(ouder2 -> {
                            ouder2.setHopRelaties(new HopRelaties());
                            ouder2.checkHopRelaties();
                            plOuder2 = ouder2;
                        });
                }
            } catch (GezagException ex) {
                logger.debug(ex.getMessage());
            }
        }
        return plOuder2;
    }

    /**
     * @return de niet ouder of null
     */
    public Persoonslijst getPlNietOuder() {
        if (plNietOuder == null) {
            try {
                if (!isValidPersoon(plPersoon) || !isOneParentPresent(plOuder1, plOuder2)) {
                    return null;
                }
                int geboortedatum = Integer.parseInt(plPersoon.getPersoon().getGeboortedatum());
                Persoonslijst ouder = Objects.requireNonNullElse(plOuder1, plOuder2);
                getHopGeborenInRelatie(ouder, geboortedatum)
                    .map(HopRelatie::getPartner)
                    .flatMap(brpService::getPersoonslijst)
                    .ifPresent(nietOuder -> plNietOuder = nietOuder);
            } catch (GezagException ex) {
                logger.debug(ex.getMessage());
                return null;
            }
        }
        return plNietOuder;
    }

    public Optional<Persoonslijst> fetchPersoonslijstVanNietOuder() {
        return Optional.ofNullable(getPlNietOuder());
    }

    private boolean isValidPersoon(Persoonslijst plPersoon) {
        return plPersoon != null && plPersoon.getPersoon() != null
            && plPersoon.getPersoon().getGeboortedatum() != null;
    }

    private boolean isOneParentPresent(Persoonslijst plOuder1, Persoonslijst plOuder2) {
        return plOuder1 == null ^ plOuder2 == null;
    }

    private Optional<HopRelatie> getHopGeborenInRelatie(Persoonslijst ouder, int geboortedatum) {
        var hopRelaties = ouder.getHopRelaties();
        if (hopRelaties == null) return Optional.empty();

        return Optional.ofNullable(hopRelaties.findRelatieByDate(geboortedatum));
    }

    public HuwelijkOfPartnerschap getRelatieNietOuder() {
        return relatieNietOuder;
    }

    public void setRelatieNietOuder(HuwelijkOfPartnerschap relatieNietOuder) {
        this.relatieNietOuder = relatieNietOuder;
    }

    public Optional<Character> getV02B01Ouder() {
        return Optional.ofNullable(v02B01Ouder);
    }

    public void setV02B01Ouder(Character v02B01Ouder) {
        this.v02B01Ouder = v02B01Ouder;
    }
}
