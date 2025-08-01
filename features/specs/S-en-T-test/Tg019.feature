#language: nl

@gezag-api
Functionaliteit: Tg019 - Aa-Abels - Ouders overleden zelfde dag


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 39                 | 0518200000583550                           |
    
    # Lg01_101 - gehuwd, 3 kinderen, overleden op zelfde dag als partner (als eerste overleden, dus geen huwelijksontbinding)
    Gegeven de persoon 'Arend' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Arend    |
      | voorvoegsel (02.30)             | van der  |
      | geslachtsnaam (02.40)           | Aa       |
      | geboortedatum (03.10)           | 19700112 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Anja      |
      | geslachtsnaam (02.40)                              | Adriaanse |
      | geboortedatum (03.10)                              | 19400404  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Anton    |
      | voorvoegsel (02.30)                                | van der  |
      | geslachtsnaam (02.40)                              | Aa       |
      | geboortedatum (03.10)                              | 19380909 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Astrid-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Astrid    |
      | geslachtsnaam (02.40)                                               | Abels     |
      | geboortedatum (03.10)                                               | 19741216  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20001020  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20001020  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20200606 |
      | aktenummer (81.20)              | 2AA0100  |
      | ingangsdatum geldigheid (85.10) | 20200606 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20200606 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Annajet' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Annajet   |
      | voorvoegsel (02.30)             | van der   |
      | geslachtsnaam (02.40)           | Aa        |
      | geboortedatum (03.10)           | 20111023  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0103   |
      | ingangsdatum geldigheid (85.10) | 20111023  |
    En heeft een kind 'Annalies' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Annalies  |
      | voorvoegsel (02.30)             | van der   |
      | geslachtsnaam (02.40)           | Aa        |
      | geboortedatum (03.10)           | 20080116  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0102   |
      | ingangsdatum geldigheid (85.10) | 20080116  |
    En heeft een kind 'Annabel' met de volgende gegevens
      | naam                            | waarde           |
      | voornamen (02.10)               | Annabel          |
      | voorvoegsel (02.30)             | van der          |
      | geslachtsnaam (02.40)           | Aa               |
      | geboortedatum (03.10)           | morgen - 18 jaar |
      | geboorteland (03.30)            | 6030             |
      | aktenummer (81.20)              | 1AA0101          |
      | ingangsdatum geldigheid (85.10) | morgen - 18 jaar |
    En kind 'Annabel' is gewijzigd naar de volgende gegevens
      | naam                            | waarde                           |
      | burgerservicenummer (01.20)     | 000000036                        |
      | voornamen (02.10)               | Annabel                          |
      | voorvoegsel (02.30)             | van der                          |
      | geslachtsnaam (02.40)           | Aa                               |
      | geboortedatum (03.10)           | morgen - 18 jaar                 |
      | geboorteland (03.30)            | 6030                             |
      | beschrijving document (82.30)   | Melding Ministerie van Financiën |
      | ingangsdatum geldigheid (85.10) | 20050308                         |
    
    # Lg01_102 - gehuwd, 3 kinderen, overleden op zelfde dag als partner (partner als eerste overleden dus huwelijksontbinding)
    Gegeven de persoon 'Astrid' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Astrid   |
      | geslachtsnaam (02.40)           | Abels    |
      | geboortedatum (03.10)           | 19741216 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Anna      |
      | geslachtsnaam (02.40)                              | Andriesen |
      | geboortedatum (03.10)                              | 19450505  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Allard   |
      | geslachtsnaam (02.40)                              | Abels    |
      | geboortedatum (03.10)                              | 19460909 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Arend-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Arend     |
      | voorvoegsel (02.30)                                                 | van der   |
      | geslachtsnaam (02.40)                                               | Aa        |
      | geboortedatum (03.10)                                               | 19700112  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20001020  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20001020  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Arend-0' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000012 |
      | voornamen (02.10)                                             | Arend     |
      | voorvoegsel (02.30)                                           | van der   |
      | geslachtsnaam (02.40)                                         | Aa        |
      | geboortedatum (03.10)                                         | 19700112  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | M         |
      | aktenummer (81.20)                                            | 2AA0100   |
      | ingangsdatum geldigheid (85.10)                               | 20200606  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20200606  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | O         |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20200606 |
      | aktenummer (81.20)              | 2AA0101  |
      | ingangsdatum geldigheid (85.10) | 20200606 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20200606 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Annajet' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Annajet   |
      | voorvoegsel (02.30)             | van der   |
      | geslachtsnaam (02.40)           | Aa        |
      | geboortedatum (03.10)           | 20111023  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0103   |
      | ingangsdatum geldigheid (85.10) | 20111023  |
    En heeft een kind 'Annalies' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Annalies  |
      | voorvoegsel (02.30)             | van der   |
      | geslachtsnaam (02.40)           | Aa        |
      | geboortedatum (03.10)           | 20080116  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0102   |
      | ingangsdatum geldigheid (85.10) | 20080116  |
    En heeft een kind 'Annabel' met de volgende gegevens
      | naam                            | waarde           |
      | voornamen (02.10)               | Annabel          |
      | voorvoegsel (02.30)             | van der          |
      | geslachtsnaam (02.40)           | Aa               |
      | geboortedatum (03.10)           | morgen - 18 jaar |
      | geboorteland (03.30)            | 6030             |
      | aktenummer (81.20)              | 1AA0101          |
      | ingangsdatum geldigheid (85.10) | morgen - 18 jaar |
    En kind 'Annabel' is gewijzigd naar de volgende gegevens
      | naam                            | waarde                           |
      | burgerservicenummer (01.20)     | 000000036                        |
      | voornamen (02.10)               | Annabel                          |
      | voorvoegsel (02.30)             | van der                          |
      | geslachtsnaam (02.40)           | Aa                               |
      | geboortedatum (03.10)           | morgen - 18 jaar                 |
      | geboorteland (03.30)            | 6030                             |
      | beschrijving document (82.30)   | Melding Ministerie van Financiën |
      | ingangsdatum geldigheid (85.10) | 20050308                         |
    
    # Lg01_103 - gehuwde ouders beiden overleden, geen categorie 11
    Gegeven de persoon 'Annabel' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde           |
      | voornamen (02.10)               | Annabel          |
      | voorvoegsel (02.30)             | van der          |
      | geslachtsnaam (02.40)           | Aa               |
      | geboortedatum (03.10)           | morgen - 18 jaar |
      | geboorteland (03.30)            | 6030             |
      | geslachtsaanduiding (04.10)     | V                |
      | aktenummer (81.20)              | 1AA0101          |
      | ingangsdatum geldigheid (85.10) | morgen - 18 jaar |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde                           |
      | burgerservicenummer (01.20)     | 000000036                        |
      | voornamen (02.10)               | Annabel                          |
      | voorvoegsel (02.30)             | van der                          |
      | geslachtsnaam (02.40)           | Aa                               |
      | geboortedatum (03.10)           | morgen - 18 jaar                 |
      | geboorteland (03.30)            | 6030                             |
      | geslachtsaanduiding (04.10)     | V                                |
      | beschrijving document (82.30)   | Melding Ministerie van Financiën |
      | ingangsdatum geldigheid (85.10) | 20050308                         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde           |
      | burgerservicenummer (01.20)                        | 000000024        |
      | voornamen (02.10)                                  | Astrid           |
      | geslachtsnaam (02.40)                              | Abels            |
      | geboortedatum (03.10)                              | 19741216         |
      | geboorteland (03.30)                               | 6030             |
      | geslachtsaanduiding (04.10)                        | V                |
      | aktenummer (81.20)                                 | 1AA0101          |
      | ingangsdatum geldigheid (85.10)                    | morgen - 18 jaar |
      | datum ingang familierechtelijke betrekking (62.10) | morgen - 18 jaar |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde           |
      | burgerservicenummer (01.20)                        | 000000012        |
      | voornamen (02.10)                                  | Arend            |
      | voorvoegsel (02.30)                                | van der          |
      | geslachtsnaam (02.40)                              | Aa               |
      | geboortedatum (03.10)                              | 19700112         |
      | geboorteland (03.30)                               | 6030             |
      | geslachtsaanduiding (04.10)                        | M                |
      | aktenummer (81.20)                                 | 1AA0101          |
      | ingangsdatum geldigheid (85.10)                    | morgen - 18 jaar |
      | datum ingang familierechtelijke betrekking (62.10) | morgen - 18 jaar |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_104 - gehuwde ouders beiden overleden, indicatie gezag 1 geplaatst vóór overlijden Ouder1
    Gegeven de persoon 'Annalies' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Annalies |
      | voorvoegsel (02.30)             | van der  |
      | geslachtsnaam (02.40)           | Aa       |
      | geboortedatum (03.10)           | 20080116 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0102  |
      | ingangsdatum geldigheid (85.10) | 20080116 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Astrid    |
      | geslachtsnaam (02.40)                              | Abels     |
      | geboortedatum (03.10)                              | 19741216  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0102   |
      | ingangsdatum geldigheid (85.10)                    | 20080116  |
      | datum ingang familierechtelijke betrekking (62.10) | 20080116  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Arend     |
      | voorvoegsel (02.30)                                | van der   |
      | geslachtsnaam (02.40)                              | Aa        |
      | geboortedatum (03.10)                              | 19700112  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0102   |
      | ingangsdatum geldigheid (85.10)                    | 20080116  |
      | datum ingang familierechtelijke betrekking (62.10) | 20080116  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 1                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20050101                    |
    
    # Lg01_105 - gehuwde ouders beiden overleden, indicatie D geplaatst ná overlijden Ouders
    Gegeven de persoon 'Annajet' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Annajet  |
      | voorvoegsel (02.30)             | van der  |
      | geslachtsnaam (02.40)           | Aa       |
      | geboortedatum (03.10)           | 20111023 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0103  |
      | ingangsdatum geldigheid (85.10) | 20111023 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Astrid    |
      | geslachtsnaam (02.40)                              | Abels     |
      | geboortedatum (03.10)                              | 19741216  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0103   |
      | ingangsdatum geldigheid (85.10)                    | 20111023  |
      | datum ingang familierechtelijke betrekking (62.10) | 20111023  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Arend     |
      | voorvoegsel (02.30)                                | van der   |
      | geslachtsnaam (02.40)                              | Aa        |
      | geboortedatum (03.10)                              | 19700112  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0103   |
      | ingangsdatum geldigheid (85.10)                    | 20111023  |
      | datum ingang familierechtelijke betrekking (62.10) | 20111023  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | D                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20070101                    |


  Scenario: Lg01_101 - gehuwd, 3 kinderen, overleden op zelfde dag als partner (als eerste overleden, dus geen huwelijksontbinding)
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Arend'
    Dan heeft 'Arend' geen gezaghouder

  Scenario: Lg01_102 - gehuwd, 3 kinderen, overleden op zelfde dag als partner (partner als eerste overleden dus huwelijksontbinding)
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Astrid'
    Dan heeft 'Astrid' geen gezaghouder

  Scenario: Lg01_103 - gehuwde ouders beiden overleden, geen categorie 11
    # Route: 48oo
    Als 'gezag' wordt gevraagd van 'Annabel'
    Dan is het gezag over 'Annabel' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat beide ouders overleden zijn.'

  Scenario: Lg01_104 - gehuwde ouders beiden overleden, indicatie gezag 1 geplaatst vóór overlijden Ouder1
    # Route: 12o
    Als 'gezag' wordt gevraagd van 'Annalies'
    Dan is het gezag over 'Annalies' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder overleden is.'

  Scenario: Lg01_105 - gehuwde ouders beiden overleden, indicatie D geplaatst ná overlijden Ouders
    # Route: 6
    Als 'gezag' wordt gevraagd van 'Annajet'
    Dan is het gezag over 'Annajet' voogdij
