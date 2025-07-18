#language: nl

@deprecated @gezag-api
Functionaliteit: Tg026 - Hendriksman-Hamersma-Huisman - Erkenning voor, bij en na geboorteaangifte en ongehuwde ouders


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 57                 | 0518200000583559                           |
    Gegeven adres 'A2'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 59                 | 0518200000583560                           |
    
    # Lg01_139 - test op inlezen in de toekomst met geboortejaar 2023 (is inlezen in toekomst mogelijk)
    Gegeven de persoon 'Hinke' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Hinke      |
      | geslachtsnaam (02.40)           | Hendrikman |
      | geboortedatum (03.10)           | 20230101   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | V          |
      | aktenummer (81.20)              | 1AA0109    |
      | ingangsdatum geldigheid (85.10) | 20230101   |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Harald     |
      | geslachtsnaam (02.40)                              | Hendrikman |
      | geboortedatum (03.10)                              | 19890705   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | M          |
      | aktenummer (81.20)                                 | 1AA0109    |
      | ingangsdatum geldigheid (85.10)                    | 20230101   |
      | datum ingang familierechtelijke betrekking (62.10) | 20230101   |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Hiske    |
      | geslachtsnaam (02.40)                              | Hamersma |
      | geboortedatum (03.10)                              | 19901201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | aktenummer (81.20)                                 | 1AA0108  |
      | ingangsdatum geldigheid (85.10)                    | 20230101 |
      | datum ingang familierechtelijke betrekking (62.10) | 20230101 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20230101 |
    
    # Lg01_140 - 3 kinderen in 2023, 1 erkend als ongeboren vrucht, 1 erkend bij geboorteaangifte, 1 erkend na geboorteaangifte
    Gegeven de persoon 'Hans' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Hans     |
      | geslachtsnaam (02.40)           | Hamersma |
      | geboortedatum (03.10)           | 19850118 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Hadriaan |
      | geslachtsnaam (02.40)                              | Hamersma |
      | geboortedatum (03.10)                              | 19570331 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Heiltje  |
      | voorvoegsel (02.30)                                | de       |
      | geslachtsnaam (02.40)                              | Hoop     |
      | geboortedatum (03.10)                              | 19590223 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Harry' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Harry     |
      | geslachtsnaam (02.40)           | Hamersma  |
      | geboortedatum (03.10)           | 20231118  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0110   |
      | ingangsdatum geldigheid (85.10) | 20230110  |
    En heeft een kind 'Harm' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Harm      |
      | geslachtsnaam (02.40)           | Hamersma  |
      | geboortedatum (03.10)           | 20231118  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AB0111   |
      | ingangsdatum geldigheid (85.10) | 20231119  |
    En heeft een kind 'Harold' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Harold    |
      | geslachtsnaam (02.40)           | Hamersma  |
      | geboortedatum (03.10)           | 20230110  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0112   |
      | ingangsdatum geldigheid (85.10) | 20231120  |
    
    # Lg01_141 - 3 kinderen in 2023, 1 erkend als ongeboren vrucht, 1 erkend bij geboorteaangifte, 1 erkend na geboorteaangifte
    Gegeven de persoon 'Helga' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Helga    |
      | geslachtsnaam (02.40)           | Huisman  |
      | geboortedatum (03.10)           | 19871220 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Hannes   |
      | geslachtsnaam (02.40)                              | Huisman  |
      | geboortedatum (03.10)                              | 19560115 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Halina   |
      | geslachtsnaam (02.40)                              | Helger   |
      | geboortedatum (03.10)                              | 19600904 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Harry' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Harry     |
      | geslachtsnaam (02.40)           | Hamersma  |
      | geboortedatum (03.10)           | 20230110  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0110   |
      | ingangsdatum geldigheid (85.10) | 20230110  |
    En heeft een kind 'Harm' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Harm      |
      | geslachtsnaam (02.40)           | Huisman   |
      | geboortedatum (03.10)           | 20231118  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0111   |
      | ingangsdatum geldigheid (85.10) | 20231118  |
    En kind 'Harm' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Harm      |
      | geslachtsnaam (02.40)           | Hamersma  |
      | geboortedatum (03.10)           | 20231118  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AB0111   |
      | ingangsdatum geldigheid (85.10) | 20231119  |
    En heeft een kind 'Harold' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Harold    |
      | geslachtsnaam (02.40)           | Huisman   |
      | geboortedatum (03.10)           | 20231118  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0112   |
      | ingangsdatum geldigheid (85.10) | 20231118  |
    En kind 'Harold' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Harold    |
      | geslachtsnaam (02.40)           | Hamersma  |
      | geboortedatum (03.10)           | 20231118  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0112   |
      | ingangsdatum geldigheid (85.10) | 20231120  |
    
    # Lg01_142 - kind geboren uit ongehuwde ouders in 2023, erkenning na de geboorteaangifte (akteaanduiding C)
    Gegeven de persoon 'Harold' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Harold   |
      | geslachtsnaam (02.40)           | Huisman  |
      | geboortedatum (03.10)           | 20231118 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0112  |
      | ingangsdatum geldigheid (85.10) | 20231118 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Harold    |
      | geslachtsnaam (02.40)           | Hamersma  |
      | geboortedatum (03.10)           | 20231118  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AC0112   |
      | ingangsdatum geldigheid (85.10) | 20231120  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0112  |
      | ingangsdatum geldigheid (85.10) | 20231118 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Hans      |
      | geslachtsnaam (02.40)                              | Hamersma  |
      | geboortedatum (03.10)                              | 19850118  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0112   |
      | ingangsdatum geldigheid (85.10)                    | 20231120  |
      | datum ingang familierechtelijke betrekking (62.10) | 20231120  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000036 |
      | voornamen (02.10)                                  | Helga     |
      | geslachtsnaam (02.40)                              | Huisman   |
      | geboortedatum (03.10)                              | 19871220  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0112   |
      | ingangsdatum geldigheid (85.10)                    | 20231118  |
      | datum ingang familierechtelijke betrekking (62.10) | 20231118  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20231118 |
    
    # Lg01_143 - kind geboren uit ongehuwde ouders in 2023, erkenning bij geboorteaangifte (akteaanduiding B)
    Gegeven de persoon 'Harm' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Harm     |
      | geslachtsnaam (02.40)           | Huisman  |
      | geboortedatum (03.10)           | 20231118 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0111  |
      | ingangsdatum geldigheid (85.10) | 20231118 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Harm      |
      | geslachtsnaam (02.40)           | Hamersma  |
      | geboortedatum (03.10)           | 20231118  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AB0111   |
      | ingangsdatum geldigheid (85.10) | 20231119  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0111  |
      | ingangsdatum geldigheid (85.10) | 20231118 |
    En ouder 1 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Hans      |
      | geslachtsnaam (02.40)                              | Hamersma  |
      | geboortedatum (03.10)                              | 19850118  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AB0111   |
      | ingangsdatum geldigheid (85.10)                    | 20231119  |
      | datum ingang familierechtelijke betrekking (62.10) | 20231119  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000036 |
      | voornamen (02.10)                                  | Helga     |
      | geslachtsnaam (02.40)                              | Huisman   |
      | geboortedatum (03.10)                              | 19871220  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0111   |
      | ingangsdatum geldigheid (85.10)                    | 20231118  |
      | datum ingang familierechtelijke betrekking (62.10) | 20231118  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20231118 |
    
    # Lg01_144 - kind geboren uit ongehuwde ouders in januari 2023, erkenning ongeboren vrucht, geen indicatie gezag
    Gegeven de persoon 'Harry' met burgerservicenummer '000000073'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Harry    |
      | geslachtsnaam (02.40)           | Hamersma |
      | geboortedatum (03.10)           | 20230110 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0110  |
      | ingangsdatum geldigheid (85.10) | 20230110 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Hans      |
      | geslachtsnaam (02.40)                              | Hamersma  |
      | geboortedatum (03.10)                              | 19850118  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0110   |
      | ingangsdatum geldigheid (85.10)                    | 20230110  |
      | datum ingang familierechtelijke betrekking (62.10) | 20231118  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000036 |
      | voornamen (02.10)                                  | Helga     |
      | geslachtsnaam (02.40)                              | Huisman   |
      | geboortedatum (03.10)                              | 19871220  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0110   |
      | ingangsdatum geldigheid (85.10)                    | 20230110  |
      | datum ingang familierechtelijke betrekking (62.10) | 20230110  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20230110 |


  Scenario: Lg01_139 - test op inlezen in de toekomst met geboortejaar 2023 (is inlezen in toekomst mogelijk)
    # Route: 45e
    Als 'gezag' wordt gevraagd van 'Hinke'
    Dan is het gezag over 'Hinke' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat relevante gegevens ontbreken. Het gaat om de volgende gegevens: ouder1 van bevraagde persoon is niet in BRP geregistreerd'

  Scenario: Lg01_140 - 3 kinderen in 2023, 1 erkend als ongeboren vrucht, 1 erkend bij geboorteaangifte, 1 erkend na geboorteaangifte
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Hans'
    Dan heeft 'Hans' de volgende gezagsrelaties
    * is het gezag over 'Harold' gezamenlijk ouderlijk gezag met ouder 'Hans' en ouder 'Helga'
    * is het gezag over 'Harm' gezamenlijk ouderlijk gezag met ouder 'Hans' en ouder 'Helga'
    * is het gezag over 'Harry' gezamenlijk ouderlijk gezag met ouder 'Hans' en ouder 'Helga'

  Scenario: Lg01_141 - 3 kinderen in 2023, 1 erkend als ongeboren vrucht, 1 erkend bij geboorteaangifte, 1 erkend na geboorteaangifte
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Helga'
    Dan heeft 'Helga' de volgende gezagsrelaties
    * is het gezag over 'Harold' gezamenlijk ouderlijk gezag met ouder 'Hans' en ouder 'Helga'
    * is het gezag over 'Harm' gezamenlijk ouderlijk gezag met ouder 'Hans' en ouder 'Helga'
    * is het gezag over 'Harry' gezamenlijk ouderlijk gezag met ouder 'Hans' en ouder 'Helga'

  Scenario: Lg01_142 - kind geboren uit ongehuwde ouders in 2023, erkenning na de geboorteaangifte (akteaanduiding C)
    # Route: 54n
    Als 'gezag' wordt gevraagd van 'Harold'
    Dan is het gezag over 'Harold' gezamenlijk ouderlijk gezag met ouder 'Hans' en ouder 'Helga'

  Scenario: Lg01_143 - kind geboren uit ongehuwde ouders in 2023, erkenning bij geboorteaangifte (akteaanduiding B)
    # Route: 54n
    Als 'gezag' wordt gevraagd van 'Harm'
    Dan is het gezag over 'Harm' gezamenlijk ouderlijk gezag met ouder 'Hans' en ouder 'Helga'

  Scenario: Lg01_144 - kind geboren uit ongehuwde ouders in januari 2023, erkenning ongeboren vrucht, geen indicatie gezag
    # Route: 54n
    Als 'gezag' wordt gevraagd van 'Harry'
    Dan is het gezag over 'Harry' gezamenlijk ouderlijk gezag met ouder 'Hans' en ouder 'Helga'
