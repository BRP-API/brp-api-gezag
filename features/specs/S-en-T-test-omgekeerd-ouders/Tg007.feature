#language: nl

@deprecated @gezag-api
Functionaliteit: Tg007 - Frederiks-Faassen


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 11                 | 0518200000583533                           |
    
    # Lg01_028 - gehuwd, 1 minderjarig kind erkend vóór huwelijk, 1 minderjarig kind geboren ná huwelijk, echtgenoot onder curatele
    Gegeven de persoon 'Fieke' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Fieke     |
      | geslachtsnaam (02.40)           | Frederiks |
      | geboortedatum (03.10)           | 19801201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Filip     |
      | geslachtsnaam (02.40)                              | Frederiks |
      | geboortedatum (03.10)                              | 19401201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Fiona    |
      | geslachtsnaam (02.40)                              | Franssen |
      | geboortedatum (03.10)                              | 19451201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Fabian-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Fabian    |
      | geslachtsnaam (02.40)                                               | Faassen   |
      | geboortedatum (03.10)                                               | 19791201  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20080501  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20080501  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Frits' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Frits     |
      | geslachtsnaam (02.40)           | Frederiks |
      | geboortedatum (03.10)           | 20171201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0300   |
      | ingangsdatum geldigheid (85.10) | 20171201  |
    En heeft een kind 'Frans' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Frans     |
      | geslachtsnaam (02.40)           | Frederiks |
      | geboortedatum (03.10)           | 20181201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0300   |
      | ingangsdatum geldigheid (85.10) | 20181201  |
    
    # Lg01_029 - gehuwd, 1 minderjarig kind erkend vóór huwelijk, 1 minderjarig kind geboren ná huwelijk, onder curatele
    Gegeven de persoon 'Fabian' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Fabian   |
      | geslachtsnaam (02.40)           | Faassen  |
      | geboortedatum (03.10)           | 19791201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Frederik |
      | geslachtsnaam (02.40)                              | Faassen  |
      | geboortedatum (03.10)                              | 19411201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Francisca |
      | geslachtsnaam (02.40)                              | Fabel     |
      | geboortedatum (03.10)                              | 19441201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Fieke-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Fieke     |
      | geslachtsnaam (02.40)                                               | Frederiks |
      | geboortedatum (03.10)                                               | 19801201  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20080501  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20080501  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Frits' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Frits     |
      | geslachtsnaam (02.40)           | Frederiks |
      | geboortedatum (03.10)           | 20171201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0300   |
      | ingangsdatum geldigheid (85.10) | 20171201  |
    En heeft een kind 'Frans' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Frans     |
      | geslachtsnaam (02.40)           | Frederiks |
      | geboortedatum (03.10)           | 20181201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0300   |
      | ingangsdatum geldigheid (85.10) | 20181201  |
    En heeft de volgende gezagsverhouding gegevens
      | naam                               | waarde                      |
      | indicatie curateleregister (33.10) | 1                           |
      | beschrijving document (82.30)      | uittreksel curateleregister |
      | ingangsdatum geldigheid (85.10)    | 20210301                    |
    
    # Lg01_030 - minderjarige kind, geboren tijdens huwelijk ouders, vader (Ouder2) onder curatele
    Gegeven de persoon 'Frans' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Frans     |
      | geslachtsnaam (02.40)           | Frederiks |
      | geboortedatum (03.10)           | 20181201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AA0300   |
      | ingangsdatum geldigheid (85.10) | 20181201  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Fabian    |
      | geslachtsnaam (02.40)                              | Faassen   |
      | geboortedatum (03.10)                              | 19791201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0300   |
      | ingangsdatum geldigheid (85.10)                    | 20181201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20181201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Fieke     |
      | geslachtsnaam (02.40)                              | Frederiks |
      | geboortedatum (03.10)                              | 19801201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0300   |
      | ingangsdatum geldigheid (85.10)                    | 20181201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20181201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20181201 |
    
    # Lg01_031 - minderjarig erkend kind, ouders inmiddels gehuwd, vader (Ouder2) onder curatele
    Gegeven de persoon 'Frits' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Frits     |
      | geslachtsnaam (02.40)           | Frederiks |
      | geboortedatum (03.10)           | 20171201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AA0300   |
      | ingangsdatum geldigheid (85.10) | 20171201  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Fabian    |
      | geslachtsnaam (02.40)                              | Faassen   |
      | geboortedatum (03.10)                              | 19791201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0300   |
      | ingangsdatum geldigheid (85.10)                    | 20171201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20171201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Fieke     |
      | geslachtsnaam (02.40)                              | Frederiks |
      | geboortedatum (03.10)                              | 19801201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0300   |
      | ingangsdatum geldigheid (85.10)                    | 20171201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20171201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20171201 |


  Scenario: Lg01_028 - gehuwd, 1 minderjarig kind erkend vóór huwelijk, 1 minderjarig kind geboren ná huwelijk, echtgenoot onder curatele
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Fieke'
    Dan heeft 'Fieke' de volgende gezagsrelaties
    * is het gezag over 'Frans' eenhoofdig ouderlijk gezag met ouder 'Fieke'
    * is het gezag over 'Frits' eenhoofdig ouderlijk gezag met ouder 'Fieke'

  Scenario: Lg01_029 - gehuwd, 1 minderjarig kind erkend vóór huwelijk, 1 minderjarig kind geboren ná huwelijk, onder curatele
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Fabian'
    Dan heeft 'Fabian' geen gezaghouder

  Scenario: Lg01_030 - minderjarige kind, geboren tijdens huwelijk ouders, vader (Ouder2) onder curatele
    # Route: 51
    Als 'gezag' wordt gevraagd van 'Frans'
    Dan is het gezag over 'Frans' eenhoofdig ouderlijk gezag met ouder 'Fieke'

  Scenario: Lg01_031 - minderjarig erkend kind, ouders inmiddels gehuwd, vader (Ouder2) onder curatele
    # Route: 51
    Als 'gezag' wordt gevraagd van 'Frits'
    Dan is het gezag over 'Frits' eenhoofdig ouderlijk gezag met ouder 'Fieke'
