#language: nl

@deprecated @gezag-api
Functionaliteit: Tg029 - Kootwijk-Kruiswijk-Klapwijk - Huwelijk tussen vrouwen en erkenning kinderen na 2023-01-01 door niet anonieme donor


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 65                 | 0518200000583563                           |
    
    # Lg01_156 - vrouw, huwelijk met vrouw, 2 kinderen maar echtgenote geen duomoeder, echtgenote wel gezag, echtgenote overleden, kinderen worden in 2023 erkend
    Gegeven de persoon 'Kim' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Kim      |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Kootwijk |
      | geboortedatum (03.10)           | 19900216 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Karel    |
      | voorvoegsel (02.30)                                | van      |
      | geslachtsnaam (02.40)                              | Kootwijk |
      | geboortedatum (03.10)                              | 19611209 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Kornelia |
      | geslachtsnaam (02.40)                              | Kuijken  |
      | geboortedatum (03.10)                              | 19600908 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Karla-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Karla     |
      | geslachtsnaam (02.40)                                               | Kruiswijk |
      | geboortedatum (03.10)                                               | 19870320  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20180920  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20180920  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Karla-0' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000024 |
      | voornamen (02.10)                                             | Karla     |
      | geslachtsnaam (02.40)                                         | Kruiswijk |
      | geboortedatum (03.10)                                         | 19870320  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | V         |
      | aktenummer (81.20)                                            | 2AA0100   |
      | ingangsdatum geldigheid (85.10)                               | 20221220  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20221220  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | O         |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Kira' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Kira      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20211030  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0900   |
      | ingangsdatum geldigheid (85.10) | 20211030  |
    En kind 'Kira' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Kyrolina  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20211030  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AM0900   |
      | ingangsdatum geldigheid (85.10) | 20220808  |
    En kind 'Kira' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Kyrolina  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20211030  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0900   |
      | ingangsdatum geldigheid (85.10) | 20230120  |
    En heeft een kind 'Karo' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Karo      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20221205  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0700   |
      | ingangsdatum geldigheid (85.10) | 20221205  |
    En kind 'Karo' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Karo      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20221205  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0700   |
      | ingangsdatum geldigheid (85.10) | 20230120  |
    En kind 'Karo' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Karolina  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20221205  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AM0700   |
      | ingangsdatum geldigheid (85.10) | 20230201  |
    
    # Lg01_157 - vrouw, huwelijk met vrouw, echtgenote krijgt 2 kinderen (geen anonieme donor), overleden
    Gegeven de persoon 'Karla' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Karla     |
      | geslachtsnaam (02.40)           | Kruiswijk |
      | geboortedatum (03.10)           | 19870320  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Kees      |
      | geslachtsnaam (02.40)                              | Kruiswijk |
      | geboortedatum (03.10)                              | 19501005  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Koosje    |
      | geslachtsnaam (02.40)                              | Klootwijk |
      | geboortedatum (03.10)                              | 19540329  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Kim-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Kim       |
      | voorvoegsel (02.30)                                                 | van       |
      | geslachtsnaam (02.40)                                               | Kootwijk  |
      | geboortedatum (03.10)                                               | 19900216  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20180920  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20180920  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20221220 |
      | aktenummer (81.20)              | 2AA0100  |
      | ingangsdatum geldigheid (85.10) | 20221220 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20221220 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_158 - alleen moeder, moeder wel gehuwd maar geen anonieme donor, na overlijden huwelijkspartner moeder erkend in 2023, akteaanduiding C in actuele categorie bij persoon en ouder2
    Gegeven de persoon 'Kyrolina' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Kira     |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Kootwijk |
      | geboortedatum (03.10)           | 20211030 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0900  |
      | ingangsdatum geldigheid (85.10) | 20211030 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Kyrolina  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20211030  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AM0900   |
      | ingangsdatum geldigheid (85.10) | 20220808  |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Kyrolina  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20211030  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0900   |
      | ingangsdatum geldigheid (85.10) | 20230120  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0900  |
      | ingangsdatum geldigheid (85.10) | 20211030 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000048 |
      | voornamen (02.10)                                  | Kees      |
      | geslachtsnaam (02.40)                              | Klapwijk  |
      | geboortedatum (03.10)                              | 19851110  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0900   |
      | ingangsdatum geldigheid (85.10)                    | 20230120  |
      | datum ingang familierechtelijke betrekking (62.10) | 20230120  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Kim       |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Kootwijk  |
      | geboortedatum (03.10)                              | 19900216  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0900   |
      | ingangsdatum geldigheid (85.10)                    | 20211030  |
      | datum ingang familierechtelijke betrekking (62.10) | 20211030  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20211030 |
    
    # Lg01_159 - erkenner van 2 kinderen waarvan de moeder gehuwd was met een vrouw die niet de meemoeder is van de kinderen (geen anonieme donor). Huwelijkspartner moeder overleden
    Gegeven de persoon 'Kees' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Kees     |
      | geslachtsnaam (02.40)           | Klapwijk |
      | geboortedatum (03.10)           | 19851110 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Koenraad |
      | geslachtsnaam (02.40)                              | Klapwijk |
      | geboortedatum (03.10)                              | 19480403 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Karin    |
      | geslachtsnaam (02.40)                              | Koetsier |
      | geboortedatum (03.10)                              | 19570612 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Kyrolina' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Kyrolina  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20211030  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0900   |
      | ingangsdatum geldigheid (85.10) | 20230120  |
    En heeft een kind 'Karo' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Karo      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20221205  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0700   |
      | ingangsdatum geldigheid (85.10) | 20230120  |
    En kind 'Karo' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Karolina  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20221205  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AM0700   |
      | ingangsdatum geldigheid (85.10) | 20230201  |
    
    # Lg01_160 - alleen moeder, moeder wel gehuwd maar geen anonieme donor, na overlijden huwelijkspartner moeder erkend in 2023, akteaanduiding C in historische categorie bij persoon en ouder2
    Gegeven de persoon 'Karolina' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Karo     |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Kootwijk |
      | geboortedatum (03.10)           | 20221205 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0700  |
      | ingangsdatum geldigheid (85.10) | 20221205 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Karo      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20221205  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0700   |
      | ingangsdatum geldigheid (85.10) | 20230120  |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Karolina  |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Kootwijk  |
      | geboortedatum (03.10)           | 20221205  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AM0700   |
      | ingangsdatum geldigheid (85.10) | 20230201  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0700  |
      | ingangsdatum geldigheid (85.10) | 20221205 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Kees     |
      | geslachtsnaam (02.40)                              | Klapwijk |
      | geboortedatum (03.10)                              | 19851110 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | aktenummer (81.20)                                 | 1AC0700  |
      | ingangsdatum geldigheid (85.10)                    | 20230120 |
      | datum ingang familierechtelijke betrekking (62.10) | 20230120 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde          |
      | burgerservicenummer (01.20)                        | 000000048       |
      | voornamen (02.10)                                  | Kees            |
      | geslachtsnaam (02.40)                              | Klapwijk        |
      | geboortedatum (03.10)                              | 19851110        |
      | geboorteland (03.30)                               | 6030            |
      | geslachtsaanduiding (04.10)                        | M               |
      | beschrijving document (82.30)                      | PL gerelateerde |
      | ingangsdatum geldigheid (85.10)                    | 20230121        |
      | datum ingang familierechtelijke betrekking (62.10) | 20230120        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Kim       |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Kootwijk  |
      | geboortedatum (03.10)                              | 19900216  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0700   |
      | ingangsdatum geldigheid (85.10)                    | 20221205  |
      | datum ingang familierechtelijke betrekking (62.10) | 20221205  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20221205 |


  Scenario: Lg01_156 - vrouw, huwelijk met vrouw, 2 kinderen maar echtgenote geen duomoeder, echtgenote wel gezag, echtgenote overleden, kinderen worden in 2023 erkend
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Kim'
    Dan heeft 'Kim' de volgende gezagsrelaties
    * is het gezag over 'Kyrolina' gezamenlijk ouderlijk gezag met ouder 'Kim' en ouder 'Kees'
    * is het gezag over 'Karolina' gezamenlijk ouderlijk gezag met ouder 'Kim' en ouder 'Kees'

  Scenario: Lg01_157 - vrouw, huwelijk met vrouw, echtgenote krijgt 2 kinderen (geen anonieme donor), overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Karla'
    Dan heeft 'Karla' geen gezaghouder

  Scenario: Lg01_158 - alleen moeder, moeder wel gehuwd maar geen anonieme donor, na overlijden huwelijkspartner moeder erkend in 2023, akteaanduiding C in actuele categorie bij persoon en ouder2
    # Route: 54n
    Als 'gezag' wordt gevraagd van 'Kyrolina'
    Dan is het gezag over 'Kyrolina' gezamenlijk ouderlijk gezag met ouder 'Kim' en ouder 'Kees'

  Scenario: Lg01_159 - erkenner van 2 kinderen waarvan de moeder gehuwd was met een vrouw die niet de meemoeder is van de kinderen (geen anonieme donor). Huwelijkspartner moeder overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Kees'
    Dan heeft 'Kees' de volgende gezagsrelaties
    * is het gezag over 'Kyrolina' gezamenlijk ouderlijk gezag met ouder 'Kim' en ouder 'Kees'
    * is het gezag over 'Karolina' gezamenlijk ouderlijk gezag met ouder 'Kim' en ouder 'Kees'

  Scenario: Lg01_160 - alleen moeder, moeder wel gehuwd maar geen anonieme donor, na overlijden huwelijkspartner moeder erkend in 2023, akteaanduiding C in historische categorie bij persoon en ouder2
    # Route: 54n
    Als 'gezag' wordt gevraagd van 'Karolina'
    Dan is het gezag over 'Karolina' gezamenlijk ouderlijk gezag met ouder 'Kim' en ouder 'Kees'
