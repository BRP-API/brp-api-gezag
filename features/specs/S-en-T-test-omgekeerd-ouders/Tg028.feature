#language: nl

@gezag-api
Functionaliteit: Tg028 - Geen voornamen, geslachtsnaam is een namenreeks


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 63                 | 0518200000583562                           |
    
    # Lg01_153 - onvolledige geboortedatum, namenreeks, gehuwd, 1 minderjarig kind met namenreeks
    Gegeven de persoon 'Mohamed' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde                 |
      | geslachtsnaam (02.40)           | Mohamed Farooq Hussein |
      | geboortedatum (03.10)           | 19700000               |
      | geboorteland (03.30)            | 6013                   |
      | geslachtsaanduiding (04.10)     | M                      |
      | beschrijving document (82.30)   | PKA                    |
      | ingangsdatum geldigheid (85.10) | 0                      |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde |
      | geslachtsnaam (02.40)                              | .      |
      | geslachtsaanduiding (04.10)                        | M      |
      | beschrijving document (82.30)                      | PK     |
      | ingangsdatum geldigheid (85.10)                    | 0      |
      | datum ingang familierechtelijke betrekking (62.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde |
      | geslachtsnaam (02.40)                              | .      |
      | geslachtsaanduiding (04.10)                        | V      |
      | beschrijving document (82.30)                      | PK     |
      | ingangsdatum geldigheid (85.10)                    | 0      |
      | datum ingang familierechtelijke betrekking (62.10) | 0      |
    En heeft een partner 'partner-1-0' met de volgende gegevens
      | naam                                                                | waarde                |
      | burgerservicenummer (01.20)                                         | 000000024             |
      | geslachtsnaam (02.40)                                               | Amina Hassan Mohammed |
      | geboortedatum (03.10)                                               | 19800600              |
      | geboorteland (03.30)                                                | 6013                  |
      | geslachtsaanduiding (04.10)                                         | V                     |
      | beschrijving document (82.30)                                       | PK                    |
      | ingangsdatum geldigheid (85.10)                                     | 19900000              |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 19900000              |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | Mogadishu             |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6013                  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                                 | waarde   |
      | gemeente van inschrijving (09.10)    | 518      |
      | land vanwaar ingeschreven (14.10)    | 7054     |
      | datum vestiging in Nederland (14.20) | 19920412 |
      | ingangsdatum geldigheid (85.10)      | 20111101 |
    En heeft een kind 'kind-1' met de volgende gegevens
      | naam                            | waarde                |
      | burgerservicenummer (01.20)     | 000000036             |
      | geslachtsnaam (02.40)           | Kamal Mohammed Farroq |
      | geboortedatum (03.10)           | 20071201              |
      | geboorteland (03.30)            | 6030                  |
      | aktenummer (81.20)              | 1AA0800               |
      | ingangsdatum geldigheid (85.10) | 20071201              |
    
    # Lg01_154 - onvolledige geboortedatum, namenreeks, gehuwd, 1 minderjarig kind met namenreeks
    Gegeven de persoon 'Amina' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde                |
      | geslachtsnaam (02.40)           | Amina Hassan Mohammed |
      | geboortedatum (03.10)           | 19780600              |
      | geboorteland (03.30)            | 6013                  |
      | geslachtsaanduiding (04.10)     | V                     |
      | beschrijving document (82.30)   | PKA                   |
      | ingangsdatum geldigheid (85.10) | 0                     |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde |
      | geslachtsnaam (02.40)                              | .      |
      | geslachtsaanduiding (04.10)                        | M      |
      | beschrijving document (82.30)                      | PK     |
      | ingangsdatum geldigheid (85.10)                    | 0      |
      | datum ingang familierechtelijke betrekking (62.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde |
      | geslachtsnaam (02.40)                              | .      |
      | geslachtsaanduiding (04.10)                        | V      |
      | beschrijving document (82.30)                      | PK     |
      | ingangsdatum geldigheid (85.10)                    | 0      |
      | datum ingang familierechtelijke betrekking (62.10) | 0      |
    En heeft een partner 'partner-1-0' met de volgende gegevens
      | naam                                                                | waarde                 |
      | burgerservicenummer (01.20)                                         | 000000012              |
      | geslachtsnaam (02.40)                                               | Mohamed Farooq Hussein |
      | geboortedatum (03.10)                                               | 19700000               |
      | geboorteland (03.30)                                                | 6013                   |
      | geslachtsaanduiding (04.10)                                         | M                      |
      | beschrijving document (82.30)                                       | PK                     |
      | ingangsdatum geldigheid (85.10)                                     | 19900000               |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 19900000               |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | Mogadishu              |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6013                   |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                                 | waarde   |
      | gemeente van inschrijving (09.10)    | 518      |
      | land vanwaar ingeschreven (14.10)    | 7054     |
      | datum vestiging in Nederland (14.20) | 19920412 |
      | ingangsdatum geldigheid (85.10)      | 20111101 |
    En heeft een kind 'kind-1' met de volgende gegevens
      | naam                            | waarde                |
      | burgerservicenummer (01.20)     | 000000036             |
      | geslachtsnaam (02.40)           | Kamal Mohammed Farroq |
      | geboortedatum (03.10)           | 20071201              |
      | geboorteland (03.30)            | 6030                  |
      | aktenummer (81.20)              | 1AA0800               |
      | ingangsdatum geldigheid (85.10) | 20071201              |
    
    # Lg01_155 - in Nederland geboren kind met namenreeks, ouders onvolledige geboortedatum
    Gegeven de persoon 'Kamal' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde                |
      | geslachtsnaam (02.40)           | Kamal Mohammed Farroq |
      | geboortedatum (03.10)           | 20071201              |
      | geboorteland (03.30)            | 6030                  |
      | geslachtsaanduiding (04.10)     | M                     |
      | aktenummer (81.20)              | 1AA0800               |
      | ingangsdatum geldigheid (85.10) | 20071201              |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde                 |
      | burgerservicenummer (01.20)                        | 000000012              |
      | geslachtsnaam (02.40)                              | Mohamed Farooq Hussein |
      | geboortedatum (03.10)                              | 19700000               |
      | geboorteland (03.30)                               | 6013                   |
      | geslachtsaanduiding (04.10)                        | M                      |
      | aktenummer (81.20)                                 | 1AA0800                |
      | ingangsdatum geldigheid (85.10)                    | 20071201               |
      | datum ingang familierechtelijke betrekking (62.10) | 20071201               |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde                |
      | burgerservicenummer (01.20)                        | 000000024             |
      | geslachtsnaam (02.40)                              | Amina Hassan Mohammed |
      | geboortedatum (03.10)                              | 19780601              |
      | geboorteland (03.30)                               | 6013                  |
      | geslachtsaanduiding (04.10)                        | V                     |
      | aktenummer (81.20)                                 | 1AA0800               |
      | ingangsdatum geldigheid (85.10)                    | 20071201              |
      | datum ingang familierechtelijke betrekking (62.10) | 20071201              |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |


  Scenario: Lg01_153 - onvolledige geboortedatum, namenreeks, gehuwd, 1 minderjarig kind met namenreeks
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Mohamed'
    Dan heeft 'Mohamed' de volgende gezagsrelaties
    * is het gezag over 'Kamal' gezamenlijk ouderlijk gezag met ouder 'Amina' en ouder 'Mohamed'

  Scenario: Lg01_154 - onvolledige geboortedatum, namenreeks, gehuwd, 1 minderjarig kind met namenreeks
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Amina'
    Dan heeft 'Amina' de volgende gezagsrelaties
    * is het gezag over 'Kamal' gezamenlijk ouderlijk gezag met ouder 'Amina' en ouder 'Mohamed'

  Scenario: Lg01_155 - in Nederland geboren kind met namenreeks, ouders onvolledige geboortedatum
    # Route: 49
    Als 'gezag' wordt gevraagd van 'Kamal'
    Dan is het gezag over 'Kamal' gezamenlijk ouderlijk gezag met ouder 'Amina' en ouder 'Mohamed'
