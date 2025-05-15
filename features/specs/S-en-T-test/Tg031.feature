#language: nl

Functionaliteit: Tg031 - Nooitgedacht-Nimwegen - Cat.11 en adoptie of ontkenning erkenning


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 69                 | 0518200000583565                           |
    
    # Lg01_169 - vrouw niet gehuwd/GP, 1 minderjarig kind geadopteerd, 1 minderjarig kind erkend en later erkenning vernietigd
    Gegeven de persoon 'Nicolette' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde       |
      | voornamen (02.10)               | Nicolette    |
      | geslachtsnaam (02.40)           | Nooitgedacht |
      | geboortedatum (03.10)           | 19901201     |
      | geboorteland (03.30)            | 6030         |
      | geslachtsaanduiding (04.10)     | V            |
      | beschrijving document (82.30)   | PKA          |
      | ingangsdatum geldigheid (85.10) | 0            |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde       |
      | voornamen (02.10)                                  | Naatje       |
      | geslachtsnaam (02.40)                              | Nooitgedacht |
      | geboortedatum (03.10)                              | 19600701     |
      | geboorteland (03.30)                               | 6030         |
      | geslachtsaanduiding (04.10)                        | V            |
      | beschrijving document (82.30)                      | PK           |
      | ingangsdatum geldigheid (85.10)                    | 0            |
      | datum ingang familierechtelijke betrekking (62.10) | 0            |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde       |
      | burgerservicenummer (01.20)     | 000000048    |
      | voornamen (02.10)               | Niels        |
      | geslachtsnaam (02.40)           | Nooitgedacht |
      | geboortedatum (03.10)           | 20190101     |
      | geboorteland (03.30)            | 6030         |
      | aktenummer (81.20)              | 1AA0001      |
      | ingangsdatum geldigheid (85.10) | 20190101     |
    En het kind is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Niels     |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Nimwegen  |
      | geboortedatum (03.10)           | 20190101  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0001   |
      | ingangsdatum geldigheid (85.10) | 20210101  |
    En het kind is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde       |
      | burgerservicenummer (01.20)     | 000000048    |
      | voornamen (02.10)               | Niels        |
      | geslachtsnaam (02.40)           | Nooitgedacht |
      | geboortedatum (03.10)           | 20190101     |
      | geboorteland (03.30)            | 6030         |
      | aktenummer (81.20)              | 1AN0001      |
      | ingangsdatum geldigheid (85.10) | 20210101     |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde       |
      | burgerservicenummer (01.20)     | 000000036    |
      | voornamen (02.10)               | Nicolas      |
      | geslachtsnaam (02.40)           | Nooitgedacht |
      | geboortedatum (03.10)           | 20200101     |
      | geboorteland (03.30)            | 6030         |
      | aktenummer (81.20)              | 1AA0001      |
      | ingangsdatum geldigheid (85.10) | 20200101     |
    En het kind is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Nicolas   |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Nimwegen  |
      | geboortedatum (03.10)           | 20200101  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AQ0001   |
      | ingangsdatum geldigheid (85.10) | 20221101  |
    
    # Lg01_170 - man niet gehuwd/GP, 1 minderjarig kind geadopteerd, 1 minderjarig kind erkend en later erkenning vernietigd
    Gegeven de persoon 'Nicodemus' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Nicodemus |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Nimwegen  |
      | geboortedatum (03.10)           | 19900901  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Nola     |
      | voorvoegsel (02.30)                                | van      |
      | geslachtsnaam (02.40)                              | Nimwegen |
      | geboortedatum (03.10)                              | 19620101 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Niels     |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Nimwegen  |
      | geboortedatum (03.10)           | 20190101  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0001   |
      | ingangsdatum geldigheid (85.10) | 20210101  |
    En het kind is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AN0001  |
      | ingangsdatum geldigheid (85.10) | 20210101 |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Nicolas   |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Nimwegen  |
      | geboortedatum (03.10)           | 20200101  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AQ0001   |
      | ingangsdatum geldigheid (85.10) | 20221101  |
    
    # Lg01_171 - kind, geboren uit alleen moeder, vervolgens gezag 1D, later geactualiseerd in 1, en vervolgens 1-ouder adoptie
    Gegeven de persoon 'Nicolas' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde       |
      | voornamen (02.10)               | Nicolas      |
      | geslachtsnaam (02.40)           | Nooitgedacht |
      | geboortedatum (03.10)           | 20200101     |
      | geboorteland (03.30)            | 6030         |
      | geslachtsaanduiding (04.10)     | M            |
      | aktenummer (81.20)              | 1AA0001      |
      | ingangsdatum geldigheid (85.10) | 20200101     |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Nicolas   |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Nimwegen  |
      | geboortedatum (03.10)           | 20200101  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AQ0001   |
      | ingangsdatum geldigheid (85.10) | 20221101  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde       |
      | burgerservicenummer (01.20)                        | 000000012    |
      | voornamen (02.10)                                  | Nicolette    |
      | geslachtsnaam (02.40)                              | Nooitgedacht |
      | geboortedatum (03.10)                              | 19901201     |
      | geboorteland (03.30)                               | 6030         |
      | geslachtsaanduiding (04.10)                        | V            |
      | aktenummer (81.20)                                 | 1AA0001      |
      | ingangsdatum geldigheid (85.10)                    | 20200101     |
      | datum ingang familierechtelijke betrekking (62.10) | 20200101     |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0001  |
      | ingangsdatum geldigheid (85.10) | 20200101 |
    En ouder 2 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Nicodemus |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Nimwegen  |
      | geboortedatum (03.10)                              | 19900901  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AQ0001   |
      | ingangsdatum geldigheid (85.10)                    | 20221101  |
      | datum ingang familierechtelijke betrekking (62.10) | 20221101  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20200101 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde                     |
      | indicatie gezag minderjarige (32.10) | 1D                         |
      | beschrijving document (82.30)        | kennsigeving gezagregister |
      | ingangsdatum geldigheid (85.10)      | 20200201                   |
    En gezagsverhouding is gewijzigd naar de volgende gegevens
      | naam                                 | waarde                     |
      | indicatie gezag minderjarige (32.10) | 1                          |
      | beschrijving document (82.30)        | kennsigeving gezagregister |
      | ingangsdatum geldigheid (85.10)      | 20221101                   |
    
    # Lg01_172 - kind geboren uit alleen moeder, erkend door vader, vervolgens gezag 12 en daarna vernietiging erkenning
    Gegeven de persoon 'Niels' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde       |
      | voornamen (02.10)               | Niels        |
      | geslachtsnaam (02.40)           | Nooitgedacht |
      | geboortedatum (03.10)           | 20190101     |
      | geboorteland (03.30)            | 6030         |
      | geslachtsaanduiding (04.10)     | M            |
      | aktenummer (81.20)              | 1AA0001      |
      | ingangsdatum geldigheid (85.10) | 20190101     |
    En zijn de volgende gegevens gecorrigeerd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Niels     |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Nimwegen  |
      | geboortedatum (03.10)           | 20190101  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AC0001   |
      | ingangsdatum geldigheid (85.10) | 20210101  |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde       |
      | burgerservicenummer (01.20)     | 000000048    |
      | voornamen (02.10)               | Niels        |
      | geslachtsnaam (02.40)           | Nooitgedacht |
      | geboortedatum (03.10)           | 20190101     |
      | geboorteland (03.30)            | 6030         |
      | geslachtsaanduiding (04.10)     | M            |
      | aktenummer (81.20)              | 1AN0001      |
      | ingangsdatum geldigheid (85.10) | 20210101     |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde       |
      | burgerservicenummer (01.20)                        | 000000012    |
      | voornamen (02.10)                                  | Nicolette    |
      | geslachtsnaam (02.40)                              | Nooitgedacht |
      | geboortedatum (03.10)                              | 19901201     |
      | geboorteland (03.30)                               | 6030         |
      | geslachtsaanduiding (04.10)                        | V            |
      | aktenummer (81.20)                                 | 1AA0001      |
      | ingangsdatum geldigheid (85.10)                    | 20190101     |
      | datum ingang familierechtelijke betrekking (62.10) | 20190101     |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0001  |
      | ingangsdatum geldigheid (85.10) | 20190101 |
    En ouder 2 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Nicodemus |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Nimwegen  |
      | geboortedatum (03.10)                              | 19900901  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0001   |
      | ingangsdatum geldigheid (85.10)                    | 20210101  |
      | datum ingang familierechtelijke betrekking (62.10) | 20200101  |
    En ouder 2 is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AN0001  |
      | ingangsdatum geldigheid (85.10) | 20210101 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20190101 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde                     |
      | indicatie gezag minderjarige (32.10) | 12                         |
      | beschrijving document (82.30)        | kennsigeving gezagregister |
      | ingangsdatum geldigheid (85.10)      | 20210501                   |


  Scenario: Lg01_169 - vrouw niet gehuwd/GP, 1 minderjarig kind geadopteerd, 1 minderjarig kind erkend en later erkenning vernietigd
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Nicolette'
    Dan is het gezag over 'Nicolas' gezamenlijk ouderlijk gezag met ouder 'Nicolette' en ouder 'Nicodemus'
    Dan is het gezag over 'Niels' eenhoofdig ouderlijk gezag met ouder 'Nicolette'

  Scenario: Lg01_170 - man niet gehuwd/GP, 1 minderjarig kind geadopteerd, 1 minderjarig kind erkend en later erkenning vernietigd
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Nicodemus'
    Dan is het gezag over 'Nicolas' gezamenlijk ouderlijk gezag met ouder 'Nicolette' en ouder 'Nicodemus'

  Scenario: Lg01_171 - kind, geboren uit alleen moeder, vervolgens gezag 1D, later geactualiseerd in 1, en vervolgens 1-ouder adoptie
    # Route: 33
    Als 'gezag' wordt gevraagd van 'Nicolas'
    Dan is het gezag over 'Nicolas' gezamenlijk ouderlijk gezag met ouder 'Nicolette' en ouder 'Nicodemus'

  Scenario: Lg01_172 - kind geboren uit alleen moeder, erkend door vader, vervolgens gezag 12 en daarna vernietiging erkenning
    # Route: 18o1
    Als 'gezag' wordt gevraagd van 'Niels'
    Dan is het gezag over 'Niels' eenhoofdig ouderlijk gezag met ouder 'Nicolette'
