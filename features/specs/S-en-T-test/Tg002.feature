#language: nl

@gezag-api
Functionaliteit: Tg002 - Ouderlozen – Puntouder(s) - Geen ouders


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 1                  | 0518200000583526                           |
    
    # Lg01_007 - minderjarige asielzoeker, puntouders (onbekende ouders), geen categorie 11
    Gegeven de persoon 'Adil' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Adil     |
      | geslachtsnaam (02.40)           | Tafesh   |
      | geboortedatum (03.10)           | 20100101 |
      | geboorteland (03.30)            | 7009     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | voe      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde |
      | geslachtsnaam (02.40)                              | .      |
      | beschrijving document (82.30)                      | voe    |
      | ingangsdatum geldigheid (85.10)                    | 0      |
      | datum ingang familierechtelijke betrekking (62.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde |
      | geslachtsnaam (02.40)                              | .      |
      | beschrijving document (82.30)                      | voe    |
      | ingangsdatum geldigheid (85.10)                    | 0      |
      | datum ingang familierechtelijke betrekking (62.10) | 0      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                                 | waarde   |
      | gemeente van inschrijving (09.10)    | 518      |
      | land vanwaar ingeschreven (14.10)    | 6003     |
      | datum vestiging in Nederland (14.20) | 20200101 |
      | ingangsdatum geldigheid (85.10)      | 20200101 |
    
    # Lg01_008 - vondeling in Nederland, puntmoeder (onbekende ouder), lege categorie 03 (juridisch geen ouder), geen categorie 11
    Gegeven de persoon 'Alberta' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Alberta   |
      | geslachtsnaam (02.40)           | Vondeling |
      | geboortedatum (03.10)           | 20210101  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AA0001   |
      | ingangsdatum geldigheid (85.10) | 20210101  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | geslachtsnaam (02.40)                              | .        |
      | geslachtsaanduiding (04.10)                        | V        |
      | aktenummer (81.20)                                 | 1AA0001  |
      | ingangsdatum geldigheid (85.10)                    | 20210101 |
      | datum ingang familierechtelijke betrekking (62.10) | 20210101 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0001  |
      | ingangsdatum geldigheid (85.10) | 20210101 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20210110 |
    
    # Lg01_009 - vondeling in China, juridisch geen ouders, geen categorie 11
    Gegeven de persoon 'An' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde        |
      | voornamen (02.10)               | An            |
      | geslachtsnaam (02.40)           | Xue           |
      | geboortedatum (03.10)           | 20210101      |
      | geboorteland (03.30)            | 6022          |
      | geslachtsaanduiding (04.10)     | V             |
      | beschrijving document (82.30)   | geb.akte 6022 |
      | ingangsdatum geldigheid (85.10) | 0             |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde        |
      | beschrijving document (82.30)   | geb.akte 6022 |
      | ingangsdatum geldigheid (85.10) | 0             |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde        |
      | beschrijving document (82.30)   | geb.akte 6022 |
      | ingangsdatum geldigheid (85.10) | 0             |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                                 | waarde   |
      | gemeente van inschrijving (09.10)    | 518      |
      | land vanwaar ingeschreven (14.10)    | 6022     |
      | datum vestiging in Nederland (14.20) | 20210101 |
      | ingangsdatum geldigheid (85.10)      | 20210101 |


  Scenario: Lg01_007 - minderjarige asielzoeker, puntouders (onbekende ouders), geen categorie 11
    # Route: 3a
    Als 'gezag' wordt gevraagd van 'Adil'
    Dan is het gezag over 'Adil' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat minderjarige in het buitenland is geboren.'

  Scenario: Lg01_008 - vondeling in Nederland, puntmoeder (onbekende ouder), lege categorie 03 (juridisch geen ouder), geen categorie 11
    # Route: 38
    Als 'gezag' wordt gevraagd van 'Alberta'
    Dan is het gezag over 'Alberta' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat één of meer ouders van minderjarige onbekend zijn.'

  Scenario: Lg01_009 - vondeling in China, juridisch geen ouders, geen categorie 11
    # Route: 3a
    Als 'gezag' wordt gevraagd van 'An'
    Dan is het gezag over 'An' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat minderjarige in het buitenland is geboren.'
