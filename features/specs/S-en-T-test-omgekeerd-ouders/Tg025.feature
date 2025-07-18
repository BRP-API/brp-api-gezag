#language: nl

@deprecated @gezag-api
Functionaliteit: Tg025 - Geus-Goverwelle - Gegevens in onderzoek


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 55                 | 0518200000583558                           |
    
    # Lg01_134 - gehuwd, kinderen, in onderzoek 010300, 020000, 030310, 050610, 089999, 090000, 090300
    Gegeven de persoon 'Govert' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Govert   |
      | voorvoegsel (02.30)             | de       |
      | geslachtsnaam (02.40)           | Geus     |
      | geboortedatum (03.10)           | 19841002 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | aanduiding in onderzoek (83.10) | 10300    |
      | datum ingang onderzoek (83.20)  | 20220825 |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Gerrit   |
      | voorvoegsel (02.30)                                | de       |
      | geslachtsnaam (02.40)                              | Geus     |
      | geboortedatum (03.10)                              | 19100823 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | aanduiding in onderzoek (83.10)                    | 20310    |
      | datum ingang onderzoek (83.20)                     | 20220825 |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Geurtje  |
      | voorvoegsel (02.30)                                | van der  |
      | geslachtsnaam (02.40)                              | Plas     |
      | geboortedatum (03.10)                              | 19120901 |
      | geboorteland (03.30)                               | 0        |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | aanduiding in onderzoek (83.10)                    | 30000    |
      | datum ingang onderzoek (83.20)                     | 20220825 |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Grada-0' met de volgende gegevens
      | naam                                                                | waarde     |
      | burgerservicenummer (01.20)                                         | 000000024  |
      | voornamen (02.10)                                                   | Grada      |
      | geslachtsnaam (02.40)                                               | Goverwelle |
      | geboortedatum (03.10)                                               | 19890416   |
      | geboorteland (03.30)                                                | 6030       |
      | geslachtsaanduiding (04.10)                                         | V          |
      | aktenummer (81.20)                                                  | 3AA0102    |
      | aanduiding in onderzoek (83.10)                                     | 50610      |
      | datum ingang onderzoek (83.20)                                      | 20220825   |
      | ingangsdatum geldigheid (85.10)                                     | 20051203   |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20051203   |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518       |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030       |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | aanduiding in onderzoek (83.10)   | 89999    |
      | datum ingang onderzoek (83.20)    | 20220825 |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Gerdien' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Gerdien   |
      | voorvoegsel (02.30)             | de        |
      | geslachtsnaam (02.40)           | Geus      |
      | geboortedatum (03.10)           | 20160607  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0107   |
      | ingangsdatum geldigheid (85.10) | 20160607  |
    En heeft een kind 'Gijs' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Gijs      |
      | geslachtsnaam (02.40)           | Geus      |
      | geboortedatum (03.10)           | 20191205  |
      | geboorteland (03.30)            | 0         |
      | beschrijving document (82.30)   | ga 5010   |
      | aanduiding in onderzoek (83.10) | 90300     |
      | datum ingang onderzoek (83.20)  | 20220825  |
      | ingangsdatum geldigheid (85.10) | 20191205  |
    En heeft een kind 'Gloria' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Gloria    |
      | voorvoegsel (02.30)             | de        |
      | geslachtsnaam (02.40)           | Geus      |
      | geboortedatum (03.10)           | 20211012  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0108   |
      | aanduiding in onderzoek (83.10) | 90000     |
      | datum ingang onderzoek (83.20)  | 20220825  |
      | ingangsdatum geldigheid (85.10) | 20211012  |
    
    # Lg01_135 - gehuwd, kinderen, in onderzoek 026210, 030000, 050200, 080000, 090330
    Gegeven de persoon 'Grada' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Grada      |
      | geslachtsnaam (02.40)           | Goverwelle |
      | geboortedatum (03.10)           | 19890416   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | V          |
      | beschrijving document (82.30)   | PKA        |
      | ingangsdatum geldigheid (85.10) | 0          |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | beschrijving document (82.30)   | PK       |
      | aanduiding in onderzoek (83.10) | 20000    |
      | datum ingang onderzoek (83.20)  | 20220825 |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Graciala   |
      | geslachtsnaam (02.40)                              | Goverwelle |
      | geboortedatum (03.10)                              | 19640223   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | V          |
      | beschrijving document (82.30)                      | PK         |
      | aanduiding in onderzoek (83.10)                    | 36210      |
      | datum ingang onderzoek (83.20)                     | 20220825   |
      | ingangsdatum geldigheid (85.10)                    | 0          |
      | datum ingang familierechtelijke betrekking (62.10) | 0          |
    En heeft een partner 'Govert-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Govert    |
      | voorvoegsel (02.30)                                                 | de        |
      | geslachtsnaam (02.40)                                               | Geus      |
      | geboortedatum (03.10)                                               | 19840210  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0102   |
      | aanduiding in onderzoek (83.10)                                     | 50200     |
      | datum ingang onderzoek (83.20)                                      | 20220825  |
      | ingangsdatum geldigheid (85.10)                                     | 20151203  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20151203  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | aanduiding in onderzoek (83.10)   | 80000    |
      | datum ingang onderzoek (83.20)    | 20220825 |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Gerdien' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Gerdien   |
      | voorvoegsel (02.30)             | de        |
      | geslachtsnaam (02.40)           | Geus      |
      | geboortedatum (03.10)           | 20160607  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0107   |
      | ingangsdatum geldigheid (85.10) | 20160607  |
    En heeft een kind 'Gijs' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Gijs      |
      | geslachtsnaam (02.40)           | Geus      |
      | geboortedatum (03.10)           | 20191205  |
      | geboorteland (03.30)            | 0         |
      | beschrijving document (82.30)   | ga 5010   |
      | aanduiding in onderzoek (83.10) | 90330     |
      | datum ingang onderzoek (83.20)  | 20220825  |
      | ingangsdatum geldigheid (85.10) | 20191205  |
    En heeft een kind 'Gloria' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Gloria    |
      | voorvoegsel (02.30)             | de        |
      | geslachtsnaam (02.40)           | Geus      |
      | geboortedatum (03.10)           | 20211012  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0108   |
      | ingangsdatum geldigheid (85.10) | 20211012  |
    
    # Lg01_136 - kind geboren tijdens huwelijk, in onderzoek 010310, 026210, 030210, 080920, 613210, historische indicatie gezag
    Gegeven de persoon 'Gerdien' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Gerdien  |
      | voorvoegsel (02.30)             | de       |
      | geslachtsnaam (02.40)           | Geus     |
      | geboortedatum (03.10)           | 20160607 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0107  |
      | aanduiding in onderzoek (83.10) | 10310    |
      | datum ingang onderzoek (83.20)  | 20220825 |
      | ingangsdatum geldigheid (85.10) | 20160607 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde     |
      | burgerservicenummer (01.20)                        | 000000024  |
      | voornamen (02.10)                                  | Grada      |
      | geslachtsnaam (02.40)                              | Goverwelle |
      | geboortedatum (03.10)                              | 19890416   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | V          |
      | aktenummer (81.20)                                 | 1AA0107    |
      | aanduiding in onderzoek (83.10)                    | 20210      |
      | datum ingang onderzoek (83.20)                     | 20220825   |
      | ingangsdatum geldigheid (85.10)                    | 20160607   |
      | datum ingang familierechtelijke betrekking (62.10) | 20160607   |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Govert    |
      | voorvoegsel (02.30)                                | de        |
      | geslachtsnaam (02.40)                              | Geus      |
      | geboortedatum (03.10)                              | 19841002  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0107   |
      | aanduiding in onderzoek (83.10)                    | 36210     |
      | datum ingang onderzoek (83.20)                     | 20220825  |
      | ingangsdatum geldigheid (85.10)                    | 20160607  |
      | datum ingang familierechtelijke betrekking (62.10) | 20160607  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | aanduiding in onderzoek (83.10)   | 80920    |
      | datum ingang onderzoek (83.20)    | 20220825 |
      | ingangsdatum geldigheid (85.10)   | 20160607 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | D                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | aanduiding in onderzoek (83.10)      | 113210                      |
      | datum ingang onderzoek (83.20)       | 20220825                    |
      | ingangsdatum geldigheid (85.10)      | 20220801                    |
    En gezagsverhouding is gewijzigd naar de volgende gegevens
      | naam                            | waarde   |
      | ingangsdatum geldigheid (85.10) | 20220825 |
    
    # Lg01_137 - kind geboren tijdens huwelijk in onderzoek 010330 (voorvoegsel ontbreekt), 040510, 081420, 113210
    Gegeven de persoon 'Gijs' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Gijs     |
      | geslachtsnaam (02.40)           | Geus     |
      | geboortedatum (03.10)           | 20191205 |
      | geboorteland (03.30)            | 0        |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | ga 5010  |
      | aanduiding in onderzoek (83.10) | 10330    |
      | datum ingang onderzoek (83.20)  | 20220825 |
      | ingangsdatum geldigheid (85.10) | 20191205 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Govert    |
      | voorvoegsel (02.30)                                | de        |
      | geslachtsnaam (02.40)                              | Geus      |
      | geboortedatum (03.10)                              | 19841002  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | ga 5010   |
      | ingangsdatum geldigheid (85.10)                    | 20191205  |
      | datum ingang familierechtelijke betrekking (62.10) | 20191205  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | burgerservicenummer (01.20)                        | 000000024  |
      | voornamen (02.10)                                  | Grada      |
      | geslachtsnaam (02.40)                              | Goverwelle |
      | geboortedatum (03.10)                              | 19890416   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | V          |
      | beschrijving document (82.30)                      | ga 5010    |
      | ingangsdatum geldigheid (85.10)                    | 20191205   |
      | datum ingang familierechtelijke betrekking (62.10) | 20191205   |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                                 | waarde   |
      | gemeente van inschrijving (09.10)    | 518      |
      | land vanwaar ingeschreven (14.10)    | 0        |
      | datum vestiging in Nederland (14.20) | 20191210 |
      | aanduiding in onderzoek (83.10)      | 81420    |
      | datum ingang onderzoek (83.20)       | 20220825 |
      | ingangsdatum geldigheid (85.10)      | 20191205 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 2                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | aanduiding in onderzoek (83.10)      | 113210                      |
      | datum ingang onderzoek (83.20)       | 20220825                    |
      | ingangsdatum geldigheid (85.10)      | 20220801                    |
    
    # Lg01_138 - kind geboren tijdens huwelijk, overleden, gezag is niet van toepassing
    Gegeven de persoon 'Gloria' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Gloria   |
      | voorvoegsel (02.30)             | de       |
      | geslachtsnaam (02.40)           | Geus     |
      | geboortedatum (03.10)           | 20211012 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0108  |
      | aanduiding in onderzoek (83.10) | 18120    |
      | datum ingang onderzoek (83.20)  | 20220825 |
      | ingangsdatum geldigheid (85.10) | 20211012 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde     |
      | burgerservicenummer (01.20)                        | 000000024  |
      | voornamen (02.10)                                  | Grada      |
      | geslachtsnaam (02.40)                              | Goverwelle |
      | geboortedatum (03.10)                              | 19890416   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | V          |
      | aktenummer (81.20)                                 | 1AA0108    |
      | aanduiding in onderzoek (83.10)                    | 28120      |
      | datum ingang onderzoek (83.20)                     | 20220825   |
      | ingangsdatum geldigheid (85.10)                    | 20211012   |
      | datum ingang familierechtelijke betrekking (62.10) | 20211012   |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Govert    |
      | voorvoegsel (02.30)                                | de        |
      | geslachtsnaam (02.40)                              | Geus      |
      | geboortedatum (03.10)                              | 19841002  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0108   |
      | aanduiding in onderzoek (83.10)                    | 38120     |
      | datum ingang onderzoek (83.20)                     | 20220825  |
      | ingangsdatum geldigheid (85.10)                    | 20211012  |
      | datum ingang familierechtelijke betrekking (62.10) | 20211012  |
    En is overleden met de volgende gegevens
      | naam                            | waarde                  |
      | datum overlijden (08.10)        | 20220201                |
      | beschrijving document (82.30)   | kennisgeving ziekenhuis |
      | aanduiding in onderzoek (83.10) | 60000                   |
      | datum ingang onderzoek (83.20)  | 20220825                |
      | ingangsdatum geldigheid (85.10) | 20220201                |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20220201 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20211012 |


  Scenario: Lg01_134 - gehuwd, kinderen, in onderzoek 010300, 020000, 030310, 050610, 089999, 090000, 090300
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Govert'
    Dan heeft 'Govert' de volgende gezagsrelaties
    * is het gezag over 'Gerdien' gezamenlijk ouderlijk gezag met ouder 'Govert' en ouder 'Grada'
    En is het gezag in onderzoek

  Scenario: Lg01_135 - gehuwd, kinderen, in onderzoek 026210, 030000, 050200, 080000, 090330
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Grada'
    Dan heeft 'Grada' de volgende gezagsrelaties
    * is het gezag over 'Gerdien' gezamenlijk ouderlijk gezag met ouder 'Govert' en ouder 'Grada'
    En is het gezag in onderzoek
    * is het gezag over 'Gijs' eenhoofdig ouderlijk gezag met ouder 'Grada'
    En is het gezag in onderzoek

  Scenario: Lg01_136 - kind geboren tijdens huwelijk, in onderzoek 010310, 026210, 030210, 080920, 613210, historische indicatie gezag
    # Route: 49i
    Als 'gezag' wordt gevraagd van 'Gerdien'
    Dan is het gezag over 'Gerdien' gezamenlijk ouderlijk gezag met ouder 'Govert' en ouder 'Grada'
    En is het gezag in onderzoek

  Scenario: Lg01_137 - kind geboren tijdens huwelijk in onderzoek 010330 (voorvoegsel ontbreekt), 040510, 081420, 113210
    # Route: 3ai
    Als 'gezag' wordt gevraagd van 'Gijs'
    Dan is het gezag over 'Gijs' eenhoofdig ouderlijk gezag met ouder 'Grada'
    En is het gezag in onderzoek

  Scenario: Lg01_138 - kind geboren tijdens huwelijk, overleden, gezag is niet van toepassing
    # Route: 2o
    Als 'gezag' wordt gevraagd van 'Gloria'
    Dan heeft 'Gloria' geen gezaghouder
