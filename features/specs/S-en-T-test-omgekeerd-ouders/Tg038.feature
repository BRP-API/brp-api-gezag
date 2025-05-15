#language: nl

Functionaliteit: Tg038 - Savelskoul-Steenbergen - twee ongehuwde ouders  met 1 erkend  en 1 geadopteerd kind, moeder overleden


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 77                 | 0518200000583569                           |
    
    # Lg01_203 - ongehuwd, 2 kinderen (1 geboren en erkend voor 01-01-2023 en 1 geboren en erkend na 01-01-2023
    Gegeven de persoon 'Simone' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Simone     |
      | geslachtsnaam (02.40)           | Savelskoul |
      | geboortedatum (03.10)           | 19800101   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | V          |
      | beschrijving document (82.30)   | PKA        |
      | ingangsdatum geldigheid (85.10) | 0          |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Sijke      |
      | geslachtsnaam (02.40)                              | Savelskoul |
      | geboortedatum (03.10)                              | 19570807   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | V          |
      | beschrijving document (82.30)                      | PK         |
      | ingangsdatum geldigheid (85.10)                    | 0          |
      | datum ingang familierechtelijke betrekking (62.10) | 0          |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20230901 |
      | aktenummer (81.20)              | 2AA0200  |
      | ingangsdatum geldigheid (85.10) | 20230901 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20230901 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde     |
      | burgerservicenummer (01.20)     | 000000036  |
      | voornamen (02.10)               | Sjoukje    |
      | geslachtsnaam (02.40)           | Savelskoul |
      | geboortedatum (03.10)           | 20220601   |
      | geboorteland (03.30)            | 6030       |
      | aktenummer (81.20)              | 1AA0300    |
      | ingangsdatum geldigheid (85.10) | 20220601   |
    En het kind is gewijzigd naar de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000036   |
      | voornamen (02.10)               | Sjoukje     |
      | voorvoegsel (02.30)             | van         |
      | geslachtsnaam (02.40)           | Steenbergen |
      | geboortedatum (03.10)           | 20220601    |
      | geboorteland (03.30)            | 6030        |
      | aktenummer (81.20)              | 1AJ0300     |
      | ingangsdatum geldigheid (85.10) | 20220801    |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde     |
      | burgerservicenummer (01.20)     | 000000048  |
      | voornamen (02.10)               | Sytse      |
      | geslachtsnaam (02.40)           | Savelskoul |
      | geboortedatum (03.10)           | 20230601   |
      | geboorteland (03.30)            | 6030       |
      | aktenummer (81.20)              | 1AA0301    |
      | ingangsdatum geldigheid (85.10) | 20230601   |
    En het kind is gewijzigd naar de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000048   |
      | voornamen (02.10)               | Sytse       |
      | voorvoegsel (02.30)             | van         |
      | geslachtsnaam (02.40)           | Steenbergen |
      | geboortedatum (03.10)           | 20230601    |
      | geboorteland (03.30)            | 6030        |
      | aktenummer (81.20)              | 1AJ0301     |
      | ingangsdatum geldigheid (85.10) | 20230801    |
    
    # Lg01_204 - ongehuwd, 2 kinderen (1 g erkend voor 01-01-2023 en 1 erkend na 01-01-2023
    Gegeven de persoon 'Sjoerd' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde      |
      | voornamen (02.10)               | Sjoerd      |
      | voorvoegsel (02.30)             | van         |
      | geslachtsnaam (02.40)           | Steenbergen |
      | geboortedatum (03.10)           | 19780101    |
      | geboorteland (03.30)            | 6030        |
      | geslachtsaanduiding (04.10)     | M           |
      | beschrijving document (82.30)   | PKA         |
      | ingangsdatum geldigheid (85.10) | 0           |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde      |
      | voornamen (02.10)                                  | Sonja       |
      | voorvoegsel (02.30)                                | van         |
      | geslachtsnaam (02.40)                              | Steenbergen |
      | geboortedatum (03.10)                              | 19540902    |
      | geboorteland (03.30)                               | 6030        |
      | geslachtsaanduiding (04.10)                        | V           |
      | beschrijving document (82.30)                      | PK          |
      | ingangsdatum geldigheid (85.10)                    | 0           |
      | datum ingang familierechtelijke betrekking (62.10) | 0           |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000036   |
      | voornamen (02.10)               | Sjoukje     |
      | voorvoegsel (02.30)             | van         |
      | geslachtsnaam (02.40)           | Steenbergen |
      | geboortedatum (03.10)           | 20220601    |
      | geboorteland (03.30)            | 6030        |
      | aktenummer (81.20)              | 1AJ0300     |
      | ingangsdatum geldigheid (85.10) | 20220801    |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000048   |
      | voornamen (02.10)               | Sytse       |
      | voorvoegsel (02.30)             | van         |
      | geslachtsnaam (02.40)           | Steenbergen |
      | geboortedatum (03.10)           | 20230601    |
      | geboorteland (03.30)            | 6030        |
      | aktenummer (81.20)              | 1AJ0301     |
      | ingangsdatum geldigheid (85.10) | 20230801    |
    
    # Lg01_205 - geadopteerd door niet gehuwde ouders, indicatie gezag 12,  adoptiemoeder overleden,  indicatie gezag 12
    Gegeven de persoon 'Sjoukje' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Sjoukje    |
      | geslachtsnaam (02.40)           | Saroutakia |
      | geboortedatum (03.10)           | 20220601   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | V          |
      | aktenummer (81.20)              | 1AA0300    |
      | ingangsdatum geldigheid (85.10) | 20220601   |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000036   |
      | voornamen (02.10)               | Sjoukje     |
      | voorvoegsel (02.30)             | van         |
      | geslachtsnaam (02.40)           | Steenbergen |
      | geboortedatum (03.10)           | 20220601    |
      | geboorteland (03.30)            | 6030        |
      | geslachtsaanduiding (04.10)     | V           |
      | aktenummer (81.20)              | 1AQ0300     |
      | ingangsdatum geldigheid (85.10) | 20230201    |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0300  |
      | ingangsdatum geldigheid (85.10) | 20220601 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde      |
      | burgerservicenummer (01.20)                        | 000000024   |
      | voornamen (02.10)                                  | Sjoerd      |
      | voorvoegsel (02.30)                                | van         |
      | geslachtsnaam (02.40)                              | Steenbergen |
      | geboortedatum (03.10)                              | 19780101    |
      | geboorteland (03.30)                               | 6030        |
      | geslachtsaanduiding (04.10)                        | M           |
      | aktenummer (81.20)                                 | 1AQ0300     |
      | ingangsdatum geldigheid (85.10)                    | 20230201    |
      | datum ingang familierechtelijke betrekking (62.10) | 20220801    |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Susannah   |
      | geslachtsnaam (02.40)                              | Saroutakia |
      | geboortedatum (03.10)                              | 20010101   |
      | geboorteland (03.30)                               | 6003       |
      | geslachtsaanduiding (04.10)                        | V          |
      | aktenummer (81.20)                                 | 1AA0300    |
      | ingangsdatum geldigheid (85.10)                    | 20220601   |
      | datum ingang familierechtelijke betrekking (62.10) | 20220601   |
    En ouder 2 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde     |
      | burgerservicenummer (01.20)                        | 000000012  |
      | voornamen (02.10)                                  | Simone     |
      | geslachtsnaam (02.40)                              | Savelskoul |
      | geboortedatum (03.10)                              | 19800101   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | V          |
      | aktenummer (81.20)                                 | 1AQ0300    |
      | ingangsdatum geldigheid (85.10)                    | 20230201   |
      | datum ingang familierechtelijke betrekking (62.10) | 20230201   |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20220601 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 12                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20230401                    |
    
    # Lg01_206 - geboren en erkend na 01-01-2023, moeder overleden, geen indicatie gezag
    Gegeven de persoon 'Sytse' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Sytse      |
      | geslachtsnaam (02.40)           | Savelskoul |
      | geboortedatum (03.10)           | 20230601   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | M          |
      | aktenummer (81.20)              | 1AA0301    |
      | ingangsdatum geldigheid (85.10) | 20230601   |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000048   |
      | voornamen (02.10)               | Sytse       |
      | voorvoegsel (02.30)             | van         |
      | geslachtsnaam (02.40)           | Steenbergen |
      | geboortedatum (03.10)           | 20230601    |
      | geboorteland (03.30)            | 6030        |
      | geslachtsaanduiding (04.10)     | M           |
      | aktenummer (81.20)              | 1AJ0301     |
      | ingangsdatum geldigheid (85.10) | 20230801    |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0301  |
      | ingangsdatum geldigheid (85.10) | 20230601 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde      |
      | burgerservicenummer (01.20)                        | 000000024   |
      | voornamen (02.10)                                  | Sjoerd      |
      | voorvoegsel (02.30)                                | van         |
      | geslachtsnaam (02.40)                              | Steenbergen |
      | geboortedatum (03.10)                              | 19780101    |
      | geboorteland (03.30)                               | 6030        |
      | geslachtsaanduiding (04.10)                        | M           |
      | aktenummer (81.20)                                 | 1AJ0301     |
      | ingangsdatum geldigheid (85.10)                    | 20230801    |
      | datum ingang familierechtelijke betrekking (62.10) | 20230801    |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | burgerservicenummer (01.20)                        | 000000012  |
      | voornamen (02.10)                                  | Simone     |
      | geslachtsnaam (02.40)                              | Savelskoul |
      | geboortedatum (03.10)                              | 19800101   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | V          |
      | aktenummer (81.20)                                 | 1AA0301    |
      | ingangsdatum geldigheid (85.10)                    | 20230601   |
      | datum ingang familierechtelijke betrekking (62.10) | 20230601   |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20230601 |


  Scenario: Lg01_203 - ongehuwd, 2 kinderen (1 geboren en erkend voor 01-01-2023 en 1 geboren en erkend na 01-01-2023
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Simone'
    Dan heeft 'Simone' geen gezaghouder

  Scenario: Lg01_204 - ongehuwd, 2 kinderen (1 g erkend voor 01-01-2023 en 1 erkend na 01-01-2023
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Sjoerd'
    Dan is het gezag over 'Sjoukje' eenhoofdig ouderlijk gezag met ouder 'Sjoerd'
    Dan is het gezag over 'Sytse' eenhoofdig ouderlijk gezag met ouder 'Sjoerd'

  Scenario: Lg01_205 - geadopteerd door niet gehuwde ouders, indicatie gezag 12,  adoptiemoeder overleden,  indicatie gezag 12
    # Route: 8
    Als 'gezag' wordt gevraagd van 'Sjoukje'
    Dan is het gezag over 'Sjoukje' eenhoofdig ouderlijk gezag met ouder 'Sjoerd'

  Scenario: Lg01_206 - geboren en erkend na 01-01-2023, moeder overleden, geen indicatie gezag
    # Route: 53n1
    Als 'gezag' wordt gevraagd van 'Sytse'
    Dan is het gezag over 'Sytse' eenhoofdig ouderlijk gezag met ouder 'Sjoerd'
