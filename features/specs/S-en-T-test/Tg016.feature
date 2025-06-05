#language: nl

@deprecated @gezag-api
Functionaliteit: Tg016 - Petersen-Perquin & Peereboom-Peek & Pauwels-Platje


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 31                 | 0518200000583546                           |
    Gegeven adres 'A2'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 33                 | 0518200000583547                           |
    Gegeven adres 'A3'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 35                 | 0518200000583548                           |
    
    # Lg01_087 - geregistreerd partnerschap, overleden
    Gegeven de persoon 'Peter' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Peter    |
      | geslachtsnaam (02.40)           | Petersen |
      | geboortedatum (03.10)           | 19841001 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Paula    |
      | geslachtsnaam (02.40)                              | Pieters  |
      | geboortedatum (03.10)                              | 19601201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Pieter   |
      | geslachtsnaam (02.40)                              | Petersen |
      | geboortedatum (03.10)                              | 19590401 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Priscilla' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Priscilla |
      | geslachtsnaam (02.40)                                               | Perquin   |
      | geboortedatum (03.10)                                               | 19861101  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 5AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20130201  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20130201  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20200601 |
      | aktenummer (81.20)              | 2AA0100  |
      | ingangsdatum geldigheid (85.10) | 20200601 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20200601 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_088 - geregistreerd partnerschap, overleden
    Gegeven de persoon 'Priscilla' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Priscilla |
      | geslachtsnaam (02.40)           | Perquin   |
      | geboortedatum (03.10)           | 19861101  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Pien     |
      | geslachtsnaam (02.40)                              | Pauw     |
      | geboortedatum (03.10)                              | 19580901 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Pascal   |
      | geslachtsnaam (02.40)                              | Perquin  |
      | geboortedatum (03.10)                              | 19590701 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'partner-1' met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 5AA0100  |
      | ingangsdatum geldigheid (85.10) | 20130201 |
    En partner 'partner-1' is gewijzigd naar de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Peter     |
      | geslachtsnaam (02.40)                                               | Petersen  |
      | geboortedatum (03.10)                                               | 19841001  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 2AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20200601  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20130201  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)        | 20200601  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20)       | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)         | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)        | O         |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20210801 |
      | aktenummer (81.20)              | 2AA0101  |
      | ingangsdatum geldigheid (85.10) | 20210801 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20210801 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Pascalle' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Pascalle  |
      | geslachtsnaam (02.40)           | Perquin   |
      | geboortedatum (03.10)           | 20131201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0101   |
      | ingangsdatum geldigheid (85.10) | 20131201  |
    En heeft een kind 'Pierre' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Pierre    |
      | geslachtsnaam (02.40)           | Perquin   |
      | geboortedatum (03.10)           | 20131201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20131201  |
    
    # Lg01_089 - niet erkend minderjarig kind, moeder geregistreerd partnerschap voor 01-04-2014, zowel moeder als geregistreerd partner moeder overleden
    Gegeven de persoon 'Pierre' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Pierre   |
      | geslachtsnaam (02.40)           | Perquin  |
      | geboortedatum (03.10)           | 20131201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20131201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Priscilla |
      | geslachtsnaam (02.40)                              | Perquin   |
      | geboortedatum (03.10)                              | 19861101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20131201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20131201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20131201 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20131201 |
    
    # Lg01_090 - niet erkend minderjarig kind, moeder geregistreerd partnerschap voor 01-04-2014, zowel moeder als geregistreerd partner moeder overleden, gezag 1D opgenomen vóór overlijden moeder
    Gegeven de persoon 'Pascalle' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Pascalle |
      | geslachtsnaam (02.40)           | Perquin  |
      | geboortedatum (03.10)           | 20131201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0101  |
      | ingangsdatum geldigheid (85.10) | 20131201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Priscilla |
      | geslachtsnaam (02.40)                              | Perquin   |
      | geboortedatum (03.10)                              | 19861101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0101   |
      | ingangsdatum geldigheid (85.10)                    | 20131201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20131201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0101  |
      | ingangsdatum geldigheid (85.10) | 20131201 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20131201 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 1D                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20201201                    |
    
    # Lg01_091 - huwelijk tussen 2 vrouwen vóór 01-04-2014, huwelijkspartner niet automatisch ouder van kind, partner overleden
    Gegeven de persoon 'Patricia' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Patricia  |
      | geslachtsnaam (02.40)           | Peereboom |
      | geboortedatum (03.10)           | 19830201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Plony     |
      | geslachtsnaam (02.40)                              | Peereboom |
      | geboortedatum (03.10)                              | 19600501  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En heeft een partner 'Pieta' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000073 |
      | voornamen (02.10)                                                   | Pieta     |
      | geslachtsnaam (02.40)                                               | Peek      |
      | geboortedatum (03.10)                                               | 19720201  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0101   |
      | ingangsdatum geldigheid (85.10)                                     | 20130201  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20130201  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Pieta' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000073 |
      | voornamen (02.10)                                             | Pieta     |
      | geslachtsnaam (02.40)                                         | Peek      |
      | geboortedatum (03.10)                                         | 19720201  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | V         |
      | aktenummer (81.20)                                            | 2AA0102   |
      | ingangsdatum geldigheid (85.10)                               | 20201201  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20201201  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | O         |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Pepita' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Pepita    |
      | geslachtsnaam (02.40)           | Peereboom |
      | geboortedatum (03.10)           | 20131001  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0102   |
      | ingangsdatum geldigheid (85.10) | 20131001  |
    
    # Lg01_092 - huwelijk tussen 2 vrouwen vóór 01-04-2014, huwelijkspartner niet automatisch ouder van kind, overleden
    Gegeven de persoon 'Pieta' met burgerservicenummer '000000073'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Pieta    |
      | geslachtsnaam (02.40)           | Peek     |
      | geboortedatum (03.10)           | 19720201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Puck     |
      | geslachtsnaam (02.40)                              | Peek     |
      | geboortedatum (03.10)                              | 19500401 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En heeft een partner 'Patricia' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000061 |
      | voornamen (02.10)                                                   | Patricia  |
      | geslachtsnaam (02.40)                                               | Peereboom |
      | geboortedatum (03.10)                                               | 19830301  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0101   |
      | ingangsdatum geldigheid (85.10)                                     | 20130201  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20130201  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20201201 |
      | aktenummer (81.20)              | 2AA0102  |
      | ingangsdatum geldigheid (85.10) | 20201201 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20201201 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_093 - moeder gehuwd met vrouw vóór 01-04-2014, partner moeder geen ouder maar wel gezamenlijk gezag, partner moeder overleden
    Gegeven de persoon 'Pepita' met burgerservicenummer '000000085'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Pepita    |
      | geslachtsnaam (02.40)           | Peereboom |
      | geboortedatum (03.10)           | 20131001  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AA0102   |
      | ingangsdatum geldigheid (85.10) | 20131001  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000061 |
      | voornamen (02.10)                                  | Patricia  |
      | geslachtsnaam (02.40)                              | Peereboom |
      | geboortedatum (03.10)                              | 19830301  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0102   |
      | ingangsdatum geldigheid (85.10)                    | 20131001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20131001  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0102  |
      | ingangsdatum geldigheid (85.10) | 20131001 |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20131001 |
    
    # Lg01_094 - gehuwd, overleden
    Gegeven de persoon 'Pauwel' met burgerservicenummer '000000097'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Pauwel   |
      | geslachtsnaam (02.40)           | Pauwels  |
      | geboortedatum (03.10)           | 19780801 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Piny      |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Pinxteren |
      | geboortedatum (03.10)                              | 19480801  |
      | geboorteland (03.30)                               | 0         |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Pier     |
      | geslachtsnaam (02.40)                              | Pauwels  |
      | geboortedatum (03.10)                              | 19460601 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Paula' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000103 |
      | voornamen (02.10)                                                   | Paula     |
      | geslachtsnaam (02.40)                                               | Platje    |
      | geboortedatum (03.10)                                               | 19790901  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0101   |
      | ingangsdatum geldigheid (85.10)                                     | 20160301  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20160301  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Paula' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000103 |
      | voornamen (02.10)                                             | Paula     |
      | geslachtsnaam (02.40)                                         | Platje    |
      | geboortedatum (03.10)                                         | 19790901  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | V         |
      | aktenummer (81.20)                                            | 2AA0100   |
      | ingangsdatum geldigheid (85.10)                               | 20190101  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20190101  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | O         |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20210801 |
      | aktenummer (81.20)              | 2AA0100  |
      | ingangsdatum geldigheid (85.10) | 20210801 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20210801 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A3' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Paul' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000115 |
      | voornamen (02.10)               | Paul      |
      | geslachtsnaam (02.40)           | Pauwels   |
      | geboortedatum (03.10)           | 20181001  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0103   |
      | ingangsdatum geldigheid (85.10) | 20181001  |
    
    # Lg01_095 - gehuwd, overleden
    Gegeven de persoon 'Paula' met burgerservicenummer '000000103'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Paula    |
      | geslachtsnaam (02.40)           | Platje   |
      | geboortedatum (03.10)           | 19790901 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Pola       |
      | geslachtsnaam (02.40)                              | Praatgraag |
      | geboortedatum (03.10)                              | 19480901   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | V          |
      | beschrijving document (82.30)                      | PK         |
      | ingangsdatum geldigheid (85.10)                    | 0          |
      | datum ingang familierechtelijke betrekking (62.10) | 0          |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Peer     |
      | geslachtsnaam (02.40)                              | Platje   |
      | geboortedatum (03.10)                              | 19450501 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Pauwel' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000097 |
      | voornamen (02.10)                                                   | Pauwel    |
      | geslachtsnaam (02.40)                                               | Pauwels   |
      | geboortedatum (03.10)                                               | 19780801  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0101   |
      | ingangsdatum geldigheid (85.10)                                     | 20160301  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20160301  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20190101 |
      | aktenummer (81.20)              | 2AA0100  |
      | ingangsdatum geldigheid (85.10) | 20190101 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20190101 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A3' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Paul' met de volgende gegevens
      | naam                        | waarde    |
      | burgerservicenummer (01.20) | 000000115 |
      | voornamen (02.10)           | Paul      |
      | geslachtsnaam (02.40)       | Pauwels   |
      | geboortedatum (03.10)       | 20181001  |
      | geboorteland (03.30)        | 6030      |
      | aktenummer (81.20)          | 1AA0103   |
    
    # Lg01_096 - minderjarig kind van gehuwde ouders, beide ouders overleden, geen gezagsverhouding in cat 11
    Gegeven de persoon 'Paul' met burgerservicenummer '000000115'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Paul     |
      | geslachtsnaam (02.40)           | Pauwels  |
      | geboortedatum (03.10)           | 20181001 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0103  |
      | ingangsdatum geldigheid (85.10) | 20181001 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000103 |
      | voornamen (02.10)                                  | Paula     |
      | geslachtsnaam (02.40)                              | Platje    |
      | geboortedatum (03.10)                              | 19790901  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0103   |
      | ingangsdatum geldigheid (85.10)                    | 20181001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20181001  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000097 |
      | voornamen (02.10)                                  | Pauwel    |
      | geslachtsnaam (02.40)                              | Pauwels   |
      | geboortedatum (03.10)                              | 19780801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0103   |
      | ingangsdatum geldigheid (85.10)                    | 20181001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20181001  |
    En is ingeschreven op adres 'A3' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20181001 |


  Scenario: Lg01_087 - geregistreerd partnerschap, overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Peter'
    Dan heeft 'Peter' geen gezaghouder

  Scenario: Lg01_088 - geregistreerd partnerschap, overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Priscilla'
    Dan heeft 'Priscilla' geen gezaghouder

  Scenario: Lg01_089 - niet erkend minderjarig kind, moeder geregistreerd partnerschap voor 01-04-2014, zowel moeder als geregistreerd partner moeder overleden
    # Route: 44oo
    Als 'gezag' wordt gevraagd van 'Pierre'
    Dan is het gezag over 'Pierre' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat beide ouders overleden zijn.'

  Scenario: Lg01_090 - niet erkend minderjarig kind, moeder geregistreerd partnerschap voor 01-04-2014, zowel moeder als geregistreerd partner moeder overleden, gezag 1D opgenomen vóór overlijden moeder
    # Route: 4
    Als 'gezag' wordt gevraagd van 'Pascalle'
    Dan is het gezag over 'Pascalle' voogdij

  Scenario: Lg01_091 - huwelijk tussen 2 vrouwen vóór 01-04-2014, huwelijkspartner niet automatisch ouder van kind, partner overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Patricia'
    Dan is het gezag over 'Pepita' eenhoofdig ouderlijk gezag met ouder 'Patricia'

  Scenario: Lg01_092 - huwelijk tussen 2 vrouwen vóór 01-04-2014, huwelijkspartner niet automatisch ouder van kind, overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Pieta'
    Dan heeft 'Pieta' geen gezaghouder

  Scenario: Lg01_093 - moeder gehuwd met vrouw vóór 01-04-2014, partner moeder geen ouder maar wel gezamenlijk gezag, partner moeder overleden
    # Route: 42no1
    Als 'gezag' wordt gevraagd van 'Pepita'
    Dan is het gezag over 'Pepita' eenhoofdig ouderlijk gezag met ouder 'Patricia'

  Scenario: Lg01_094 - gehuwd, overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Pauwel'
    Dan heeft 'Pauwel' geen gezaghouder

  Scenario: Lg01_095 - gehuwd, overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Paula'
    Dan heeft 'Paula' geen gezaghouder

  Scenario: Lg01_096 - minderjarig kind van gehuwde ouders, beide ouders overleden, geen gezagsverhouding in cat 11
    # Route: 48oo
    Als 'gezag' wordt gevraagd van 'Paul'
    Dan is het gezag over 'Paul' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat beide ouders overleden zijn.'
