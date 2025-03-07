# language: nl
@integratie @stap-documentatie
Functionaliteit: Stap definities ten behoeve van specificeren gezagsrelaties

  Achtergrond:
    Gegeven de tabel 'lo3_pl' bevat geen rijen
    En de tabel 'lo3_pl_persoon' bevat geen rijen
    En de tabel 'lo3_pl_verblijfplaats' bevat geen rijen
    En de tabel 'lo3_pl_gezagsverhouding' bevat geen rijen

  Regel: Een persoon benoemen we functioneel met een naam en technisch met een burgerservicenummer
    Standaard is een persoon in Nederland geboren met een Nederlandse geboorteakte.

    Scenario: de persoon '{naam}' met burgerservicenummer '{bsn}'
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          |               6030 | 1AA0100 |

  Regel: Meerderjarigheid, minderjarigheid en geboorte worden toegevoegd aan de persoon

    Scenario: is meerderjarig
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * is meerderjarig
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          | gisteren - 45 jaar |               6030 | 1AA0100 |

    Scenario: is minderjarig
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * is minderjarig
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          | gisteren - 17 jaar |               6030 | 1AA0100 |

    Scenario: is {relatievedatum} geboren
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * is <relatieve datum> geboren
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum    | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          | <relatieve datum> |               6030 | 1AA0100 |

      Voorbeelden:
        | relatieve datum |
        | gisteren        |
        |  2 jaar geleden |
        | vorige maand    |

    Scenario: '{naam}' is {relatievedatum} geboren
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      En de persoon 'Anna' met burgerservicenummer '000000024'
      En 'Tosca' is <relatieve datum> geboren
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum    | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          | <relatieve datum> |               6030 | 1AA0100 |
      En heeft de persoon 'Anna' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Anna           |               6030 | 1AA0100 |

      Voorbeelden:
        | relatieve datum |
        | gisteren        |
        |  2 jaar geleden |
        | vorige maand    |

    Scenario: '{naam}' is geboren op {datum}
      # datum heeft formaat d-m-j, met d en m heeft 1 of 2 cijfers, j heeft 4 cijfers
      # met de (optionele) naam wijzigt de context naar deze persoon
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      En de persoon 'Anna' met burgerservicenummer '000000024'
      En 'Tosca' is geboren op <datum>
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum  | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          | <geboortedatum> |               6030 | 1AA0100 |
      En heeft de persoon 'Anna' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Anna           |               6030 | 1AA0100 |

      Voorbeelden:
        | datum      | geboortedatum |
        | 31-12-2022 |      20221231 |
        |   1-1-2023 |      20230101 |

    Scenario: is geboren op {datum}
      # datum heeft formaat d-m-j, met d en m heeft 1 of 2 cijfers, j heeft 4 cijfers
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * 'Tosca' is geboren op <datum>
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum  | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          | <geboortedatum> |               6030 | 1AA0100 |

      Voorbeelden:
        | datum      | geboortedatum |
        | 31-12-2022 |      20221231 |
        |   1-1-2023 |      20230101 |

    Abstract Scenario: is geboren in {land}
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * is geboren in <land>
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          | <land code>        |

      Voorbeelden:
        | land        | landcode |
        | België      |     5010 |
        | Spanje      |     6037 |
        | Duitsland   |     6029 |
        | Afghanistan |     6023 |

  Regel: Geslachtsaanduiding wordt toegevoegd aan de persoon

    Scenario: is een <geslacht>
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * is een <geslacht>
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | geslachts_aand        |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          |               6030 | 1AA0100 | <geslacht aanduiding> |

      Voorbeelden:
        | geslacht | geslacht aanduiding |
        | vrouw    | V                   |
        | man      | M                   |

  Regel: Inschrijving, immigratie en emigratie wordt vastgelegd in de verblijfplaats

    Scenario: is ingeschreven in een Nederlandse gemeente
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * is ingeschreven in een Nederlandse gemeente
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          |               6030 | 1AA0100 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_verblijfplaats'
        | pl_id | volg_nr | inschrijving_gemeente_code |
        |     1 |       0 |                       0518 |

    Scenario: is ingeschreven als niet-ingezetene met een verblijfplaats in België
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * is ingeschreven als niet-ingezetene met een verblijfplaats in België
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          |               6030 | 1AA0100 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_verblijfplaats'
        | pl_id | volg_nr | inschrijving_gemeente_code | vertrek_land_code |
        |     1 |       0 |                       1999 |              5010 |

    Scenario: is ingeschreven als niet-ingezetene met een volledig onbekende verblijfplaats
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * is ingeschreven als niet-ingezetene met een volledig onbekende verblijfplaats
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          |               6030 | 1AA0100 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_verblijfplaats'
        | pl_id | volg_nr | inschrijving_gemeente_code | vertrek_land_code |
        |     1 |       0 |                       1999 |              0000 |

    Scenario: de gemeente heeft vastgesteld dat de minderjarige niet op het adres verblijft
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * is ingeschreven in een Nederlandse gemeente
      * de gemeente heeft vastgesteld dat de minderjarige niet op het adres verblijft
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          |               6030 | 1AA0100 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_verblijfplaats'
        | pl_id | volg_nr | inschrijving_gemeente_code | onderzoek_gegevens_aand |
        |     1 |       0 |                       0518 |                  089999 |

    Scenario: is op {datum} geïmmigreerd
      # datum heeft formaat d-m-j, met d en m heeft 1 of 2 cijfers, j heeft 4 cijfers
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      * is geboren in België
      En is op <immigratiedatum> geïmmigreerd
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          |               5010 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_verblijfplaats'
        | pl_id | volg_nr | inschrijving_gemeente_code | vestiging_datum   |
        |     1 |       0 |                       0518 | <vestiging datum> |

      Voorbeelden:
        | immigratiedatum | vestiging datum |
        |       15-5-2022 |        20220515 |
        |       3-11-2023 |        20231103 |

    Scenario: '{naam}' is {relatievedatum} geïmmigreerd naar Nederland
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      En 'Tosca' is <relatieve datum> geïmmigreerd naar Nederland
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          |               5010 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_verblijfplaats'
        | pl_id | volg_nr | inschrijving_gemeente_code | vestiging_datum   |
        |     1 |       0 |                       0518 | <relatieve datum> |

      Voorbeelden:
        | relatieve datum |
        | gisteren        |
        |  2 jaar geleden |
        | vorige maand    |

    Scenario: '{naam}' is {relatievedatum} geëmigreerd naar {landnaam}
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000012'
      En 'Tosca' is <relatieve datum> geëmigreerd naar <land naam>
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code |
        |     1 | P            |         0 |       0 |         000000012 | Tosca          |               5010 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_verblijfplaats'
        | pl_id | volg_nr | inschrijving_gemeente_code | vestiging_datum   |
        |     1 |       0 |                       0518 | <relatieve datum> |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_verblijfplaats'
        | pl_id | volg_nr | inschrijving_gemeente_code | vestiging_datum   |
        |     1 |       0 |                       0518 | <relatieve datum> |

      Voorbeelden:
        | relatieve datum | land naam   | land code |
        | vorige maand    | België      |      5010 |
        |  2 jaar geleden | Spanje      |      6037 |
        |  2 jaar geleden | Duitsland   |      6029 |
        |  2 jaar geleden | Afghanistan |      6023 |

  Regel: Huwelijk en geregistreerd partnerschap wordt toegevoegd als persoon_type 'R' voor beide betrokken personen
    # To Do: welke gegevens van een persoon worden meegenomen - want zijn relevant - in de relatie?
    # geboortedatum, geboorteland, ...?

    Scenario: '{naam1}' en '{naam2}' zijn met elkaar gehuwd
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En 'Arjan' en 'Tosca' zijn met elkaar gehuwd
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | verbintenis_soort |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |                     |                      |                         |                   |
        |     1 | R            |         0 |       0 |         000000024 | Tosca          |                    |         | gisteren - 20 jaar  |                  518 |                    6030 | H                 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | verbintenis_soort |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |                     |                      |                         |                   |
        |     2 | R            |         0 |       0 |         000000012 | Arjan          |                    |         | gisteren - 20 jaar  |                  518 |                    6030 | H                 |

    Scenario: '{naam1}' en '{naam2}' zijn {relatievedatum} gehuwd
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En 'Arjan' en 'Tosca' zijn <relatieve datum> gehuwd
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | verbintenis_soort |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |                     |                      |                         |                   |
        |     1 | R            |         0 |       0 |         000000024 | Tosca          |                    |         | <relatieve datum>   |                  518 |                    6030 | H                 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | verbintenis_soort |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |                     |                      |                         |                   |
        |     2 | R            |         0 |       0 |         000000012 | Arjan          |                    |         | <relatieve datum>   |                  518 |                    6030 | H                 |

      Voorbeelden:
        | relatieve datum   |
        |    2 jaar geleden |
        | gisteren - 5 jaar |

    Scenario: '{naam1}' en '{naam2}' zijn een geregistreerd partnerschap aangegaan op {datum}
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En 'Arjan' en 'Tosca' zijn een geregistreerd partnerschap aangegaan op 1-3-2010
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | verbintenis_soort |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |                     |                      |                         |                   |
        |     1 | R            |         0 |       0 |         000000024 | Tosca          |                    |         | <relatieve datum>   |                  518 |                    6030 | P                 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | verbintenis_soort |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |                     |                      |                         |                   |
        |     2 | R            |         0 |       0 |         000000012 | Arjan          |                    |         | <relatieve datum>   |                  518 |                    6030 | P                 |

    Scenario: '{naam1}' en '{naam2}' zijn {relatieve datum} een geregistreerd partnerschap aangegaan
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En 'Arjan' en 'Tosca' zijn 7 jaar geleden een geregistreerd partnerschap aangegaan
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | verbintenis_soort |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |                     |                      |                         |                   |
        |     1 | R            |         0 |       0 |         000000024 | Tosca          |                    |         |      7 jaar geleden |                  518 |                    6030 | P                 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | verbintenis_soort |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |                     |                      |                         |                   |
        |     2 | R            |         0 |       0 |         000000012 | Arjan          |                    |         |      7 jaar geleden |                  518 |                    6030 | P                 |

    Scenario: '{naam1}' en '{naam2}' zijn {relatievedatum} gescheiden
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En 'Arjan' en 'Tosca' zijn met elkaar gehuwd
      En 'Arjan' en 'Tosca' zijn <relatieve datum> gescheiden
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     1 | R            |         0 |       1 |         000000024 | Tosca          |                    |         | gisteren - 20 jaar  |                  518 |                    6030 |                    |                     |                        | H                 |
        |     1 | R            |         0 |       0 |         000000024 | Tosca          |                    |         |                     |                      |                         | <relatieve datum>  |                 518 |                   6030 | H                 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     2 | R            |         0 |       1 |         000000012 | Arjan          |                    |         | gisteren - 20 jaar  |                  518 |                    6030 |                    |                     |                        | H                 |
        |     2 | R            |         0 |       0 |         000000012 | Arjan          |                    |         |                     |                      |                         | <relatieve datum>  |                 518 |                   6030 | H                 |

      Voorbeelden:
        | relatieve datum   |
        |    2 jaar geleden |
        | gisteren - 5 jaar |

    Scenario: het geregistreerd partnerschap van '{naam1}' en '{naam2}' is {relatieve datum} ontbonden
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En 'Arjan' en 'Tosca' zijn 7 jaar geleden een geregistreerd partnerschap aangegaan
      En het geregistreerd partnerschap van 'Arjan' en 'Tosca' is 2 jaar geleden ontbonden
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     1 | R            |         0 |       1 |         000000024 | Tosca          |                    |         |      7 jaar geleden |                  518 |                    6030 |                    |                     |                        | P                 |
        |     1 | R            |         0 |       0 |         000000024 | Tosca          |                    |         |                     |                      |                         |     2 jaar geleden |                 518 |                   6030 | P                 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     2 | R            |         0 |       1 |         000000012 | Arjan          |                    |         |      7 jaar geleden |                  518 |                    6030 |                    |                     |                        | P                 |
        |     2 | R            |         0 |       0 |         000000012 | Arjan          |                    |         |                     |                      |                         |     2 jaar geleden |                 518 |                   6030 | P                 |

    Scenario: volgende relatie: '{naam1}' en '{naam2}' zijn {relatievedatum} gehuwd
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En 'Arjan' en 'Tosca' zijn met elkaar gehuwd
      En 'Arjan' en 'Tosca' zijn 5 jaar geleden gescheiden
      En 'Arjan' en 'Tosca' zijn <relatieve datum> gehuwd
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     1 | R            |         0 |       1 |         000000024 | Tosca          |                    |         | gisteren - 20 jaar  |                  518 |                    6030 |                    |                     |                        | H                 |
        |     1 | R            |         0 |       0 |         000000024 | Tosca          |                    |         |                     |                      |                         |     5 jaar geleden |                 518 |                   6030 | H                 |
        |     1 | R            |         1 |       0 |         000000024 | Tosca          |                    |         | <relatieve datum>   |                  518 |                    6030 |                    |                     |                        | H                 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     2 | R            |         0 |       1 |         000000012 | Arjan          |                    |         | gisteren - 20 jaar  |                  518 |                    6030 |                    |                     |                        | H                 |
        |     2 | R            |         0 |       0 |         000000012 | Arjan          |                    |         |                     |                      |                         |     5 jaar geleden |                 518 |                   6030 | H                 |
        |     2 | R            |         1 |       0 |         000000012 | Arjan          |                    |         | <relatieve datum>   |                  518 |                    6030 |                    |                     |                        | H                 |

      Voorbeelden:
        | relatieve datum   |
        |    2 jaar geleden |
        | gisteren - 3 jaar |
        | vorige maand      |

    Scenario: '{naam1}' en '{naam2}' zijn {relatievedatum1} gehuwd en {relatievedatum2} gescheiden
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En 'Arjan' en 'Tosca' zijn 6 jaar geleden gehuwd en 2 jaar geleden gescheiden
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     1 | R            |         0 |       1 |         000000024 | Tosca          |                    |         |      6 jaar geleden |                  518 |                    6030 |                    |                     |                        | H                 |
        |     1 | R            |         0 |       0 |         000000024 | Tosca          |                    |         |                     |                      |                         |     2 jaar geleden |                 518 |                   6030 | H                 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     2 | R            |         0 |       1 |         000000012 | Arjan          |                    |         |      6 jaar geleden |                  518 |                    6030 |                    |                     |                        | H                 |
        |     2 | R            |         0 |       0 |         000000012 | Arjan          |                    |         |                     |                      |                         |     2 jaar geleden |                 518 |                   6030 | H                 |
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      En de persoon 'Thea' met burgerservicenummer '000000048'
      En 'Arjan' en 'Tosca' zijn 10 jaar geleden gehuwd
      En 'Arjan' en 'Tosca' zijn 7 jaar geleden gescheiden
      En 'Arjan' en 'Thea' zijn 5 jaar geleden opnieuw gehuwd
      En 'Tosca' en 'Theo' zijn 3 jaar geleden opnieuw gehuwd
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     1 | R            |         0 |       1 |         000000024 | Tosca          |                    |         |     10 jaar geleden |                  518 |                    6030 |                    |                     |                        | H                 |
        |     1 | R            |         0 |       0 |         000000024 | Tosca          |                    |         |                     |                      |                         |     7 jaar geleden |                 518 |                   6030 | H                 |
        |     1 | R            |         1 |       0 |         000000048 | Thea           |                    |         |      5 jaar geleden |                  518 |                    6030 |                    |                     |                        | H                 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     2 | R            |         0 |       1 |         000000012 | Arjan          |                    |         |     10 jaar geleden |                  518 |                    6030 |                    |                     |                        | H                 |
        |     2 | R            |         0 |       0 |         000000012 | Arjan          |                    |         |                     |                      |                         |     7 jaar geleden |                 518 |                   6030 | H                 |
        |     2 | R            |         1 |       0 |         000000036 | Theo           |                    |         |      3 jaar geleden |                  518 |                    6030 |                    |                     |                        | H                 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     3 | P            |         0 |       0 |         000000036 | Theo           |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     3 | R            |         0 |       0 |         000000024 | Tosca          |                    |         |      3 jaar geleden |                  518 |                    6030 |                    |                     |                        | H                 |
      En heeft de persoon 'Thea' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Thea' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | relatie_start_datum | relatie_start_plaats | relatie_start_land_code | relatie_eind_datum | relatie_eind_plaats | relatie_eind_land_code | verbintenis_soort |
        |     3 | P            |         0 |       0 |         000000048 | Thea           |               6030 | 1AA0100 |                     |                      |                         |                    |                     |                        |                   |
        |     3 | R            |         0 |       0 |         000000012 | Arjan          |                    |         |      5 jaar geleden |                  518 |                    6030 |                    |                     |                        | H                 |

      Voorbeelden:

  Regel: Ouders worden toegevoegd als persoon_type respectievelijk '1' en '2' aan de persoon en de persoon als persoon_type 'K' bij de ouders

    Scenario: heeft '{naam}' als ouder
      # als er nog geen geboortedatum van de persoon bekend is, wordt 'gisteren - 17 jaar' opgenomen bij familie_betrek_start_datum in de ouder-relatie
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * heeft 'Arjan' als ouder
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AA0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     2 | P            |         0 |       0 |         000000036 | Theo           |               6030 | 1AA0100 |                            |
        |     2 |            1 |         0 |       0 |         000000012 | Arjan          |                    | 1AA0100 | gisteren - 17 jaar         |

    Abstract Scenario: neem geboortedatum van de minderjarige over: heeft '{naam}' als ouder
      # geboortedatumm wordt overgenomen naar de kind-relatie op de PL van de ouder
      # en familie_betrek_start_datum wordt gevuld met de geboortedatum
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * <eigenschap kind>
      * heeft 'Arjan' als ouder
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum  | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |                 |               6030 | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           | <geboortedatum> |                    | 1AA0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum  | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     2 | P            |         0 |       0 |         000000036 | Theo           | <geboortedatum> |               6030 | 1AA0100 |                            |
        |     2 |            1 |         0 |       0 |         000000012 | Arjan          |                 |                    | 1AA0100 | <geboortedatum>            |

      Voorbeelden:
        | eigenschap kind        | geboortedatum      |
        | is meerderjarig        | gisteren - 45 jaar |
        | is minderjarig         | gisteren - 17 jaar |
        | is geboren op 5-8-1998 |           19980805 |

    Scenario: neem geboortedatum van de ouder over: heeft '{naam}' als ouder
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      * <eigenschap ouder>
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * heeft 'Arjan' als ouder
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum  | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          | <geboortedatum> |               6030 | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                 |                    | 1AA0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum  | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     2 | P            |         0 |       0 |         000000036 | Theo           |                 |               6030 | 1AA0100 |                            |
        |     2 |            1 |         0 |       0 |         000000012 | Arjan          | <geboortedatum> |                    | 1AA0100 | gisteren - 17 jaar         |

      Voorbeelden:
        | eigenschap ouder       | geboortedatum      |
        | is meerderjarig        | gisteren - 45 jaar |
        | is minderjarig         | gisteren - 17 jaar |
        | is geboren op 5-8-1998 |           19980805 |

    Scenario: neem geslacht van de ouder over: heeft '{naam}' als ouder
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      * <eigenschap ouder>
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * heeft 'Arjan' als ouder
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | geslachts_aand        |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 | <geslachtsaanduiding> |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AA0100 |                       |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | familie_betrek_start_datum | geslachts_aand        |
        |     2 | P            |         0 |       0 |         000000036 | Theo           |               6030 | 1AA0100 |                            |                       |
        |     2 |            1 |         0 |       0 |         000000012 | Arjan          |                    | 1AA0100 | gisteren - 17 jaar         | <geslachtsaanduiding> |

      Voorbeelden:
        | eigenschap ouder | geslachtsaanduiding |
        | is een vrouw     | V                   |
        | is een man       | M                   |

    Scenario: heeft '{naam1}' en '{naam2}' als ouders
      # als er nog geen geboortedatum van de persoon bekend is, wordt default 'gisteren - 17 jaar' opgenomen bij familie_betrek_start_datum in de ouder-relatie
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * heeft 'Arjan' en 'Tosca' als ouders
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AA0100 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |
        |     2 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AA0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     3 | P            |         0 |       0 |         000000036 | Theo           |               6030 | 1AA0100 |                            |
        |     3 |            1 |         0 |       0 |         000000012 | Arjan          |                    | 1AA0100 | gisteren - 17 jaar         |
        |     3 |            2 |         0 |       0 |         000000024 | Tosca          |                    | 1AA0100 | gisteren - 17 jaar         |

    Scenario: overnemen gegevens van ouders en kind: heeft '{naam1}' en '{naam2}' als ouders
      # geboortedatumm van het kind wordt overgenomen naar de kind-relatie op de PL van de ouder en familie_betrek_start_datum wordt gevuld met de geboortedatum
      # geboortedatum en geslacht van de ouder worden overgenomen naar de ouder-relatie op de PL van de persoon
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een man
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      * is geboren op 5-8-1988
      * is een vrouw
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * is 2 jaar geleden geboren
      * heeft 'Arjan' en 'Tosca' als ouders
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | geslachts_aand | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          | gisteren - 45 jaar |               6030 | M              | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |     2 jaar geleden |                    |                | 1AA0100 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum | geboorte_land_code | geslachts_aand | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |       19880805 |               6030 | V              | 1AA0100 |
        |     2 | K            |         0 |       0 |         000000036 | Theo           | 2 jaar geleden |                    |                | 1AA0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | geslachts_aand | akte_nr | familie_betrek_start_datum |
        |     3 | P            |         0 |       0 |         000000036 | Theo           |     2 jaar geleden |               6030 |                | 1AA0100 |                            |
        |     3 |            1 |         0 |       0 |         000000012 | Arjan          | gisteren - 45 jaar |                    | M              | 1AA0100 |             2 jaar geleden |
        |     3 |            2 |         0 |       0 |         000000024 | Tosca          |           19880805 |                    | V              | 1AA0100 |             2 jaar geleden |

    Scenario: heeft '{naam}' als ouder die niet met burgerservicenummer is ingeschreven in de BRP
      # geboortedatum van de niet-ingezeten ouder wordt standaard gevuld als meerderjarig (gisteren - 45 jaar)
      # mogelijk gaan we later andere varianten toevoegen (minderjarige ouder) of extra gegevens toevoegen (voornamen, geboorteplaats, geboorteland, ...?)
      # als er nog geen geboortedatum van de persoon bekend is, wordt 'gisteren - 17 jaar' opgenomen bij familie_betrek_start_datum in de ouder-relatie
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * heeft 'Arjan' als ouder
      * heeft 'Tosca' als ouder die niet met burgerservicenummer is ingeschreven in de BRP
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AA0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     2 | P            |         0 |       0 |         000000036 | Theo           |                    |               6030 | 1AA0100 |                            |
        |     2 |            1 |         0 |       0 |         000000012 | Arjan          |                    |                    | 1AA0100 | gisteren - 17 jaar         |
        |     2 |            2 |         0 |       0 |                   | Tosca          | gisteren - 45 jaar |                    | 1AA0100 | gisteren - 17 jaar         |

    Scenario: '{naam}' is {relatieve datum} als vondeling geboren
      Gegeven de persoon 'Theo' met burgerservicenummer '000000036'
      * is minderjarig
      En 'Theo' is 3 jaar geleden als vondeling geboren
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum | geslachts_aand | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     1 | P            |         0 |       0 |         000000036 | Theo           | 3 jaar geleden |                |               6030 | 1AA0100 |                            |
        |     1 |            1 |         0 |       0 |                   | .              |                | V              |                    | 1AA0100 |             3 jaar geleden |
        |     1 |            2 |         0 |       0 |                   |                |                |                |                    | 1AA0100 |                            |

    Scenario: '{naam}' is {relatieve datum} geadopteerd door '{naam}'
      # het soort ouder (persoon_type '1' of '2') is de eerste plek die beschikbaar is
      # als er nog geen ouder 1 is dan wordt de adoptieouder ouder 1
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000024'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      En 'Theo' is 3 jaar geleden geadopteerd door 'Tosca'
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AQ0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geslachts_aand | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     2 | P            |         0 |       0 |         000000036 | Theo           |                |               6029 | 1AQ0100 |                            |
        |     2 |            1 |         0 |       0 |         000000024 | Tosca          | V              |                    | 1AQ0100 |             3 jaar geleden |

    Scenario: adoptie naast andere ouder: '{naam}' is {relatieve datum} geadopteerd door '{naam}'
      # het soort ouder (persoon_type '1' of '2') is de eerste plek die beschikbaar is
      # als ouder 1 al bestaat en ouder 1 heeft geslachts_naam met een waarde ongelijk aan '.', dan wordt de adoptieouder ouder 2
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * heeft 'Tosca' als ouder
      En 'Theo' is 3 jaar geleden geadopteerd door 'Arjan'
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AQ0100 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |
        |     2 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AA0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum | geslachts_aand | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     3 | P            |         0 |       0 |         000000036 | Theo           | 4 jaar geleden |                |               6030 | 1AQ0100 |                            |
        |     3 |            1 |         0 |       0 |         000000024 | Tosca          |                |                |                    | 1AA0100 | gisteren - 17 jaar         |
        |     3 |            2 |         0 |       0 |         000000012 | Arjan          |                |                |                    | 1AQ0100 |             3 jaar geleden |

    Scenario: adoptie vervangt puntouder: '{naam}' is {relatieve datum} geadopteerd door '{naam}'
      # het soort ouder (persoon_type '1' of '2') is de eerste plek die beschikbaar is
      # als ouder 1 heeft geslachts_naam leeg, of als ouder 1 heeft geslachts_naam '.' dan wordt de adoptieouder ouder 1
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000024'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      En 'Theo' is 4 jaar geleden als vondeling geboren
      En 'Theo' is 3 jaar geleden geadopteerd door 'Tosca'
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | geslachts_aand | akte_nr |
        |     1 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | V              | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                    |                | 1AQ0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum | geslachts_aand | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     2 | P            |         0 |       0 |         000000036 | Theo           | 4 jaar geleden |                |               6030 | 1AQ0100 |                            |
        |     2 |            1 |         0 |       0 |         000000024 | Tosca          |                |                |                    | 1AQ0100 |             3 jaar geleden |
        |     2 |            1 |         0 |       1 |                   | .              |                | V              |                    | 1AA0100 |             4 jaar geleden |
        |     2 |            2 |         0 |       0 |                   |                |                |                |                    | 1AA0100 |                            |

    Scenario: overnemen van gegevens van ouder en kind: '{naam}' is {relatieve datum} geadopteerd door '{naam}'
      Gegeven de persoon 'Tosca' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * is 5 jaar geleden geboren
      En 'Theo' is 3 jaar geleden geadopteerd door 'Tosca'
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | geslachts_aand | akte_nr |
        |     1 | P            |         0 |       0 |         000000024 | Tosca          | gisteren - 45 jaar |               6030 | V              | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |     5 jaar geleden |                    |                | 1AQ0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geslachts_aand | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     2 | P            |         0 |       0 |         000000036 | Theo           |     5 jaar geleden |                |               6029 | 1AQ0100 |                            |
        |     2 |            1 |         0 |       0 |         000000024 | Tosca          | gisteren - 45 jaar | V              |                    | 1AQ0100 |             3 jaar geleden |

    Scenario: '{naam}' is op {datum} geadopteerd door '{naam}' en '{naam}'
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      * is een man
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      * is een vrouw
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * is minderjarig
      * is geboren in Duitsland
      En 'Theo' is op 30-11-2019 geadopteerd door 'Tosca' en 'Arjan'
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | geslachts_aand | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | M              | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                    |                | 1AQ0100 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | geslachts_aand | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | V              | 1AA0100 |
        |     2 | K            |         0 |       0 |         000000036 | Theo           |                    |                | 1AQ0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geslachts_aand | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     3 | P            |         0 |       0 |         000000036 | Theo           | gisteren - 17 jaar |                |               6029 | 1AQ0100 |                            |
        |     3 |            1 |         0 |       0 |         000000024 | Tosca          |                    | V              |                    | 1AQ0100 |                   20191130 |
        |     3 |            2 |         0 |       0 |         000000012 | Arjan          |                    | M              |                    | 1AQ0100 |                   20191130 |

    Scenario: overnemen van gegevens van ouder en kind: '{naam}' is op {datum} geadopteerd door '{naam}' en '{naam}'
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een man
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      * is 18 jaar geleden geboren
      * is een vrouw
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * is minderjarig
      * is geboren in Duitsland
      En 'Theo' is op 30-11-2019 geadopteerd door 'Tosca' en 'Arjan'
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | geslachts_aand | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          | gisteren - 45 jaar |               6030 | M              | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           | gisteren - 17 jaar |                    |                | 1AQ0100 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | geslachts_aand | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |    18 jaar geleden |               6030 | V              | 1AA0100 |
        |     2 | K            |         0 |       0 |         000000036 | Theo           | gisteren - 17 jaar |                    |                | 1AQ0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geslachts_aand | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     3 | P            |         0 |       0 |         000000036 | Theo           | gisteren - 17 jaar |                |               6029 | 1AQ0100 |                            |
        |     3 |            1 |         0 |       0 |         000000024 | Tosca          |    18 jaar geleden | V              |                    | 1AQ0100 |                   20191130 |
        |     3 |            2 |         0 |       0 |         000000012 | Arjan          | gisteren - 45 jaar | M              |                    | 1AQ0100 |                   20191130 |

    Scenario: '{naam}' is in het buitenland geadopteerd door '{naam}' en '{naam}' op {datum} met document '{document beschrijving}'
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een man
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * is minderjarig
      * is geboren in Duitsland
      En 'Theo' is in het buitenland geadopteerd door 'Tosca' en 'Arjan' op 30-11-2019 met document 'ad akte 6029'
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | geslachts_aand | akte_nr | doc_beschrijving |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          | gisteren - 45 jaar |               6030 | M              | 1AA0100 |                  |
        |     1 | K            |         0 |       0 |         000000036 | Theo           | gisteren - 17 jaar |                    |                |         | ad akte 6029     |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | geslachts_aand | akte_nr | doc_beschrijving |
        |     2 | P            |         0 |       0 |         000000024 | Arjan          | gisteren - 45 jaar |               6030 | V              | 1AA0100 |                  |
        |     2 | K            |         0 |       0 |         000000036 | Theo           | gisteren - 17 jaar |                    |                |         | ad akte 6029     |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geslachts_aand | geboorte_land_code | doc_beschrijving | familie_betrek_start_datum |
        |     3 | P            |         0 |       0 |         000000036 | Theo           | gisteren - 17 jaar |                |               6029 | ad akte 6029     |                            |
        |     3 |            1 |         0 |       0 |         000000024 | Tosca          | gisteren - 45 jaar | V              |                    | ad akte 6029     |                   20191130 |
        |     3 |            2 |         0 |       0 |         000000012 | Arjan          | gisteren - 45 jaar | M              |                    | ad akte 6029     |                   20191130 |

    Scenario: '{naam}' heeft ontkend vader te zijn van '{naam}'
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * is minderjarige
      * heeft 'Arjan' en 'Tosca' als ouders
      En 'Arjan' heeft ontkend vader te zijn van 'Theo'
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |                    |               6030 | 1AA0100 |
        |     1 | K            |         0 |       1 |         000000036 | Theo           | gisteren - 17 jaar |                    | 1AA0100 |
        |     1 | K            |         0 |       0 |                   |                |                    |                    | 1AE0100 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |                    |               6030 | 1AA0100 |
        |     2 | K            |         0 |       0 |         000000036 | Theo           | gisteren - 17 jaar |                    | 1AA0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     3 | P            |         0 |       0 |         000000036 | Theo           | gisteren - 17 jaar |               6030 | 1AA0100 |                            |
        |     3 |            1 |         0 |       1 |         000000012 | Arjan          |                    |                    | 1AA0100 | gisteren - 17 jaar         |
        |     3 |            1 |         0 |       0 |                   |                |                    |                    | 1AE0100 |                            |
        |     3 |            2 |         0 |       0 |         000000024 | Tosca          |                    |                    | 1AA0100 | gisteren - 17 jaar         |

    Scenario: {relatieve datum} heeft '{naam}' het ouderschap ontkend
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * is minderjarige
      * heeft 'Arjan' en 'Tosca' als ouders
      En 4 jaar geleden heeft 'Arjan' het ouderschap ontkend
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |                    |               6030 | 1AA0100 |
        |     1 | K            |         0 |       1 |         000000036 | Theo           | gisteren - 17 jaar |                    | 1AA0100 |
        |     1 | K            |         0 |       0 |                   |                |                    |                    | 1AE0100 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | akte_nr | familie_betrek_start_datum | geldigheid_start_datum |
        |     3 | P            |         0 |       0 |         000000036 | Theo           | gisteren - 17 jaar |               6030 | 1AA0100 |                            |                        |
        |     3 |            1 |         0 |       1 |         000000012 | Arjan          |                    |                    | 1AA0100 | gisteren - 17 jaar         |                        |
        |     3 |            1 |         0 |       0 |                   |                |                    |                    | 1AE0100 |                            |         4 jaar geleden |
        |     3 |            2 |         0 |       0 |         000000024 | Tosca          |                    |                    | 1AA0100 | gisteren - 17 jaar         |                        |

  Regel: Een gerechtelijke uitspraak wordt vastgelegd in de gezagsverhouding

    Scenario: <stapdefinitie>
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * heeft 'Arjan' en 'Tosca' als ouders
      En in een gerechtelijke uitspraak is <gezag uitspraak>
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AA0100 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |
        |     2 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AA0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     3 | P            |         0 |       0 |         000000036 | Theo           |               6030 | 1AA0100 |                            |
        |     3 |            1 |         0 |       0 |         000000012 | Arjan          |                    | 1AA0100 | gisteren - 17 jaar         |
        |     3 |            2 |         0 |       0 |         000000024 | Tosca          |                    | 1AA0100 | gisteren - 17 jaar         |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_gezagsverhouding'
        | pl_id | volg_nr | minderjarig_gezag_ind | geldigheid_start_datum |
        |     3 |       0 | <indicatie gezag>     | gisteren - 1 jaar      |

      Voorbeelden:
        | gezag uitspraak                               | indicatie gezag | stapdefinitie                                                                    |
        | het gezag toegewezen aan 'Arjan'              |               1 | in een gerechtelijke uitspraak is het gezag toegewezen aan '{naam}'              |
        | het gezag toegewezen aan 'Tosca'              |               2 | in een gerechtelijke uitspraak is het gezag toegewezen aan '{naam}'              |
        | het gezag toegewezen aan beide ouders         |              12 | in een gerechtelijke uitspraak is het gezag toegewezen aan beide ouders          |
        | een voogdijinstelling tot voogd benoemd       | D               | in een gerechtelijke uitspraak is een voogdijinstelling tot voogd benoemd        |
        | een derde tot voogd benoemd                   | D               | in een gerechtelijke uitspraak is een derde tot voogd benoemd                    |
        | het gezag toegewezen aan 'Arjan' en een derde |              1D | in een gerechtelijke uitspraak is het gezag toegewezen aan '{naam}' en een derde |
        | het gezag toegewezen aan 'Tosca' en een derde |              2D | in een gerechtelijke uitspraak is het gezag toegewezen aan '{naam}' en een derde |

    Scenario: {relatievedatum} is in een gerechtelijke uitspraak het gezag toegewezen aan <gezaghebbende in stapdefinitie>
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En de persoon 'Theo' met burgerservicenummer '000000036'
      * heeft 'Arjan' en 'Tosca' als ouders
      En <relatieve datum> is in een gerechtelijke uitspraak het gezag toegewezen aan <gezaghebbende>
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          |               6030 | 1AA0100 |
        |     1 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AA0100 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |
        |     2 | K            |         0 |       0 |         000000036 | Theo           |                    | 1AA0100 |
      En heeft de persoon 'Theo' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     3 |          0 |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr | familie_betrek_start_datum |
        |     3 | P            |         0 |       0 |         000000036 | Theo           |               6030 | 1AA0100 |                            |
        |     3 |            1 |         0 |       0 |         000000012 | Arjan          |                    | 1AA0100 | gisteren - 17 jaar         |
        |     3 |            2 |         0 |       0 |         000000024 | Tosca          |                    | 1AA0100 | gisteren - 17 jaar         |
      En heeft de persoon 'Theo' de volgende rijen in tabel 'lo3_pl_gezagsverhouding'
        | pl_id | volg_nr | minderjarig_gezag_ind | geldigheid_start_datum |
        |     3 |       0 | <indicatie gezag>     | <relatieve datum>      |

      Voorbeelden:
        | relatieve datum   | gezaghebbende         | indicatie gezag | gezaghebbende in stapdefinitie |
        |    6 jaar geleden | 'Arjan'               |               1 | '{naam}'                       |
        | vorige maand      | 'Tosca'               |               2 | '{naam}'                       |
        | gisteren - 5 jaar | een voogdijinstelling | D               | een voogdijinstelling          |
        | gisteren - 4 jaar | een derde             | D               | een derde                      |
        |    2 jaar geleden | beide ouders          |              12 | beide ouders                   |
        |    2 jaar geleden | 'Arjan' en een derde  |              1D | '{naam}' en een derde          |
        |    2 jaar geleden | 'Tosca' en een derde  |              2D | '{naam}' en een derde          |

  Regel: Je kan de context wijzigen naar een eerder opgevoerde persoon

    Scenario: persoon '{naam}'
      Gegeven de persoon 'Arjan' met burgerservicenummer '000000012'
      En de persoon 'Tosca' met burgerservicenummer '000000024'
      En persoon 'Arjan'
      * is meerderjarig
      Als de sql statements gegenereerd uit de gegeven stappen zijn uitgevoerd
      Dan heeft de persoon 'Arjan' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     1 |          0 |
      En heeft de persoon 'Arjan' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_datum     | geboorte_land_code | akte_nr |
        |     1 | P            |         0 |       0 |         000000012 | Arjan          | gisteren - 45 jaar |               6030 | 1AA0100 |
      En heeft de persoon 'Tosca' de volgende rij in tabel 'lo3_pl'
        | pl_id | geheim_ind |
        |     2 |          0 |
      En heeft de persoon 'Tosca' de volgende rijen in tabel 'lo3_pl_persoon'
        | pl_id | persoon_type | stapel_nr | volg_nr | burger_service_nr | geslachts_naam | geboorte_land_code | akte_nr |
        |     2 | P            |         0 |       0 |         000000024 | Tosca          |               6030 | 1AA0100 |
