#language: nl

@deprecated @gezag-api
Functionaliteit: Tg021 - Doornenbal-Doodewaard


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 45                 | 0518200000583553                           |
    
    # Lg01_119 - geregistreerd partnerschap omgezet in huwelijk
    Gegeven de persoon 'Daniel' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Daniel     |
      | geslachtsnaam (02.40)           | Doornenbal |
      | geboortedatum (03.10)           | 19730301   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | M          |
      | beschrijving document (82.30)   | PKA        |
      | ingangsdatum geldigheid (85.10) | 0          |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Diederick  |
      | geslachtsnaam (02.40)                              | Doornenbal |
      | geboortedatum (03.10)                              | 19430601   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | M          |
      | beschrijving document (82.30)                      | PK         |
      | ingangsdatum geldigheid (85.10)                    | 0          |
      | datum ingang familierechtelijke betrekking (62.10) | 0          |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Daatje   |
      | voorvoegsel (02.30)                                | van      |
      | geslachtsnaam (02.40)                              | Dorp     |
      | geboortedatum (03.10)                              | 19420301 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Delilah-0' met de volgende gegevens
      | naam                                                                | waarde     |
      | burgerservicenummer (01.20)                                         | 000000024  |
      | voornamen (02.10)                                                   | Delilah    |
      | voorvoegsel (02.30)                                                 | van        |
      | geslachtsnaam (02.40)                                               | Doodewaard |
      | geboortedatum (03.10)                                               | 19741201   |
      | geboorteland (03.30)                                                | 6030       |
      | geslachtsaanduiding (04.10)                                         | V          |
      | aktenummer (81.20)                                                  | 5AA0102    |
      | ingangsdatum geldigheid (85.10)                                     | 20021201   |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20021201   |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518       |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030       |
    En partner 'Delilah-0' is gewijzigd naar de volgende gegevens
      | naam                                                                | waarde           |
      | burgerservicenummer (01.20)                                         | 000000024        |
      | voornamen (02.10)                                                   | Delilah          |
      | voorvoegsel (02.30)                                                 | van              |
      | geslachtsnaam (02.40)                                               | Doodewaard       |
      | geboortedatum (03.10)                                               | 19741201         |
      | geboorteland (03.30)                                                | 6030             |
      | geslachtsaanduiding (04.10)                                         | V                |
      | aktenummer (81.20)                                                  | 3AA0110          |
      | ingangsdatum geldigheid (85.10)                                     | morgen - 14 jaar |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | morgen - 14 jaar |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518             |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030             |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_120 - geregistreerd partnerschap omgezet in huwelijk
    Gegeven de persoon 'Delilah' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Delilah    |
      | voorvoegsel (02.30)             | van        |
      | geslachtsnaam (02.40)           | Doodewaard |
      | geboortedatum (03.10)           | 19741201   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | V          |
      | beschrijving document (82.30)   | PKA        |
      | ingangsdatum geldigheid (85.10) | 0          |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Dolf       |
      | voorvoegsel (02.30)                                | van        |
      | geslachtsnaam (02.40)                              | Doodewaard |
      | geboortedatum (03.10)                              | 19490801   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | M          |
      | beschrijving document (82.30)                      | PK         |
      | ingangsdatum geldigheid (85.10)                    | 0          |
      | datum ingang familierechtelijke betrekking (62.10) | 0          |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Dina       |
      | geslachtsnaam (02.40)                              | Dusseldorf |
      | geboortedatum (03.10)                              | 19500901   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | V          |
      | beschrijving document (82.30)                      | PK         |
      | ingangsdatum geldigheid (85.10)                    | 0          |
      | datum ingang familierechtelijke betrekking (62.10) | 0          |
    En heeft een partner 'Daniel-0' met de volgende gegevens
      | naam                                                                | waarde     |
      | burgerservicenummer (01.20)                                         | 000000012  |
      | voornamen (02.10)                                                   | Daniel     |
      | geslachtsnaam (02.40)                                               | Doornenbal |
      | geboortedatum (03.10)                                               | 19730301   |
      | geboorteland (03.30)                                                | 6030       |
      | geslachtsaanduiding (04.10)                                         | M          |
      | aktenummer (81.20)                                                  | 5AA0102    |
      | ingangsdatum geldigheid (85.10)                                     | 20021201   |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20021201   |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518       |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030       |
    En partner 'Daniel-0' is gewijzigd naar de volgende gegevens
      | naam                                                                | waarde           |
      | burgerservicenummer (01.20)                                         | 000000012        |
      | voornamen (02.10)                                                   | Daniel           |
      | geslachtsnaam (02.40)                                               | Doornenbal       |
      | geboortedatum (03.10)                                               | 19730301         |
      | geboorteland (03.30)                                                | 6030             |
      | geslachtsaanduiding (04.10)                                         | M                |
      | aktenummer (81.20)                                                  | 3AA0110          |
      | ingangsdatum geldigheid (85.10)                                     | morgen - 14 jaar |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | morgen - 14 jaar |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518             |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030             |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Daan' met de volgende gegevens
      | naam                            | waarde           |
      | burgerservicenummer (01.20)     | 000000036        |
      | voornamen (02.10)               | Daan             |
      | geslachtsnaam (02.40)           | Doornenbal       |
      | geboortedatum (03.10)           | morgen - 18 jaar |
      | geboorteland (03.30)            | 6030             |
      | aktenummer (81.20)              | 1AA0101          |
      | ingangsdatum geldigheid (85.10) | morgen - 18 jaar |
    
    # Lg01_121 - ouders geregistreerd partnerschap vóór 01-04-2014, alleen Ouder1 gevuld. Na geboorte kind hebben ouders geregistreerd partnerschap omgezet in een huwelijk.
    Gegeven de persoon 'Daan' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde           |
      | voornamen (02.10)               | Daan             |
      | geslachtsnaam (02.40)           | Doornenbal       |
      | geboortedatum (03.10)           | morgen - 18 jaar |
      | geboorteland (03.30)            | 6030             |
      | geslachtsaanduiding (04.10)     | M                |
      | aktenummer (81.20)              | 1AA0101          |
      | ingangsdatum geldigheid (85.10) | morgen - 18 jaar |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde           |
      | aktenummer (81.20)              | 1AA0101          |
      | ingangsdatum geldigheid (85.10) | morgen - 18 jaar |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde           |
      | burgerservicenummer (01.20)                        | 000000024        |
      | voornamen (02.10)                                  | Daan             |
      | voorvoegsel (02.30)                                | van              |
      | geslachtsnaam (02.40)                              | Doodewaard       |
      | geboortedatum (03.10)                              | 19741201         |
      | geboorteland (03.30)                               | 6030             |
      | geslachtsaanduiding (04.10)                        | V                |
      | aktenummer (81.20)                                 | 1AA0101          |
      | ingangsdatum geldigheid (85.10)                    | morgen - 18 jaar |
      | datum ingang familierechtelijke betrekking (62.10) | morgen - 18 jaar |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |


  Scenario: Lg01_119 - geregistreerd partnerschap omgezet in huwelijk
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Daniel'
    Dan heeft 'Daniel' de volgende gezagsrelaties
    * is het gezag over 'Daan' gezamenlijk gezag met ouder 'Delilah' en derde 'Daniel'

  Scenario: Lg01_120 - geregistreerd partnerschap omgezet in huwelijk
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Delilah'
    Dan heeft 'Delilah' de volgende gezagsrelaties
    * is het gezag over 'Daan' gezamenlijk gezag met ouder 'Delilah' en derde 'Daniel'

  Scenario: Lg01_121 - ouders geregistreerd partnerschap vóór 01-04-2014, alleen Ouder1 gevuld. Na geboorte kind hebben ouders geregistreerd partnerschap omgezet in een huwelijk.
    # Route: 41
    Als 'gezag' wordt gevraagd van 'Daan'
    Dan is het gezag over 'Daan' gezamenlijk gezag met ouder 'Delilah' en derde 'Daniel'
