#language: nl

Functionaliteit: Tg015 - Oei


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 29                 | 0518200000583545                           |
    
    # Lg01_085 - ongehuwde vrouw, overleden, één minderjarig niet erkend kind
    Gegeven de persoon 'Ottolien' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Ottolien |
      | geslachtsnaam (02.40)           | Oei      |
      | geboortedatum (03.10)           | 19820301 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Olga     |
      | geslachtsnaam (02.40)                              | Oei      |
      | geboortedatum (03.10)                              | 19620105 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20210801 |
      | aktenummer (81.20)              | 2AA0100  |
      | ingangsdatum geldigheid (85.10) | 20210801 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20210801 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000024 |
      | voornamen (02.10)               | Olinka    |
      | geslachtsnaam (02.40)           | Oei       |
      | geboortedatum (03.10)           | 20200606  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0102   |
      | ingangsdatum geldigheid (85.10) | 20200606  |
    
    # Lg01_086 - minderjarig kind, niet erkend, moeder overleden
    Gegeven de persoon 'Olinka' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Olinka   |
      | geslachtsnaam (02.40)           | Oei      |
      | geboortedatum (03.10)           | 20200606 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0102  |
      | ingangsdatum geldigheid (85.10) | 20200606 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Ottolien  |
      | geslachtsnaam (02.40)                              | Oei       |
      | geboortedatum (03.10)                              | 19820301  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0102   |
      | ingangsdatum geldigheid (85.10)                    | 20200606  |
      | datum ingang familierechtelijke betrekking (62.10) | 20200606  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0102  |
      | ingangsdatum geldigheid (85.10) | 20200606 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20200606 |


  Scenario: Lg01_085 - ongehuwde vrouw, overleden, één minderjarig niet erkend kind
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Ottolien'
    Dan heeft 'Ottolien' geen gezaghouder

  Scenario: Lg01_086 - minderjarig kind, niet erkend, moeder overleden
    # Route: 39o
    Als 'gezag' wordt gevraagd van 'Olinka'
    Dan is het gezag over 'Olinka' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder overleden is.'
