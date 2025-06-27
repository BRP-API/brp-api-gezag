#language: nl

@deprecated @gezag-api
Functionaliteit: Tg039 - Tubbergen-Tintelen – 2 vrouwen met geregistreerd partnerschap en daarbinnen 4 kinderen. Beide vrouwen zijn geboortemoeder van 2 kinderen. 1 moeder is overleden


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 79                 | 0518200000583570                           |

    # Lg01_209 - geregistreerd partnerschap met vrouw, partner overleden, minderjarig kind van bekende donor
    Gegeven de persoon 'Tina' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Tina      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Tubbergen |
      | geboortedatum (03.10)           | 19800201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Teunis    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Tubbergen |
      | geboortedatum (03.10)                              | 19520401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Toos     |
      | geslachtsnaam (02.40)                              | Triest   |
      | geboortedatum (03.10)                              | 19500901 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Trudy-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Trudy     |
      | voorvoegsel (02.30)                                                 | van       |
      | geslachtsnaam (02.40)                                               | Tintelen  |
      | geboortedatum (03.10)                                               | 19810301  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 5AA0200   |
      | ingangsdatum geldigheid (85.10)                                     | 20200201  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20200201  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Trudy-0' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000024 |
      | voornamen (02.10)                                             | Trudy     |
      | voorvoegsel (02.30)                                           | van       |
      | geslachtsnaam (02.40)                                         | Tintelen  |
      | geboortedatum (03.10)                                         | 19810301  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | V         |
      | aktenummer (81.20)                                            | 2AA0100   |
      | ingangsdatum geldigheid (85.10)                               | 20230401  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20230401  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | O         |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Trudetty' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Trudetty  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Tubbergen |
      | geboortedatum (03.10)           | 20230201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0301   |
      | ingangsdatum geldigheid (85.10) | 20230201  |
    En heeft een kind 'Trinette' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Trinette  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Tubbergen |
      | geboortedatum (03.10)           | 20230201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0300   |
      | ingangsdatum geldigheid (85.10) | 20230201  |
    
    # Lg01_210 - geregistreerd partnerschap met vrouw, overleden
    Gegeven de persoon 'Trudy' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Trudy    |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Tintelen |
      | geboortedatum (03.10)           | 19810301 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Tobias   |
      | voorvoegsel (02.30)                                | van      |
      | geslachtsnaam (02.40)                              | Tintelen |
      | geboortedatum (03.10)                              | 19510304 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Teuntje   |
      | geslachtsnaam (02.40)                              | Tollenaar |
      | geboortedatum (03.10)                              | 19520301  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Tina-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Tina      |
      | voorvoegsel (02.30)                                                 | van       |
      | geslachtsnaam (02.40)                                               | Tubbergen |
      | geboortedatum (03.10)                                               | 19800201  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 5AA0200   |
      | ingangsdatum geldigheid (85.10)                                     | 20200201  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20200201  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20230401 |
      | aktenummer (81.20)              | 2AA0100  |
      | ingangsdatum geldigheid (85.10) | 20230401 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20230401 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Tom' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Tom       |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Tintelen  |
      | geboortedatum (03.10)           | 20221001  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0401   |
      | ingangsdatum geldigheid (85.10) | 20221001  |
    En heeft een kind 'Tim' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Tim       |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Tintelen  |
      | geboortedatum (03.10)           | 20221001  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0400   |
      | ingangsdatum geldigheid (85.10) | 20221001  |
    
    # Lg01_211 - juridisch alleen moeder, geregistreerd partner van moeder overleden, moeder categorie 02
    Gegeven de persoon 'Trinette' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Trinette  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Tubbergen |
      | geboortedatum (03.10)           | 20230201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AA0300   |
      | ingangsdatum geldigheid (85.10) | 20230201  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0300  |
      | ingangsdatum geldigheid (85.10) | 20230201 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Tina      |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Tubbergen |
      | geboortedatum (03.10)                              | 19800201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0300   |
      | ingangsdatum geldigheid (85.10)                    | 20230201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20230201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20230201 |
    
    # Lg01_212 - juridisch alleen moeder, geregistreerd partner van moeder overleden, moeder categorie 03
    Gegeven de persoon 'Trudetty' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Trudetty  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Tubbergen |
      | geboortedatum (03.10)           | 20230201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AA0301   |
      | ingangsdatum geldigheid (85.10) | 20230201  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Tina      |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Tubbergen |
      | geboortedatum (03.10)                              | 19800201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0301   |
      | ingangsdatum geldigheid (85.10)                    | 20230201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20230201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0301  |
      | ingangsdatum geldigheid (85.10) | 20230201 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20230201 |
    
    # Lg01_213 - juridisch alleen moeder, moeder overleden, geregistreerd partner moeder geen ouder wel gezag, moeder categorie 02
    Gegeven de persoon 'Tim' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Tim      |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Tintelen |
      | geboortedatum (03.10)           | 20221001 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0400  |
      | ingangsdatum geldigheid (85.10) | 20221001 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0400  |
      | ingangsdatum geldigheid (85.10) | 20221001 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Trudy     |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Tintelen  |
      | geboortedatum (03.10)                              | 19810301  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0400   |
      | ingangsdatum geldigheid (85.10)                    | 20221001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20221001  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20221001 |
    
    # Lg01_214 - juridisch alleen moeder, moeder overleden, geregistreerd partner moeder geen ouder wel gezag, moeder categorie 03
    Gegeven de persoon 'Tom' met burgerservicenummer '000000073'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Tom      |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Tintelen |
      | geboortedatum (03.10)           | 20221001 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0401  |
      | ingangsdatum geldigheid (85.10) | 20221001 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Trudy     |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Tintelen  |
      | geboortedatum (03.10)                              | 19810301  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0401   |
      | ingangsdatum geldigheid (85.10)                    | 20221001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20221001  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0401  |
      | ingangsdatum geldigheid (85.10) | 20221001 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20221001 |


  Scenario: Lg01_209 - geregistreerd partnerschap met vrouw, partner overleden, minderjarig kind van bekende donor
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Tina'
    Dan heeft 'Tina' de volgende gezagsrelaties
    * is het gezag over 'Trinette' eenhoofdig ouderlijk gezag met ouder 'Tina'
    * is het gezag over 'Trudetty' eenhoofdig ouderlijk gezag met ouder 'Tina'
    * is het gezag over 'Tim' voogdij met derde 'Tina'
    * is het gezag over 'Tom' voogdij met derde 'Tina'

  Scenario: Lg01_210 - geregistreerd partnerschap met vrouw, overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Trudy'
    Dan heeft 'Trudy' geen gezaghouder

  Scenario: Lg01_211 - juridisch alleen moeder, geregistreerd partner van moeder overleden, moeder categorie 02
    # Route: 42no1
    Als 'gezag' wordt gevraagd van 'Trinette'
    Dan is het gezag over 'Trinette' eenhoofdig ouderlijk gezag met ouder 'Tina'

  Scenario: Lg01_212 - juridisch alleen moeder, geregistreerd partner van moeder overleden, moeder categorie 03
    # Route: 42no2
    Als 'gezag' wordt gevraagd van 'Trudetty'
    Dan is het gezag over 'Trudetty' eenhoofdig ouderlijk gezag met ouder 'Tina'

  Scenario: Lg01_213 - juridisch alleen moeder, moeder overleden, geregistreerd partner moeder geen ouder wel gezag, moeder categorie 02
    # Route: 43o1
    Als 'gezag' wordt gevraagd van 'Tim'
    Dan is het gezag over 'Tim' voogdij met derde 'Tina'

  Scenario: Lg01_214 - juridisch alleen moeder, moeder overleden, geregistreerd partner moeder geen ouder wel gezag, moeder categorie 03
    # Route: 43o2
    Als 'gezag' wordt gevraagd van 'Tom'
    Dan is het gezag over 'Tom' voogdij met derde 'Tina'
