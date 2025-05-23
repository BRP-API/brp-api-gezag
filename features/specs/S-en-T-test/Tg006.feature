#language: nl

@deprecated @gezag-api
Functionaliteit: Tg006 - Elbertsen-Eizenga


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 9                  | 0518200000583532                           |
    
    # Lg01_024 - gehuwd, echtgenoot overleden, 2 minderjarige kinderen
    Gegeven de persoon 'Erica' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Erica     |
      | geslachtsnaam (02.40)           | Elbertsen |
      | geboortedatum (03.10)           | 19801001  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Evelien  |
      | voorvoegsel (02.30)                                | van      |
      | geslachtsnaam (02.40)                              | Eldik    |
      | geboortedatum (03.10)                              | 19551001 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 19801001 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Ernst     |
      | geslachtsnaam (02.40)                              | Elbertsen |
      | geboortedatum (03.10)                              | 19501001  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 19801001  |
    En heeft een partner 'Evert' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Evert     |
      | geslachtsnaam (02.40)                                               | Eizenga   |
      | geboortedatum (03.10)                                               | 19781001  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20060601  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20060601  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Evert' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000024 |
      | voornamen (02.10)                                             | Evert     |
      | geslachtsnaam (02.40)                                         | Eizenga   |
      | geboortedatum (03.10)                                         | 19781001  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | M         |
      | aktenummer (81.20)                                            | 2AA0050   |
      | ingangsdatum geldigheid (85.10)                               | 20200202  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20200202  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | O         |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Emilia' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Emilia    |
      | geslachtsnaam (02.40)           | Eizenga   |
      | geboortedatum (03.10)           | 20111001  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0150   |
      | ingangsdatum geldigheid (85.10) | 20111001  |
    En heeft een kind 'Eline' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Eline     |
      | geslachtsnaam (02.40)           | Eizenga   |
      | geboortedatum (03.10)           | 20131001  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0150   |
      | ingangsdatum geldigheid (85.10) | 20131001  |
    
    # Lg01_025 - gehuwd, 2 minderjarige kinderen, overleden
    Gegeven de persoon 'Evert' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Evert    |
      | geslachtsnaam (02.40)           | Eizenga  |
      | geboortedatum (03.10)           | 19781001 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Elsbeth    |
      | geslachtsnaam (02.40)                              | Ettikhoven |
      | geboortedatum (03.10)                              | 19501001   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | V          |
      | beschrijving document (82.30)                      | PK         |
      | ingangsdatum geldigheid (85.10)                    | 0          |
      | datum ingang familierechtelijke betrekking (62.10) | 19781001   |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Elbert   |
      | geslachtsnaam (02.40)                              | Eizenga  |
      | geboortedatum (03.10)                              | 19481001 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 19781001 |
    En heeft een partner 'Erica' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Erica     |
      | geslachtsnaam (02.40)                                               | Elbertsen |
      | geboortedatum (03.10)                                               | 19801001  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20060601  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20060601  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20200202 |
      | aktenummer (81.20)              | 2AA0050  |
      | ingangsdatum geldigheid (85.10) | 20200202 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20200202 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Emilia' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Emilia    |
      | geslachtsnaam (02.40)           | Eizenga   |
      | geboortedatum (03.10)           | 20111001  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0150   |
      | ingangsdatum geldigheid (85.10) | 20111001  |
    En heeft een kind 'Eline' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Eline     |
      | geslachtsnaam (02.40)           | Eizenga   |
      | geboortedatum (03.10)           | 20131001  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0150   |
      | ingangsdatum geldigheid (85.10) | 20131001  |
    
    # Lg01_026 - minderjarig kind, geboren tijdens huwelijk ouders, vader (Ouder2) overleden, onder voogdij D
    Gegeven de persoon 'Eline' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Eline    |
      | geslachtsnaam (02.40)           | Eizenga  |
      | geboortedatum (03.10)           | 20131001 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0150  |
      | ingangsdatum geldigheid (85.10) | 20131001 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Erica     |
      | geslachtsnaam (02.40)                              | Elbertsen |
      | geboortedatum (03.10)                              | 19801001  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0150   |
      | ingangsdatum geldigheid (85.10)                    | 20131001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20131001  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Evert     |
      | geslachtsnaam (02.40)                              | Eizenga   |
      | geboortedatum (03.10)                              | 19781001  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0150   |
      | ingangsdatum geldigheid (85.10)                    | 20131001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20131001  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20131001 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | D                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20210101                    |
    
    # Lg01_027 - minderjarig kind, geboren tijdens huwelijk ouders, vader (Ouder1) overleden, geen categorie 11
    Gegeven de persoon 'Emilia' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Emilia   |
      | geslachtsnaam (02.40)           | Eizenga  |
      | geboortedatum (03.10)           | 20111001 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0150  |
      | ingangsdatum geldigheid (85.10) | 20111001 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Evert     |
      | geslachtsnaam (02.40)                              | Eizenga   |
      | geboortedatum (03.10)                              | 19781001  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0150   |
      | ingangsdatum geldigheid (85.10)                    | 20111001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20111001  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Erica     |
      | geslachtsnaam (02.40)                              | Elbertsen |
      | geboortedatum (03.10)                              | 19801001  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0150   |
      | ingangsdatum geldigheid (85.10)                    | 20111001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20111001  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |


  Scenario: Lg01_024 - gehuwd, echtgenoot overleden, 2 minderjarige kinderen
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Erica'
    Dan is het gezag over 'Emilia' eenhoofdig ouderlijk gezag met ouder 'Erica'

  Scenario: Lg01_025 - gehuwd, 2 minderjarige kinderen, overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Evert'
    Dan heeft 'Evert' geen gezaghouder

  Scenario: Lg01_026 - minderjarig kind, geboren tijdens huwelijk ouders, vader (Ouder2) overleden, onder voogdij D
    # Route: 6
    Als 'gezag' wordt gevraagd van 'Eline'
    Dan is het gezag over 'Eline' voogdij

  Scenario: Lg01_027 - minderjarig kind, geboren tijdens huwelijk ouders, vader (Ouder1) overleden, geen categorie 11
    # Route: 46
    Als 'gezag' wordt gevraagd van 'Emilia'
    Dan is het gezag over 'Emilia' eenhoofdig ouderlijk gezag met ouder 'Erica'
