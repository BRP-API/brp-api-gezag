#language: nl

@deprecated @gezag-api
Functionaliteit: Tg001 - Adema-Arendsen - Gehuwd met kinderen geboren voor en na huwelijksvoltrekking.


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 1                  | 0518200000583526                           |
    
    # Lg01_001 - gehuwd, 4 minderjarige kinderen geboren vóór huwelijk, 2 minderjarige kinderen geboren ná huwelijk, 1 overleden kind, 1 meerderjarig kind, 4 kinderen onder gezag
    Gegeven de persoon 'Annet' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Annet    |
      | geslachtsnaam (02.40)           | Adema    |
      | geboortedatum (03.10)           | 19820101 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Christiaan |
      | geslachtsnaam (02.40)                              | Adema      |
      | geboortedatum (03.10)                              | 19600101   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | M          |
      | beschrijving document (82.30)                      | PK         |
      | ingangsdatum geldigheid (85.10)                    | 0          |
      | datum ingang familierechtelijke betrekking (62.10) | 0          |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Bea      |
      | geslachtsnaam (02.40)                              | Brouwer  |
      | geboortedatum (03.10)                              | 19600101 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Adam-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Adam      |
      | geslachtsnaam (02.40)                                               | Arendsen  |
      | geboortedatum (03.10)                                               | 19810101  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0001   |
      | ingangsdatum geldigheid (85.10)                                     | 20141201  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20141201  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Alexa' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Alexa     |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20090401  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20090401  |
    En heeft een kind 'Alicia' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Alicia    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20140401  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20140401  |
    En heeft een kind 'Xandra' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000115 |
      | voornamen (02.10)               | Xandra    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0109   |
      | ingangsdatum geldigheid (85.10) | 20100601  |
    En kind 'Xandra' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000115 |
      | voornamen (02.10)               | Xandra    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0109   |
      | ingangsdatum geldigheid (85.10) | 20150301  |
    En heeft een kind 'Astrid' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Astrid    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0108   |
      | ingangsdatum geldigheid (85.10) | 20100601  |
    En kind 'Astrid' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Astrid    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0108   |
      | ingangsdatum geldigheid (85.10) | 20150301  |
    En heeft een kind 'Ariana' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Ariana    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0107   |
      | ingangsdatum geldigheid (85.10) | 20100601  |
    En kind 'Ariana' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Ariana    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0107   |
      | ingangsdatum geldigheid (85.10) | 20150301  |
    En heeft een kind 'Xander' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Xander    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20151201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0002   |
      | ingangsdatum geldigheid (85.10) | 20151201  |
    En heeft een kind 'Axel' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Axel      |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20151201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0001   |
      | ingangsdatum geldigheid (85.10) | 20151201  |
    En heeft een kind 'Amalia' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Amalia    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20151201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0001   |
      | ingangsdatum geldigheid (85.10) | 20151201  |
    
    # Lg01_002 - gehuwd, 4 minderjarige kinderen geboren vóór huwelijk, 2 minderjarige kinderen geboren ná huwelijk, 1 overleden kind, 1 meerderjarig kind, 4 kinderen onder gezag
    Gegeven de persoon 'Adam' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Adam     |
      | geslachtsnaam (02.40)           | Arendsen |
      | geboortedatum (03.10)           | 19810101 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Carel    |
      | geslachtsnaam (02.40)                              | Arendsen |
      | geboortedatum (03.10)                              | 19590101 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Berendien |
      | voorvoegsel (02.30)                                | de        |
      | geslachtsnaam (02.40)                              | Boer      |
      | geboortedatum (03.10)                              | 19590101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Annet-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Annet     |
      | geslachtsnaam (02.40)                                               | Adema     |
      | geboortedatum (03.10)                                               | 19820101  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0001   |
      | ingangsdatum geldigheid (85.10)                                     | 20141201  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20141201  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Alexa' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Alexa     |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20090401  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20090401  |
    En heeft een kind 'Alicia' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Alicia    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20140401  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20140401  |
    En heeft een kind 'Xandra' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000115 |
      | voornamen (02.10)               | Xandra    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0109   |
      | ingangsdatum geldigheid (85.10) | 20150301  |
    En heeft een kind 'Astrid' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Astrid    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0108   |
      | ingangsdatum geldigheid (85.10) | 20150301  |
    En heeft een kind 'Ariana' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Ariana    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0107   |
      | ingangsdatum geldigheid (85.10) | 20150301  |
    En heeft een kind 'Xander' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Xander    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20151201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0002   |
      | ingangsdatum geldigheid (85.10) | 20151201  |
    En heeft een kind 'Axel' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Axel      |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20151201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0001   |
      | ingangsdatum geldigheid (85.10) | 20151201  |
    En heeft een kind 'Amalia' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Amalia    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20151201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0001   |
      | ingangsdatum geldigheid (85.10) | 20151201  |
    
    # Lg01_003 - minderjarig, ouders gehuwd op moment geboorte, geen categorie 11
    Gegeven de persoon 'Axel' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Axel     |
      | geslachtsnaam (02.40)           | Arendsen |
      | geboortedatum (03.10)           | 20151201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0001  |
      | ingangsdatum geldigheid (85.10) | 20151201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Adam      |
      | geslachtsnaam (02.40)                              | Arendsen  |
      | geboortedatum (03.10)                              | 19810101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0001   |
      | ingangsdatum geldigheid (85.10)                    | 20151201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20151201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Annet     |
      | geslachtsnaam (02.40)                              | Adema     |
      | geboortedatum (03.10)                              | 19820101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0001   |
      | ingangsdatum geldigheid (85.10)                    | 20151201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20151201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20151201 |
    
    # Lg01_004 - overleden, ouders gehuwd op moment geboorte, geen categorie 11
    Gegeven de persoon 'Xander' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Xander   |
      | geslachtsnaam (02.40)           | Arendsen |
      | geboortedatum (03.10)           | 20151201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0002  |
      | ingangsdatum geldigheid (85.10) | 20151201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Adam      |
      | geslachtsnaam (02.40)                              | Arendsen  |
      | geboortedatum (03.10)                              | 19810101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0002   |
      | ingangsdatum geldigheid (85.10)                    | 20151201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20151201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Annet     |
      | geslachtsnaam (02.40)                              | Adema     |
      | geboortedatum (03.10)                              | 19820101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0002   |
      | ingangsdatum geldigheid (85.10)                    | 20151201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20151201  |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20160101 |
      | aktenummer (81.20)              | 2AA0001  |
      | ingangsdatum geldigheid (85.10) | 20160101 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20160101 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20151201 |
    
    # Lg01_005 - minderjarig, erkend als ongeboren vrucht, geen categorie 11, ouders gehuwd ná de geboorte
    Gegeven de persoon 'Alicia' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Alicia   |
      | geslachtsnaam (02.40)           | Arendsen |
      | geboortedatum (03.10)           | 20140401 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20140401 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Adam      |
      | geslachtsnaam (02.40)                              | Arendsen  |
      | geboortedatum (03.10)                              | 19810101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20140401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20140401  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Annet     |
      | geslachtsnaam (02.40)                              | Adema     |
      | geboortedatum (03.10)                              | 19820101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20140401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20140401  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20140401 |
    
    # Lg01_006 - minderjarig, ouder dan 12, erkend als ongeboren vrucht, geen categorie 11, ouders gehuwd ná de geboorte
    Gegeven de persoon 'Alexa' met burgerservicenummer '000000073'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Alexa    |
      | geslachtsnaam (02.40)           | Arendsen |
      | geboortedatum (03.10)           | 20090401 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20090401 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Adam      |
      | geslachtsnaam (02.40)                              | Arendsen  |
      | geboortedatum (03.10)                              | 19810101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20090401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20090401  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Annet     |
      | geslachtsnaam (02.40)                              | Adema     |
      | geboortedatum (03.10)                              | 19820101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20090401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20090401  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_110 - ouders gehuwd, indicatie gezag "2"
    Gegeven de persoon 'Amalia' met burgerservicenummer '000000085'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Amalia   |
      | geslachtsnaam (02.40)           | Arendsen |
      | geboortedatum (03.10)           | 20161231 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0106  |
      | ingangsdatum geldigheid (85.10) | 20161231 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Adam      |
      | geslachtsnaam (02.40)                              | Arendsen  |
      | geboortedatum (03.10)                              | 19810101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0001   |
      | ingangsdatum geldigheid (85.10)                    | 20161231  |
      | datum ingang familierechtelijke betrekking (62.10) | 20161231  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Annet     |
      | geslachtsnaam (02.40)                              | Adema     |
      | geboortedatum (03.10)                              | 19820101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0001   |
      | ingangsdatum geldigheid (85.10)                    | 20161231  |
      | datum ingang familierechtelijke betrekking (62.10) | 20161231  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20161231 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                    |
      | indicatie gezag minderjarige (32.10) | 1                         |
      | beschrijving document (82.30)        | mededeling gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20211001                  |
    
    # Lg01_111 - erkend, ouders later gehuwd, indicatie gezag "1" geldig voor huwelijksdatum
    Gegeven de persoon 'Ariana' met burgerservicenummer '000000097'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Ariana   |
      | geslachtsnaam (02.40)           | Adema    |
      | geboortedatum (03.10)           | 20100601 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0107  |
      | ingangsdatum geldigheid (85.10) | 20100601 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Ariana    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0107   |
      | ingangsdatum geldigheid (85.10) | 20150301  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0107  |
      | ingangsdatum geldigheid (85.10) | 20100601 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Adam      |
      | geslachtsnaam (02.40)                              | Arendsen  |
      | geboortedatum (03.10)                              | 19810101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0107   |
      | ingangsdatum geldigheid (85.10)                    | 20150301  |
      | datum ingang familierechtelijke betrekking (62.10) | 20150301  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Annet     |
      | geslachtsnaam (02.40)                              | Adema     |
      | geboortedatum (03.10)                              | 19820101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0107   |
      | ingangsdatum geldigheid (85.10)                    | 20100601  |
      | datum ingang familierechtelijke betrekking (62.10) | 20100601  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 2                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20121201                    |
    
    # Lg01_112 - erkend, ouders later gehuwd, indicatie gezag "1D" geldig na huwelijksdatum
    Gegeven de persoon 'Astrid' met burgerservicenummer '000000103'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Astrid   |
      | geslachtsnaam (02.40)           | Adema    |
      | geboortedatum (03.10)           | 20100601 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0108  |
      | ingangsdatum geldigheid (85.10) | 20100601 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Astrid    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0108   |
      | ingangsdatum geldigheid (85.10) | 20150301  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0108  |
      | ingangsdatum geldigheid (85.10) | 20100601 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Adam      |
      | geslachtsnaam (02.40)                              | Arendsen  |
      | geboortedatum (03.10)                              | 19810101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0108   |
      | ingangsdatum geldigheid (85.10)                    | 20150301  |
      | datum ingang familierechtelijke betrekking (62.10) | 20150301  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Annet     |
      | geslachtsnaam (02.40)                              | Adema     |
      | geboortedatum (03.10)                              | 19820101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0108   |
      | ingangsdatum geldigheid (85.10)                    | 20100601  |
      | datum ingang familierechtelijke betrekking (62.10) | 20100601  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 2D                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20200901                    |
    
    # Lg01_113 - erkend, ouders later gehuwd, indicatie gezag "1D" geldig voor huwelijksdatum
    Gegeven de persoon 'Xandra' met burgerservicenummer '000000115'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Xandra   |
      | geslachtsnaam (02.40)           | Adema    |
      | geboortedatum (03.10)           | 20100601 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0109  |
      | ingangsdatum geldigheid (85.10) | 20100601 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000115 |
      | voornamen (02.10)               | Xandra    |
      | geslachtsnaam (02.40)           | Arendsen  |
      | geboortedatum (03.10)           | 20100601  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0109   |
      | ingangsdatum geldigheid (85.10) | 20150301  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0109  |
      | ingangsdatum geldigheid (85.10) | 20100601 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Adam      |
      | geslachtsnaam (02.40)                              | Arendsen  |
      | geboortedatum (03.10)                              | 19810101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0109   |
      | ingangsdatum geldigheid (85.10)                    | 20150301  |
      | datum ingang familierechtelijke betrekking (62.10) | 20150301  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Annet     |
      | geslachtsnaam (02.40)                              | Adema     |
      | geboortedatum (03.10)                              | 19820101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0109   |
      | ingangsdatum geldigheid (85.10)                    | 20100601  |
      | datum ingang familierechtelijke betrekking (62.10) | 20100601  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 2D                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20121201                    |


  Scenario: Lg01_001 - gehuwd, 4 minderjarige kinderen geboren vóór huwelijk, 2 minderjarige kinderen geboren ná huwelijk, 1 overleden kind, 1 meerderjarig kind, 4 kinderen onder gezag
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Annet'
    Dan heeft 'Annet' de volgende gezagsrelaties
    * is het gezag over 'Axel' gezamenlijk ouderlijk gezag met ouder 'Annet' en ouder 'Adam'
    * is het gezag over 'Alicia' gezamenlijk ouderlijk gezag met ouder 'Annet' en ouder 'Adam'
    * is het gezag over 'Alexa' gezamenlijk ouderlijk gezag met ouder 'Annet' en ouder 'Adam'
    * is het gezag over 'Ariana' eenhoofdig ouderlijk gezag met ouder 'Annet'
    * is het gezag over 'Astrid' gezamenlijk gezag met ouder 'Annet' en een onbekende derde
    * is het gezag over 'Xandra' gezamenlijk gezag met ouder 'Annet' en een onbekende derde

  Scenario: Lg01_002 - gehuwd, 4 minderjarige kinderen geboren vóór huwelijk, 2 minderjarige kinderen geboren ná huwelijk, 1 overleden kind, 1 meerderjarig kind, 4 kinderen onder gezag
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Adam'
    Dan heeft 'Adam' de volgende gezagsrelaties
    * is het gezag over 'Axel' gezamenlijk ouderlijk gezag met ouder 'Annet' en ouder 'Adam'
    * is het gezag over 'Alicia' gezamenlijk ouderlijk gezag met ouder 'Annet' en ouder 'Adam'
    * is het gezag over 'Alexa' gezamenlijk ouderlijk gezag met ouder 'Annet' en ouder 'Adam'
    * is het gezag over 'Amalia' eenhoofdig ouderlijk gezag met ouder 'Adam'

  Scenario: Lg01_003 - minderjarig, ouders gehuwd op moment geboorte, geen categorie 11
    # Route: 49
    Als 'gezag' wordt gevraagd van 'Axel'
    Dan is het gezag over 'Axel' gezamenlijk ouderlijk gezag met ouder 'Annet' en ouder 'Adam'

  Scenario: Lg01_004 - overleden, ouders gehuwd op moment geboorte, geen categorie 11
    # Route: 2o
    Als 'gezag' wordt gevraagd van 'Xander'
    Dan heeft 'Xander' geen gezaghouder

  Scenario: Lg01_005 - minderjarig, erkend als ongeboren vrucht, geen categorie 11, ouders gehuwd ná de geboorte
    # Route: 49
    Als 'gezag' wordt gevraagd van 'Alicia'
    Dan is het gezag over 'Alicia' gezamenlijk ouderlijk gezag met ouder 'Annet' en ouder 'Adam'

  Scenario: Lg01_006 - minderjarig, ouder dan 12, erkend als ongeboren vrucht, geen categorie 11, ouders gehuwd ná de geboorte
    # Route: 49
    Als 'gezag' wordt gevraagd van 'Alexa'
    Dan is het gezag over 'Alexa' gezamenlijk ouderlijk gezag met ouder 'Annet' en ouder 'Adam'

  Scenario: Lg01_110 - ouders gehuwd, indicatie gezag "2"
    # Route: 13
    Als 'gezag' wordt gevraagd van 'Amalia'
    Dan is het gezag over 'Amalia' eenhoofdig ouderlijk gezag met ouder 'Adam'

  Scenario: Lg01_111 - erkend, ouders later gehuwd, indicatie gezag "1" geldig voor huwelijksdatum
    # Route: 11
    Als 'gezag' wordt gevraagd van 'Ariana'
    Dan is het gezag over 'Ariana' eenhoofdig ouderlijk gezag met ouder 'Annet'

  Scenario: Lg01_112 - erkend, ouders later gehuwd, indicatie gezag "1D" geldig na huwelijksdatum
    # Route: 4
    Als 'gezag' wordt gevraagd van 'Astrid'
    Dan is het gezag over 'Astrid' gezamenlijk gezag met ouder 'Annet' en een onbekende derde

  Scenario: Lg01_113 - erkend, ouders later gehuwd, indicatie gezag "1D" geldig voor huwelijksdatum
    # Route: 4
    Als 'gezag' wordt gevraagd van 'Xandra'
    Dan is het gezag over 'Xandra' gezamenlijk gezag met ouder 'Annet' en een onbekende derde
