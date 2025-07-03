#language: nl

@deprecated @gezag-api
Functionaliteit: Tg023 - Egberts-Ederveen Cat.11 = 12


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 49                 | 0518200000583555                           |
    Gegeven adres 'A2'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 51                 | 0518200000583556                           |
    
    # Lg01_125 - 3 erkende kinderen
    Gegeven de persoon 'Ewald' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Ewald    |
      | geslachtsnaam (02.40)           | Egberts  |
      | geboortedatum (03.10)           | 19721001 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Engel    |
      | geslachtsnaam (02.40)                              | Egberts  |
      | geboortedatum (03.10)                              | 19440401 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Evertje  |
      | geslachtsnaam (02.40)                              | Esveld   |
      | geboortedatum (03.10)                              | 19460901 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Esmee' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Esmee     |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20200501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0104   |
      | ingangsdatum geldigheid (85.10) | 20210301  |
    En heeft een kind 'Esther' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Esther    |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20150801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0102   |
      | ingangsdatum geldigheid (85.10) | 20161001  |
    En heeft een kind 'Eveline' met de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Eveline  |
      | geslachtsnaam (02.40)           | Ederveen |
      | geboortedatum (03.10)           | 20180401 |
      | geboorteland (03.30)            | 6030     |
      | aktenummer (81.20)              | 1AC0103  |
      | ingangsdatum geldigheid (85.10) | 20190601 |
    
    # Lg01_126 - 3 erkende kinderen
    Gegeven de persoon 'Edwina' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Edwina   |
      | geslachtsnaam (02.40)           | Ederveen |
      | geboortedatum (03.10)           | 19891201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Eduard   |
      | geslachtsnaam (02.40)                              | Ederveen |
      | geboortedatum (03.10)                              | 19450301 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Eibeltje |
      | geslachtsnaam (02.40)                              | Eekhoorn |
      | geboortedatum (03.10)                              | 19470201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Esther' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Esther    |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20150801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0102   |
      | ingangsdatum geldigheid (85.10) | 20150801  |
    En kind 'Esther' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Esther    |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20150801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0102   |
      | ingangsdatum geldigheid (85.10) | 20161001  |
    En heeft een kind 'Eveline' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Eveline   |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20180401  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0103   |
      | ingangsdatum geldigheid (85.10) | 20180401  |
    En kind 'Eveline' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Eveline   |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20180401  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0103   |
      | ingangsdatum geldigheid (85.10) | 20190601  |
    En heeft een kind 'Esmee' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Esmee     |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20200501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0104   |
      | ingangsdatum geldigheid (85.10) | 20200501  |
    En kind 'Esmee' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Esmee     |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20200501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0104   |
      | ingangsdatum geldigheid (85.10) | 20210301  |
    
    # Lg01_127 - erkend, categorie 09 op PL vader/erkenner zonder SoFi-nr/BSN, indicatie gezag 12
    Gegeven de persoon 'Esther' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Esther   |
      | geslachtsnaam (02.40)           | Ederveen |
      | geboortedatum (03.10)           | 20150801 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0102  |
      | ingangsdatum geldigheid (85.10) | 20150801 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Esther    |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20150801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0102   |
      | ingangsdatum geldigheid (85.10) | 20161001  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0102  |
      | ingangsdatum geldigheid (85.10) | 20150801 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Ewald     |
      | geslachtsnaam (02.40)                              | Egberts   |
      | geboortedatum (03.10)                              | 19721001  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0102   |
      | ingangsdatum geldigheid (85.10)                    | 20161001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20161001  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Edwina    |
      | geslachtsnaam (02.40)                              | Ederveen  |
      | geboortedatum (03.10)                              | 19891201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0102   |
      | ingangsdatum geldigheid (85.10)                    | 20150801  |
      | datum ingang familierechtelijke betrekking (62.10) | 20150801  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20150801 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 12                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20210901                    |
    
    # Lg01_128 - erkend, categorie 03 op PL kind zonder SoFi-nr/BSN, wel A-nr/BSN in categorie 09 PL vader/erkenner, indicatie gezag 12
    Gegeven de persoon 'Eveline' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Eveline  |
      | geslachtsnaam (02.40)           | Ederveen |
      | geboortedatum (03.10)           | 20180401 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0103  |
      | ingangsdatum geldigheid (85.10) | 20180401 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Eveline   |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20180401  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0103   |
      | ingangsdatum geldigheid (85.10) | 20190601  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0103  |
      | ingangsdatum geldigheid (85.10) | 20180401 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Ewald    |
      | geslachtsnaam (02.40)                              | Egberts  |
      | geboortedatum (03.10)                              | 19721001 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | aktenummer (81.20)                                 | 1AC0103  |
      | ingangsdatum geldigheid (85.10)                    | 20190601 |
      | datum ingang familierechtelijke betrekking (62.10) | 20190601 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Edwina    |
      | geslachtsnaam (02.40)                              | Ederveen  |
      | geboortedatum (03.10)                              | 19891201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0103   |
      | ingangsdatum geldigheid (85.10)                    | 20180401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20180401  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20180401 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 12                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20210901                    |
    
    # Lg01_129 - erkend categorie 03 op PL kind met Anr/BSN, categorie 09 ontbreekt bij vader, indicatie gezag 12
    Gegeven de persoon 'Esmee' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Esmee    |
      | geslachtsnaam (02.40)           | Ederveen |
      | geboortedatum (03.10)           | 20200501 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0104  |
      | ingangsdatum geldigheid (85.10) | 20200501 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Esmee     |
      | geslachtsnaam (02.40)           | Ederveen  |
      | geboortedatum (03.10)           | 20200501  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0104   |
      | ingangsdatum geldigheid (85.10) | 20210301  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | aktenummer (81.20)                                 | 1AA0104  |
      | ingangsdatum geldigheid (85.10)                    | 20200501 |
      | datum ingang familierechtelijke betrekking (62.10) | 20200501 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Ewald     |
      | geslachtsnaam (02.40)                              | Egberts   |
      | geboortedatum (03.10)                              | 19721001  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0104   |
      | ingangsdatum geldigheid (85.10)                    | 20210301  |
      | datum ingang familierechtelijke betrekking (62.10) | 20021030  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Edwina    |
      | geslachtsnaam (02.40)                              | Ederveen  |
      | geboortedatum (03.10)                              | 19891201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0104   |
      | ingangsdatum geldigheid (85.10)                    | 20200501  |
      | datum ingang familierechtelijke betrekking (62.10) | 20200501  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20200501 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 12                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20210901                    |


  Scenario: Lg01_125 - 3 erkende kinderen
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Ewald'
    Dan heeft 'Ewald' de volgende gezagsrelaties
    * is het gezag over 'Esther' gezamenlijk ouderlijk gezag met ouder 'Edwina' en ouder 'Ewald'
    * is het gezag over 'Esmee' gezamenlijk ouderlijk gezag met ouder 'Edwina' en ouder 'Ewald'

  Scenario: Lg01_126 - 3 erkende kinderen
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Edwina'
    Dan heeft 'Edwina' de volgende gezagsrelaties
    * is het gezag over 'Esther' gezamenlijk ouderlijk gezag met ouder 'Edwina' en ouder 'Ewald'
    * is het gezag over 'Esmee' gezamenlijk ouderlijk gezag met ouder 'Edwina' en ouder 'Ewald'

  Scenario: Lg01_127 - erkend, categorie 09 op PL vader/erkenner zonder SoFi-nr/BSN, indicatie gezag 12
    # Route: 7
    Als 'gezag' wordt gevraagd van 'Esther'
    Dan is het gezag over 'Esther' gezamenlijk ouderlijk gezag met ouder 'Edwina' en ouder 'Ewald'

  Scenario: Lg01_128 - erkend, categorie 03 op PL kind zonder SoFi-nr/BSN, wel A-nr/BSN in categorie 09 PL vader/erkenner, indicatie gezag 12
    # Route: 7e
    Als 'gezag' wordt gevraagd van 'Eveline'
    Dan is het gezag over 'Eveline' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat relevante gegevens ontbreken. Het gaat om de volgende gegevens: ouder1 van bevraagde persoon is niet in BRP geregistreerd'

  Scenario: Lg01_129 - erkend categorie 03 op PL kind met Anr/BSN, categorie 09 ontbreekt bij vader, indicatie gezag 12
    # Route: 7
    Als 'gezag' wordt gevraagd van 'Esmee'
    Dan is het gezag over 'Esmee' gezamenlijk ouderlijk gezag met ouder 'Edwina' en ouder 'Ewald'
