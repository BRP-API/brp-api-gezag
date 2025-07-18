#language: nl

@deprecated @gezag-api
Functionaliteit: Tg017 - Rooyakkers-Ros - Getrouwd met kind in Cat.11 1D


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 37                 | 0518200000583549                           |
    
    # Lg01_097 - gehuwd, 1 minderjarig kind
    Gegeven de persoon 'Reinier' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Reinier    |
      | geslachtsnaam (02.40)           | Rooyakkers |
      | geboortedatum (03.10)           | 19700201   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | M          |
      | beschrijving document (82.30)   | PKA        |
      | ingangsdatum geldigheid (85.10) | 0          |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Roberta  |
      | geslachtsnaam (02.40)                              | Raasdonk |
      | geboortedatum (03.10)                              | 19430201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 19700201 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Ronald     |
      | geslachtsnaam (02.40)                              | Rooyakkers |
      | geboortedatum (03.10)                              | 19400501   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | M          |
      | beschrijving document (82.30)                      | PK         |
      | ingangsdatum geldigheid (85.10)                    | 0          |
      | datum ingang familierechtelijke betrekking (62.10) | 19700201   |
    En heeft een partner 'Rianne-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Rianne    |
      | geslachtsnaam (02.40)                                               | Ros       |
      | geboortedatum (03.10)                                               | 19821101  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20081101  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20081101  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Raghnild' met de volgende gegevens
      | naam                            | waarde     |
      | burgerservicenummer (01.20)     | 000000036  |
      | voornamen (02.10)               | Raghnild   |
      | geslachtsnaam (02.40)           | Rooyakkers |
      | geboortedatum (03.10)           | 20120501   |
      | geboorteland (03.30)            | 6030       |
      | aktenummer (81.20)              | 1AA0104    |
      | ingangsdatum geldigheid (85.10) | 20120501   |
    
    # Lg01_098 - gehuwd, 1 minderjarig kind, gerechtelijke uitspraak 1D
    Gegeven de persoon 'Rianne' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Rianne   |
      | geslachtsnaam (02.40)           | Ros      |
      | geboortedatum (03.10)           | 19821101 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Ria      |
      | geslachtsnaam (02.40)                              | Robberts |
      | geboortedatum (03.10)                              | 19550601 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 19821101 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Rijk     |
      | geslachtsnaam (02.40)                              | Ros      |
      | geboortedatum (03.10)                              | 19531201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 19821101 |
    En heeft een partner 'Reinier-0' met de volgende gegevens
      | naam                                                                | waarde     |
      | burgerservicenummer (01.20)                                         | 000000012  |
      | voornamen (02.10)                                                   | Reinier    |
      | geslachtsnaam (02.40)                                               | Rooyakkers |
      | geboortedatum (03.10)                                               | 19700201   |
      | geboorteland (03.30)                                                | 6030       |
      | geslachtsaanduiding (04.10)                                         | M          |
      | aktenummer (81.20)                                                  | 3AA0100    |
      | ingangsdatum geldigheid (85.10)                                     | 20081101   |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20081101   |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518       |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030       |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Raghnild' met de volgende gegevens
      | naam                            | waarde     |
      | burgerservicenummer (01.20)     | 000000036  |
      | voornamen (02.10)               | Raghnild   |
      | geslachtsnaam (02.40)           | Rooyakkers |
      | geboortedatum (03.10)           | 20120501   |
      | geboorteland (03.30)            | 6030       |
      | aktenummer (81.20)              | 1AA0104    |
      | ingangsdatum geldigheid (85.10) | 20120501   |
    
    # Lg01_099 - ouders gehuwd, indicatie gezag 1D
    Gegeven de persoon 'Raghnild' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Raghnild   |
      | geslachtsnaam (02.40)           | Rooyakkers |
      | geboortedatum (03.10)           | 20120501   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | V          |
      | aktenummer (81.20)              | 1AA0104    |
      | ingangsdatum geldigheid (85.10) | 20120501   |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Rianne    |
      | geslachtsnaam (02.40)                              | Ros       |
      | geboortedatum (03.10)                              | 20120501  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0104   |
      | ingangsdatum geldigheid (85.10)                    | 20120501  |
      | datum ingang familierechtelijke betrekking (62.10) | 20120501  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | burgerservicenummer (01.20)                        | 000000012  |
      | voornamen (02.10)                                  | Reinier    |
      | geslachtsnaam (02.40)                              | Rooyakkers |
      | geboortedatum (03.10)                              | 20120501   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | M          |
      | aktenummer (81.20)                                 | 1AA0104    |
      | ingangsdatum geldigheid (85.10)                    | 20120501   |
      | datum ingang familierechtelijke betrekking (62.10) | 20120501   |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 1D                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20200301                    |


  Scenario: Lg01_097 - gehuwd, 1 minderjarig kind
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Reinier'
    Dan heeft 'Reinier' geen gezaghouder

  Scenario: Lg01_098 - gehuwd, 1 minderjarig kind, gerechtelijke uitspraak 1D
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Rianne'
    Dan heeft 'Rianne' de volgende gezagsrelaties
    * is het gezag over 'Raghnild' gezamenlijk gezag met ouder 'Rianne' en een onbekende derde

  Scenario: Lg01_099 - ouders gehuwd, indicatie gezag 1D
    # Route: 4
    Als 'gezag' wordt gevraagd van 'Raghnild'
    Dan is het gezag over 'Raghnild' gezamenlijk gezag met ouder 'Rianne' en een onbekende derde
