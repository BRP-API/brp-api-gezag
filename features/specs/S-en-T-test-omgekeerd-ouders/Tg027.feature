#language: nl

@deprecated @gezag-api
Functionaliteit: Tg027 - Janssen-Joosten- Erkenning voor, bij en na geboorteaangifte en ongehuwde ouders en vaststelling vaderschap. Erkenning voor en na 2023-01-01. Cat.11 na erkenning en bij aangifte geboorte.


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 61                 | 0518200000583561                           |
    
    # Lg01_145 - ongehuwde ouders met 6 kinderen geboren voor en na 01-01-2023, 5 kinderen erkend, 2 kinderen vaststelling vaderschap
    Gegeven de persoon 'Joop' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Joop     |
      | geslachtsnaam (02.40)           | Janssen  |
      | geboortedatum (03.10)           | 19890727 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Joke     |
      | geslachtsnaam (02.40)                              | Janssen  |
      | geboortedatum (03.10)                              | 19620319 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Jettie' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Jettie    |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0502   |
      | ingangsdatum geldigheid (85.10) | 20211231  |
    En heeft een kind 'Janneke' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Janneke   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0501   |
      | ingangsdatum geldigheid (85.10) | 20230105  |
    En heeft een kind 'Jantina' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Jantina   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0500   |
      | ingangsdatum geldigheid (85.10) | 20230105  |
    En heeft een kind 'Joy' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Joy       |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20200601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AV0501   |
      | ingangsdatum geldigheid (85.10) | 20200601  |
    En heeft een kind 'Johanna' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Johanna   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20200601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AV0500   |
      | ingangsdatum geldigheid (85.10) | 20200601  |
    En heeft een kind 'Jolanda' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Jolanda   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20230106  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0011   |
      | ingangsdatum geldigheid (85.10) | 20230106  |
    En heeft een kind 'Jacoba' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Jacoba    |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20230106  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0010   |
      | ingangsdatum geldigheid (85.10) | 20230106  |
    
    # Lg01_146 - ongehuwde ouders met 6 kinderen geboren voor en na 01-01-2023, 5 kinderen erkend, 2 kinderen vaststelling vaderschap
    Gegeven de persoon 'Josephien' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Josephien |
      | geslachtsnaam (02.40)           | Joosten   |
      | geboortedatum (03.10)           | 19900830  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Josje    |
      | geslachtsnaam (02.40)                              | Joosten  |
      | geboortedatum (03.10)                              | 19690821 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Jettie' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Jettie    |
      | geslachtsnaam (02.40)           | Joosten   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0502   |
      | ingangsdatum geldigheid (85.10) | 20211201  |
    En kind 'Jettie' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Jettie    |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0502   |
      | ingangsdatum geldigheid (85.10) | 20211231  |
    En heeft een kind 'Janneke' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Janneke   |
      | geslachtsnaam (02.40)           | Joosten   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0501   |
      | ingangsdatum geldigheid (85.10) | 20211201  |
    En kind 'Janneke' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Janneke   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0501   |
      | ingangsdatum geldigheid (85.10) | 20230105  |
    En heeft een kind 'Jantina' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Jantina   |
      | geslachtsnaam (02.40)           | Joosten   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0500   |
      | ingangsdatum geldigheid (85.10) | 20211201  |
    En kind 'Jantina' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Jantina   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0500   |
      | ingangsdatum geldigheid (85.10) | 20230105  |
    En heeft een kind 'Joy' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Joy       |
      | geslachtsnaam (02.40)           | Joosten   |
      | geboortedatum (03.10)           | 20200601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0501   |
      | ingangsdatum geldigheid (85.10) | 20200601  |
    En kind 'Joy' is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Joy       |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20200601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AV0501   |
      | ingangsdatum geldigheid (85.10) | 20200601  |
    En heeft een kind 'Johanna' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Johanna   |
      | geslachtsnaam (02.40)           | Joosten   |
      | geboortedatum (03.10)           | 20200601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0500   |
      | ingangsdatum geldigheid (85.10) | 20200601  |
    En kind 'Johanna' is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Johanna   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20200601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AV0500   |
      | ingangsdatum geldigheid (85.10) | 20200601  |
    En heeft een kind 'Jolanda' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Jolanda   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20230106  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0011   |
      | ingangsdatum geldigheid (85.10) | 20230106  |
    En heeft een kind 'Jacoba' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Jacoba    |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20230106  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0010   |
      | ingangsdatum geldigheid (85.10) | 20230106  |
    
    # Lg01_147 - kind geboren uit ongehuwde ouders na 01-01- 2023, erkenning ongeboren vrucht,  indicatie gezag
    Gegeven de persoon 'Jacoba' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Jacoba   |
      | geslachtsnaam (02.40)           | Janssen  |
      | geboortedatum (03.10)           | 20230106 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0010  |
      | ingangsdatum geldigheid (85.10) | 20230106 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Joop      |
      | geslachtsnaam (02.40)                              | Janssen   |
      | geboortedatum (03.10)                              | 19890727  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0010   |
      | ingangsdatum geldigheid (85.10)                    | 20230106  |
      | datum ingang familierechtelijke betrekking (62.10) | 20230106  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Josephien |
      | geslachtsnaam (02.40)                              | Joosten   |
      | geboortedatum (03.10)                              | 19900830  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0010   |
      | ingangsdatum geldigheid (85.10)                    | 20230106  |
      | datum ingang familierechtelijke betrekking (62.10) | 20230106  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20230106 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde            |
      | indicatie gezag minderjarige (32.10) | 2                 |
      | beschrijving document (82.30)        | overgangsregeling |
      | ingangsdatum geldigheid (85.10)      | 20230106          |
    
    # Lg01_148 - kind geboren uit ongehuwde ouders na 01-01- 2023, erkenning ongeboren vrucht,  geen indicatie gezag
    Gegeven de persoon 'Jolanda' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Jolanda  |
      | geslachtsnaam (02.40)           | Janssen  |
      | geboortedatum (03.10)           | 20230106 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0011  |
      | ingangsdatum geldigheid (85.10) | 20230106 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Joop      |
      | geslachtsnaam (02.40)                              | Janssen   |
      | geboortedatum (03.10)                              | 19890727  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0011   |
      | ingangsdatum geldigheid (85.10)                    | 20230106  |
      | datum ingang familierechtelijke betrekking (62.10) | 20230106  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Josephien |
      | geslachtsnaam (02.40)                              | Joosten   |
      | geboortedatum (03.10)                              | 19900830  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0011   |
      | ingangsdatum geldigheid (85.10)                    | 20230106  |
      | datum ingang familierechtelijke betrekking (62.10) | 20230106  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20230106 |
    
    # Lg01_149 - kind geboren uit ongehuwde ouders voor 01-01-2023, vaststelling ouderschap
    Gegeven de persoon 'Johanna' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Johanna  |
      | geslachtsnaam (02.40)           | Joosten  |
      | geboortedatum (03.10)           | 20200601 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0500  |
      | ingangsdatum geldigheid (85.10) | 20200601 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Johanna   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20200601  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AV0500   |
      | ingangsdatum geldigheid (85.10) | 20200601  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0500  |
      | ingangsdatum geldigheid (85.10) | 20200601 |
    En ouder 1 is gecorrigeerd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Joop      |
      | geslachtsnaam (02.40)                              | Janssen   |
      | geboortedatum (03.10)                              | 19890727  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AV0500   |
      | ingangsdatum geldigheid (85.10)                    | 20200601  |
      | datum ingang familierechtelijke betrekking (62.10) | 20200601  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Josephien |
      | geslachtsnaam (02.40)                              | Joosten   |
      | geboortedatum (03.10)                              | 19900830  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0500   |
      | ingangsdatum geldigheid (85.10)                    | 20200601  |
      | datum ingang familierechtelijke betrekking (62.10) | 20200601  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20200601 |
    
    # Lg01_150 - kind geboren uit ongehuwde ouders voor 01-01-2023, erkenning na 01-01-2023, aantekening gezag
    Gegeven de persoon 'Jantina' met burgerservicenummer '000000073'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Jantina  |
      | geslachtsnaam (02.40)           | Joosten  |
      | geboortedatum (03.10)           | 20211201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0500  |
      | ingangsdatum geldigheid (85.10) | 20211201 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Jantina   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0500   |
      | ingangsdatum geldigheid (85.10) | 20230105  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0500  |
      | ingangsdatum geldigheid (85.10) | 20211201 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Joop      |
      | geslachtsnaam (02.40)                              | Janssen   |
      | geboortedatum (03.10)                              | 19890727  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0500   |
      | ingangsdatum geldigheid (85.10)                    | 20230105  |
      | datum ingang familierechtelijke betrekking (62.10) | 20230105  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Josephien |
      | geslachtsnaam (02.40)                              | Joosten   |
      | geboortedatum (03.10)                              | 19900830  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0500   |
      | ingangsdatum geldigheid (85.10)                    | 20211201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20211201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20211201 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde             |
      | indicatie gezag minderjarige (32.10) | 2                  |
      | beschrijving document (82.30)        | kennisgeving gezag |
      | ingangsdatum geldigheid (85.10)      | 20230210           |
    
    # Lg01_151 - kind geboren uit ongehuwde ouders voor 01-01-2023, erkenning na 01-01-2023, geen aantekening gezag
    Gegeven de persoon 'Janneke' met burgerservicenummer '000000085'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Janneke  |
      | geslachtsnaam (02.40)           | Joosten  |
      | geboortedatum (03.10)           | 20211201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0501  |
      | ingangsdatum geldigheid (85.10) | 20211201 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Janneke   |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0501   |
      | ingangsdatum geldigheid (85.10) | 20230105  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0501  |
      | ingangsdatum geldigheid (85.10) | 20211201 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Joop      |
      | geslachtsnaam (02.40)                              | Janssen   |
      | geboortedatum (03.10)                              | 19890727  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0501   |
      | ingangsdatum geldigheid (85.10)                    | 20230105  |
      | datum ingang familierechtelijke betrekking (62.10) | 20230105  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Josephien |
      | geslachtsnaam (02.40)                              | Joosten   |
      | geboortedatum (03.10)                              | 19900830  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0501   |
      | ingangsdatum geldigheid (85.10)                    | 20211201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20211201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20211201 |
    
    # Lg01_152 - kind geboren uit ongehuwde ouders voor 01-01-2023, erkenning voor 01-01-2023, geen aantekening gezag
    Gegeven de persoon 'Jettie' met burgerservicenummer '000000097'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Jettie   |
      | geslachtsnaam (02.40)           | Joosten  |
      | geboortedatum (03.10)           | 20211201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0502  |
      | ingangsdatum geldigheid (85.10) | 20211201 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Jettie    |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20211201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0502   |
      | ingangsdatum geldigheid (85.10) | 20211231  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0502  |
      | ingangsdatum geldigheid (85.10) | 20211201 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Joop      |
      | geslachtsnaam (02.40)                              | Janssen   |
      | geboortedatum (03.10)                              | 19890727  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0502   |
      | ingangsdatum geldigheid (85.10)                    | 20211231  |
      | datum ingang familierechtelijke betrekking (62.10) | 20211231  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Josephien |
      | geslachtsnaam (02.40)                              | Joosten   |
      | geboortedatum (03.10)                              | 19900830  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0502   |
      | ingangsdatum geldigheid (85.10)                    | 20211201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20211201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20211201 |
    
    # Lg01_215 - kind geboren uit ongehuwde ouders voor 01-01-2023, vaststelling ouderschap, moeder categorie 02
    Gegeven de persoon 'Joy' met burgerservicenummer '000000103'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Joy      |
      | geslachtsnaam (02.40)           | Joosten  |
      | geboortedatum (03.10)           | 20200601 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0501  |
      | ingangsdatum geldigheid (85.10) | 20200601 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Joy       |
      | geslachtsnaam (02.40)           | Janssen   |
      | geboortedatum (03.10)           | 20200601  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AV0501   |
      | ingangsdatum geldigheid (85.10) | 20200601  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Josephien |
      | geslachtsnaam (02.40)                              | Joosten   |
      | geboortedatum (03.10)                              | 19900830  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0501   |
      | ingangsdatum geldigheid (85.10)                    | 20200601  |
      | datum ingang familierechtelijke betrekking (62.10) | 20200601  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0501  |
      | ingangsdatum geldigheid (85.10) | 20200601 |
    En ouder 2 is gecorrigeerd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Joop      |
      | geslachtsnaam (02.40)                              | Janssen   |
      | geboortedatum (03.10)                              | 19890727  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AV0501   |
      | ingangsdatum geldigheid (85.10)                    | 20200601  |
      | datum ingang familierechtelijke betrekking (62.10) | 20200601  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20200601 |


  Scenario: Lg01_145 - ongehuwde ouders met 6 kinderen geboren voor en na 01-01-2023, 5 kinderen erkend, 2 kinderen vaststelling vaderschap
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Joop'
    Dan is het gezag over 'Jolanda' gezamenlijk ouderlijk gezag met ouder 'Josephien' en ouder 'Joop'
    Dan is het gezag over 'Janneke' gezamenlijk ouderlijk gezag met ouder 'Josephien' en ouder 'Joop'

  Scenario: Lg01_146 - ongehuwde ouders met 6 kinderen geboren voor en na 01-01-2023, 5 kinderen erkend, 2 kinderen vaststelling vaderschap
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Josephien'
    Dan is het gezag over 'Jacoba' eenhoofdig ouderlijk gezag met ouder 'Josephien'
    Dan is het gezag over 'Jolanda' gezamenlijk ouderlijk gezag met ouder 'Josephien' en ouder 'Joop'
    Dan is het gezag over 'Johanna' eenhoofdig ouderlijk gezag met ouder 'Josephien'
    Dan is het gezag over 'Jantina' eenhoofdig ouderlijk gezag met ouder 'Josephien'
    Dan is het gezag over 'Janneke' gezamenlijk ouderlijk gezag met ouder 'Josephien' en ouder 'Joop'
    Dan is het gezag over 'Jettie' eenhoofdig ouderlijk gezag met ouder 'Josephien'
    Dan is het gezag over 'Joy' eenhoofdig ouderlijk gezag met ouder 'Josephien'

  Scenario: Lg01_147 - kind geboren uit ongehuwde ouders na 01-01- 2023, erkenning ongeboren vrucht,  indicatie gezag
    # Route: 11
    Als 'gezag' wordt gevraagd van 'Jacoba'
    Dan is het gezag over 'Jacoba' eenhoofdig ouderlijk gezag met ouder 'Josephien'

  Scenario: Lg01_148 - kind geboren uit ongehuwde ouders na 01-01- 2023, erkenning ongeboren vrucht,  geen indicatie gezag
    # Route: 54n
    Als 'gezag' wordt gevraagd van 'Jolanda'
    Dan is het gezag over 'Jolanda' gezamenlijk ouderlijk gezag met ouder 'Josephien' en ouder 'Joop'

  Scenario: Lg01_149 - kind geboren uit ongehuwde ouders voor 01-01-2023, vaststelling ouderschap
    # Route: 54v1
    Als 'gezag' wordt gevraagd van 'Johanna'
    Dan is het gezag over 'Johanna' eenhoofdig ouderlijk gezag met ouder 'Josephien'

  Scenario: Lg01_150 - kind geboren uit ongehuwde ouders voor 01-01-2023, erkenning na 01-01-2023, aantekening gezag
    # Route: 11
    Als 'gezag' wordt gevraagd van 'Jantina'
    Dan is het gezag over 'Jantina' eenhoofdig ouderlijk gezag met ouder 'Josephien'

  Scenario: Lg01_151 - kind geboren uit ongehuwde ouders voor 01-01-2023, erkenning na 01-01-2023, geen aantekening gezag
    # Route: 54n
    Als 'gezag' wordt gevraagd van 'Janneke'
    Dan is het gezag over 'Janneke' gezamenlijk ouderlijk gezag met ouder 'Josephien' en ouder 'Joop'

  Scenario: Lg01_152 - kind geboren uit ongehuwde ouders voor 01-01-2023, erkenning voor 01-01-2023, geen aantekening gezag
    # Route: 54v1
    Als 'gezag' wordt gevraagd van 'Jettie'
    Dan is het gezag over 'Jettie' eenhoofdig ouderlijk gezag met ouder 'Josephien'

  Scenario: Lg01_215 - kind geboren uit ongehuwde ouders voor 01-01-2023, vaststelling ouderschap, moeder categorie 02
    # Route: 54v2
    Als 'gezag' wordt gevraagd van 'Joy'
    Dan is het gezag over 'Joy' eenhoofdig ouderlijk gezag met ouder 'Josephien'
