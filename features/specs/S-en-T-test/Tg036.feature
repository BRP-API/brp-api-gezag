#language: nl

Functionaliteit: Tg036 - Taher – Gegevens in onderzoek


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 79                 | 0518200000583570                           |
    
    # Lg01_188 - moeder van minderjarig kind, 010100 in onderzoek
    Gegeven de persoon 'Tasnim' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Tasnim   |
      | geslachtsnaam (02.40)           | Taher    |
      | geboortedatum (03.10)           | 19851211 |
      | geboorteland (03.30)            | 7009     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | voe      |
      | aanduiding in onderzoek (83.10) | 10100    |
      | datum ingang onderzoek (83.20)  | 20200202 |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde |
      | geslachtsnaam (02.40)                              | .      |
      | beschrijving document (82.30)                      | .      |
      | ingangsdatum geldigheid (85.10)                    | 0      |
      | datum ingang familierechtelijke betrekking (62.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde |
      | geslachtsnaam (02.40)                              | .      |
      | beschrijving document (82.30)                      | .      |
      | ingangsdatum geldigheid (85.10)                    | 0      |
      | datum ingang familierechtelijke betrekking (62.10) | 0      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                                 | waarde   |
      | gemeente van inschrijving (09.10)    | 518      |
      | land vanwaar ingeschreven (14.10)    | 7009     |
      | datum vestiging in Nederland (14.20) | 20090101 |
      | ingangsdatum geldigheid (85.10)      | 20111101 |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Thaliya   |
      | geslachtsnaam (02.40)           | Taher     |
      | geboortedatum (03.10)           | 20100316  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0153   |
      | ingangsdatum geldigheid (85.10) | 20100316  |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Tamineh   |
      | geslachtsnaam (02.40)           | Taher     |
      | geboortedatum (03.10)           | 20100316  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0152   |
      | ingangsdatum geldigheid (85.10) | 20100316  |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Tayeh     |
      | geslachtsnaam (02.40)           | Taher     |
      | geboortedatum (03.10)           | 20100316  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0151   |
      | ingangsdatum geldigheid (85.10) | 20100316  |
    En heeft een kind met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000024 |
      | voornamen (02.10)               | Thurayya  |
      | geslachtsnaam (02.40)           | Taher     |
      | geboortedatum (03.10)           | 20100316  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0150   |
      | ingangsdatum geldigheid (85.10) | 20100316  |
    
    # Lg01_189 - minderjarig kind, 010000 in onderzoek
    Gegeven de persoon 'Thurayya' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Thurayya |
      | geslachtsnaam (02.40)           | Taher    |
      | geboortedatum (03.10)           | 20100316 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0150  |
      | aanduiding in onderzoek (83.10) | 10000    |
      | datum ingang onderzoek (83.20)  | 20200202 |
      | ingangsdatum geldigheid (85.10) | 20100316 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Tasnim    |
      | geslachtsnaam (02.40)                              | Taher     |
      | geboortedatum (03.10)                              | 19851211  |
      | geboorteland (03.30)                               | 7009      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0150   |
      | ingangsdatum geldigheid (85.10)                    | 20100316  |
      | datum ingang familierechtelijke betrekking (62.10) | 20100316  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0150  |
      | ingangsdatum geldigheid (85.10) | 20100316 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_190 - minderjarig kind, 080000 in onderzoek
    Gegeven de persoon 'Tayeh' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Tayeh    |
      | geslachtsnaam (02.40)           | Taher    |
      | geboortedatum (03.10)           | 20100316 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0151  |
      | ingangsdatum geldigheid (85.10) | 20100316 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Tasnim    |
      | geslachtsnaam (02.40)                              | Taher     |
      | geboortedatum (03.10)                              | 19851211  |
      | geboorteland (03.30)                               | 7009      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0151   |
      | ingangsdatum geldigheid (85.10)                    | 20100316  |
      | datum ingang familierechtelijke betrekking (62.10) | 20100316  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0151  |
      | ingangsdatum geldigheid (85.10) | 20100316 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | aanduiding in onderzoek (83.10)   | 80000    |
      | datum ingang onderzoek (83.20)    | 20220202 |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_191 - minderjarig kind, 020000 in onderzoek
    Gegeven de persoon 'Tamineh' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Tamineh  |
      | geslachtsnaam (02.40)           | Taher    |
      | geboortedatum (03.10)           | 20100316 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0152  |
      | ingangsdatum geldigheid (85.10) | 20100316 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Tasnim    |
      | geslachtsnaam (02.40)                              | Taher     |
      | geboortedatum (03.10)                              | 19851211  |
      | geboorteland (03.30)                               | 7009      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0152   |
      | aanduiding in onderzoek (83.10)                    | 20000     |
      | datum ingang onderzoek (83.20)                     | 20220202  |
      | ingangsdatum geldigheid (85.10)                    | 20100316  |
      | datum ingang familierechtelijke betrekking (62.10) | 20100316  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0152  |
      | ingangsdatum geldigheid (85.10) | 20100316 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_192 - minderjarig kind, 010320 in onderzoek
    Gegeven de persoon 'Thaliya' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Thaliya  |
      | geslachtsnaam (02.40)           | Taher    |
      | geboortedatum (03.10)           | 20100316 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0153  |
      | aanduiding in onderzoek (83.10) | 10320    |
      | datum ingang onderzoek (83.20)  | 20220202 |
      | ingangsdatum geldigheid (85.10) | 20100316 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Tasnim    |
      | geslachtsnaam (02.40)                              | Taher     |
      | geboortedatum (03.10)                              | 19851211  |
      | geboorteland (03.30)                               | 7009      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0153   |
      | ingangsdatum geldigheid (85.10)                    | 20100316  |
      | datum ingang familierechtelijke betrekking (62.10) | 20100316  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0153  |
      | ingangsdatum geldigheid (85.10) | 20100316 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |


  Scenario: Lg01_188 - moeder van minderjarig kind, 010100 in onderzoek
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Tasnim'
    Dan is het gezag over 'Thurayya' eenhoofdig ouderlijk gezag met ouder 'Tasnim'
      | inOnderzoek                      | true                     |
    Dan is het gezag over 'Tayeh' eenhoofdig ouderlijk gezag met ouder 'Tasnim'
    Dan is het gezag over 'Tamineh' eenhoofdig ouderlijk gezag met ouder 'Tasnim'
      | inOnderzoek                      | true                     |
    Dan is het gezag over 'Thaliya' eenhoofdig ouderlijk gezag met ouder 'Tasnim'

  Scenario: Lg01_189 - minderjarig kind, 010000 in onderzoek
    # Route: 40o1i
    Als 'gezag' wordt gevraagd van 'Thurayya'
    Dan is het gezag over 'Thurayya' eenhoofdig ouderlijk gezag met ouder 'Tasnim'
      | inOnderzoek                      | true                     |

  Scenario: Lg01_190 - minderjarig kind, 080000 in onderzoek
    # Route: 40o1
    Als 'gezag' wordt gevraagd van 'Tayeh'
    Dan is het gezag over 'Tayeh' eenhoofdig ouderlijk gezag met ouder 'Tasnim'

  Scenario: Lg01_191 - minderjarig kind, 020000 in onderzoek
    # Route: 40o1i
    Als 'gezag' wordt gevraagd van 'Tamineh'
    Dan is het gezag over 'Tamineh' eenhoofdig ouderlijk gezag met ouder 'Tasnim'
      | inOnderzoek                      | true                     |

  Scenario: Lg01_192 - minderjarig kind, 010320 in onderzoek
    # Route: 40o1
    Als 'gezag' wordt gevraagd van 'Thaliya'
    Dan is het gezag over 'Thaliya' eenhoofdig ouderlijk gezag met ouder 'Tasnim'
