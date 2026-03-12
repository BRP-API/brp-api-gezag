#language: nl

@gezag-api
Functionaliteit: Tg008 - Gerritsen-Groningen-Gouda


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 13                 | 0518200000583534                           |
    Gegeven adres 'A2'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | huisletter (11.30) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 13                 | a                  | 0518200000583535                           |
    
    # Lg01_032 - gescheiden, 1 minderjarig kind erkend vóór huwelijk, 1 minderjarig kind tijdens huwelijk
    Gegeven de persoon 'Gea' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Gea       |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 19800801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Gerrit    |
      | geslachtsnaam (02.40)                              | Gerritsen |
      | geboortedatum (03.10)                              | 19480801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Gerritje |
      | geslachtsnaam (02.40)                              | Gaastra  |
      | geboortedatum (03.10)                              | 19500801 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Govert-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Govert    |
      | voorvoegsel (02.30)                                                 | van       |
      | geslachtsnaam (02.40)                                               | Groningen |
      | geboortedatum (03.10)                                               | 19820801  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20120801  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20120801  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Govert-0' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000024 |
      | voornamen (02.10)                                             | Govert    |
      | voorvoegsel (02.30)                                           | van       |
      | geslachtsnaam (02.40)                                         | Groningen |
      | geboortedatum (03.10)                                         | 19820801  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | M         |
      | aktenummer (81.20)                                            | 3AB0100   |
      | ingangsdatum geldigheid (85.10)                               | 20200801  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20200801  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S         |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Gabriel' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Gabriel   |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 20100801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0200   |
      | ingangsdatum geldigheid (85.10) | 20100801  |
    En kind 'Gabriel' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Gabriel   |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Groningen |
      | geboortedatum (03.10)           | 20100801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0200   |
      | ingangsdatum geldigheid (85.10) | 20100901  |
    En heeft een kind 'Gaston' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Gaston    |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Groningen |
      | geboortedatum (03.10)           | 20130801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0200   |
      | ingangsdatum geldigheid (85.10) | 20130801  |
    
    # Lg01_033 - gescheiden, 1 minderjarig kind erkend vóór huwelijk, 1 minderjarig kind tijdens huwelijk
    Gegeven de persoon 'Govert' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Govert    |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Groningen |
      | geboortedatum (03.10)           | 19820801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Gijsbert  |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Groningen |
      | geboortedatum (03.10)                              | 19510301  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Goverdina |
      | geslachtsnaam (02.40)                              | Guitema   |
      | geboortedatum (03.10)                              | 19520301  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Gea-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Gea       |
      | geslachtsnaam (02.40)                                               | Gerritsen |
      | geboortedatum (03.10)                                               | 19800801  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20120801  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20120801  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Gea-0' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000012 |
      | voornamen (02.10)                                             | Gea       |
      | geslachtsnaam (02.40)                                         | Gerritsen |
      | geboortedatum (03.10)                                         | 19800801  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | V         |
      | aktenummer (81.20)                                            | 3AB0100   |
      | ingangsdatum geldigheid (85.10)                               | 20200801  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20200801  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S         |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Gabriel' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Gabriel   |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 20100801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0200   |
      | ingangsdatum geldigheid (85.10) | 20100801  |
    En kind 'Gabriel' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Gabriel   |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Groningen |
      | geboortedatum (03.10)           | 20100801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0200   |
      | ingangsdatum geldigheid (85.10) | 20100901  |
    En heeft een kind 'Gaston' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Gaston    |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Groningen |
      | geboortedatum (03.10)           | 20130801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0200   |
      | ingangsdatum geldigheid (85.10) | 20130801  |
    
    # Lg01_034 - minderjarig kind, erkend ná de geboorte, ouders vervolgens gehuwd en weer gescheiden, categorie 11 met 12 vóór huwelijk ouders
    Gegeven de persoon 'Gabriel' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Gabriel   |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 20100801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AA0200   |
      | ingangsdatum geldigheid (85.10) | 20100801  |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Gabriel   |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Groningen |
      | geboortedatum (03.10)           | 20100801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AC0200   |
      | ingangsdatum geldigheid (85.10) | 20100901  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0200  |
      | ingangsdatum geldigheid (85.10) | 20100801 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Govert    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Groningen |
      | geboortedatum (03.10)                              | 19820801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0200   |
      | ingangsdatum geldigheid (85.10)                    | 20100901  |
      | datum ingang familierechtelijke betrekking (62.10) | 20100901  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Gea       |
      | geslachtsnaam (02.40)                              | Gerritsen |
      | geboortedatum (03.10)                              | 19800801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0200   |
      | ingangsdatum geldigheid (85.10)                    | 20100801  |
      | datum ingang familierechtelijke betrekking (62.10) | 20100801  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 12                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20101001                    |
    
    # Lg01_035 - minderjarig kind, geboren tijdens huwelijk ouders, ouders inmiddels gescheiden, geen categorie 11
    Gegeven de persoon 'Gaston' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Gaston    |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Groningen |
      | geboortedatum (03.10)           | 20130801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AA0200   |
      | ingangsdatum geldigheid (85.10) | 20130801  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Govert    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Groningen |
      | geboortedatum (03.10)                              | 19820801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0200   |
      | ingangsdatum geldigheid (85.10)                    | 20130801  |
      | datum ingang familierechtelijke betrekking (62.10) | 20130801  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Gea       |
      | geslachtsnaam (02.40)                              | Gerritsen |
      | geboortedatum (03.10)                              | 19800801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0200   |
      | ingangsdatum geldigheid (85.10)                    | 20130801  |
      | datum ingang familierechtelijke betrekking (62.10) | 20130801  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20130801 |
    
    # Lg01_036 - gescheiden, 1 minderjarig erkend kind geboren ná de echtscheiding
    Gegeven de persoon 'Gerda' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Gerda     |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 19800801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Gerrit    |
      | geslachtsnaam (02.40)                              | Gerritsen |
      | geboortedatum (03.10)                              | 19480801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Gerritje |
      | geslachtsnaam (02.40)                              | Gaastra  |
      | geboortedatum (03.10)                              | 19500801 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Gert-Jan-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000073 |
      | voornamen (02.10)                                                   | Gert-Jan  |
      | voorvoegsel (02.30)                                                 | van       |
      | geslachtsnaam (02.40)                                               | Gouda     |
      | geboortedatum (03.10)                                               | 19780801  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20060801  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20060801  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Gert-Jan-0' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000073 |
      | voornamen (02.10)                                             | Gert-Jan  |
      | voorvoegsel (02.30)                                           | van       |
      | geslachtsnaam (02.40)                                         | Gouda     |
      | geboortedatum (03.10)                                         | 19780801  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | M         |
      | aktenummer (81.20)                                            | 3AB0100   |
      | ingangsdatum geldigheid (85.10)                               | 20100801  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20100801  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S         |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Gigi' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Gigi      |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 20120801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20120801  |
    En kind 'Gigi' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Gigi      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Gouda     |
      | geboortedatum (03.10)           | 20120801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AB0100   |
      | ingangsdatum geldigheid (85.10) | 20120803  |
    En heeft een kind 'Gina' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Gina      |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 20130801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20130801  |
    En kind 'Gina' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Gina      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Gouda     |
      | geboortedatum (03.10)           | 20130801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AB0100   |
      | ingangsdatum geldigheid (85.10) | 20130803  |
    En heeft een kind 'Guido' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Guido     |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Gouda     |
      | geboortedatum (03.10)           | 20140801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20140801  |
    
    # Lg01_037 - gescheiden, 1 minderjarig erkend kind geboren ná de echtscheiding
    Gegeven de persoon 'Gert-Jan' met burgerservicenummer '000000073'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Gert-Jan |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Gouda    |
      | geboortedatum (03.10)           | 19780801 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Gaart    |
      | voorvoegsel (02.30)                                | van      |
      | geslachtsnaam (02.40)                              | Gouda    |
      | geboortedatum (03.10)                              | 19440501 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Grada    |
      | geslachtsnaam (02.40)                              | Goudsmit |
      | geboortedatum (03.10)                              | 19460501 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Gerda-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000061 |
      | voornamen (02.10)                                                   | Gerda     |
      | geslachtsnaam (02.40)                                               | Gerritsen |
      | geboortedatum (03.10)                                               | 19800801  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20060801  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20060801  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Gerda-0' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000061 |
      | voornamen (02.10)                                             | Gerda     |
      | geslachtsnaam (02.40)                                         | Gerritsen |
      | geboortedatum (03.10)                                         | 19800801  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | V         |
      | aktenummer (81.20)                                            | 3AB0100   |
      | ingangsdatum geldigheid (85.10)                               | 20100801  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20100801  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S         |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Gigi' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Gigi      |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 20120801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20120801  |
    En kind 'Gigi' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Gigi      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Gouda     |
      | geboortedatum (03.10)           | 20120801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AB0100   |
      | ingangsdatum geldigheid (85.10) | 20120803  |
    En heeft een kind 'Gina' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Gina      |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 20130801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20130801  |
    En kind 'Gina' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Gina      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Gouda     |
      | geboortedatum (03.10)           | 20130801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AB0100   |
      | ingangsdatum geldigheid (85.10) | 20130803  |
    En heeft een kind 'Guido' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Guido     |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Gouda     |
      | geboortedatum (03.10)           | 20140801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20140801  |
    
    # Lg01_038 - erkend kind, ouders gescheiden vóór de geboortedatum, geen categorie 11
    Gegeven de persoon 'Gigi' met burgerservicenummer '000000085'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Gigi      |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 20120801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20120801  |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Gigi      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Gouda     |
      | geboortedatum (03.10)           | 20120801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AB0100   |
      | ingangsdatum geldigheid (85.10) | 20120803  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000061 |
      | voornamen (02.10)                                  | Gerda     |
      | geslachtsnaam (02.40)                              | Gerritsen |
      | geboortedatum (03.10)                              | 19800801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20120801  |
      | datum ingang familierechtelijke betrekking (62.10) | 20120801  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20120801 |
    En ouder 2 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000073 |
      | voornamen (02.10)                                  | Gert-Jan  |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Gouda     |
      | geboortedatum (03.10)                              | 19780801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AB0100   |
      | ingangsdatum geldigheid (85.10)                    | 20120803  |
      | datum ingang familierechtelijke betrekking (62.10) | 20120803  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20120801 |
    
    # Lg01_039 - erkend kind, ouders gescheiden vóór de geboortedatum, in categorie 11 aanduiding '12'
    Gegeven de persoon 'Gina' met burgerservicenummer '000000097'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Gina      |
      | geslachtsnaam (02.40)           | Gerritsen |
      | geboortedatum (03.10)           | 20130801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20130801  |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Gina      |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Gouda     |
      | geboortedatum (03.10)           | 20130801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AB0100   |
      | ingangsdatum geldigheid (85.10) | 20130803  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000061 |
      | voornamen (02.10)                                  | Gerda     |
      | geslachtsnaam (02.40)                              | Gerritsen |
      | geboortedatum (03.10)                              | 19800801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20130801  |
      | datum ingang familierechtelijke betrekking (62.10) | 20130801  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20130801 |
    En ouder 2 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000073 |
      | voornamen (02.10)                                  | Gert-Jan  |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Gouda     |
      | geboortedatum (03.10)                              | 19780801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AB0100   |
      | ingangsdatum geldigheid (85.10)                    | 20130803  |
      | datum ingang familierechtelijke betrekking (62.10) | 20130803  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20130801 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 12                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20131001                    |
    
    # Lg01_040 - erkend als ongeboren vrucht, ouders gescheiden vóór de geboortedatum, in 11 aanduiding 'D'
    Gegeven de persoon 'Guido' met burgerservicenummer '000000103'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Guido    |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Gouda    |
      | geboortedatum (03.10)           | 20140801 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20140801 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000073 |
      | voornamen (02.10)                                  | Gert-Jan  |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Gouda     |
      | geboortedatum (03.10)                              | 19780801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20140801  |
      | datum ingang familierechtelijke betrekking (62.10) | 20140801  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000061 |
      | voornamen (02.10)                                  | Gerda     |
      | geslachtsnaam (02.40)                              | Gerritsen |
      | geboortedatum (03.10)                              | 19800801  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20140801  |
      | datum ingang familierechtelijke betrekking (62.10) | 20140801  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20140801 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | D                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20141001                    |


  Scenario: Lg01_032 - gescheiden, 1 minderjarig kind erkend vóór huwelijk, 1 minderjarig kind tijdens huwelijk
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Gea'
    Dan heeft 'Gea' de volgende gezagsrelaties
    * is het gezag over 'Gabriel' gezamenlijk ouderlijk gezag met ouder 'Gea' en ouder 'Govert'
    * is het gezag over 'Gaston' gezamenlijk ouderlijk gezag met ouder 'Gea' en ouder 'Govert'

  Scenario: Lg01_033 - gescheiden, 1 minderjarig kind erkend vóór huwelijk, 1 minderjarig kind tijdens huwelijk
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Govert'
    Dan heeft 'Govert' de volgende gezagsrelaties
    * is het gezag over 'Gabriel' gezamenlijk ouderlijk gezag met ouder 'Gea' en ouder 'Govert'
    * is het gezag over 'Gaston' gezamenlijk ouderlijk gezag met ouder 'Gea' en ouder 'Govert'

  Scenario: Lg01_034 - minderjarig kind, erkend ná de geboorte, ouders vervolgens gehuwd en weer gescheiden, categorie 11 met 12 vóór huwelijk ouders
    # Route: 7
    Als 'gezag' wordt gevraagd van 'Gabriel'
    Dan is het gezag over 'Gabriel' gezamenlijk ouderlijk gezag met ouder 'Gea' en ouder 'Govert'

  Scenario: Lg01_035 - minderjarig kind, geboren tijdens huwelijk ouders, ouders inmiddels gescheiden, geen categorie 11
    # Route: 45
    Als 'gezag' wordt gevraagd van 'Gaston'
    Dan is het gezag over 'Gaston' gezamenlijk ouderlijk gezag met ouder 'Gea' en ouder 'Govert'

  Scenario: Lg01_036 - gescheiden, 1 minderjarig erkend kind geboren ná de echtscheiding
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Gerda'
    Dan heeft 'Gerda' de volgende gezagsrelaties
    * is het gezag over 'Gigi' eenhoofdig ouderlijk gezag met ouder 'Gerda'
    * is het gezag over 'Gina' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Gert-Jan'

  Scenario: Lg01_037 - gescheiden, 1 minderjarig erkend kind geboren ná de echtscheiding
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Gert-Jan'
    Dan heeft 'Gert-Jan' de volgende gezagsrelaties
    * is het gezag over 'Gina' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Gert-Jan'

  Scenario: Lg01_038 - erkend kind, ouders gescheiden vóór de geboortedatum, geen categorie 11
    # Route: 54v2
    Als 'gezag' wordt gevraagd van 'Gigi'
    Dan is het gezag over 'Gigi' eenhoofdig ouderlijk gezag met ouder 'Gerda'

  Scenario: Lg01_039 - erkend kind, ouders gescheiden vóór de geboortedatum, in categorie 11 aanduiding '12'
    # Route: 7
    Als 'gezag' wordt gevraagd van 'Gina'
    Dan is het gezag over 'Gina' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Gert-Jan'

  Scenario: Lg01_040 - erkend als ongeboren vrucht, ouders gescheiden vóór de geboortedatum, in 11 aanduiding 'D'
    # Route: 6
    Als 'gezag' wordt gevraagd van 'Guido'
    Dan is het gezag over 'Guido' voogdij
