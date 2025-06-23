# language: nl
Functionaliteit: Test gezagsuitspraak bij minderjarige met twee ouders die nooit met elkaar gehuwd zijn geweest
  Test dat de functionaliteit rond bepalen gezag voor een minderjarige met twee ouders correct werkt.

  Alleen routes die ook geraakt zijn in productie worden getest.

  Regel: Wanneer de ouders nooit met elkaar gehuwd waren en het kind is erkend na 1-1-2023, dan is er gezamenlijk ouderlijk gezag
    | vraag | logische situatie                                                      | verwacht route | verwacht resultaat          |
    | 2a.3  | ouders waren nooit gehuwd en minderjarige is erkend na 1-1-2023        | 54n            | gezamenlijk ouderlijk gezag |
    | 2a.3  | minderjarige is erkend na 1-1-2023 en moeder is gehuwd moet niet-ouder | 54n            | gezamenlijk ouderlijk gezag |

    Scenario: ouders waren nooit gehuwd en minderjarige is erkend na 1-1-2023
      Gegeven de persoon 'erkenner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * 'minderjarige' is erkend door 'erkenner' op <datum erkenning>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'erkenner'

      Voorbeelden:
        | datum erkenning | omschrijving        |
        |        1-1-2023 | gelijk aan 1-1-2023 |
        |      15-12-2024 | na 1-1-2023         |

  Regel: Als minderjarige is geboren staande huwelijk/partnerschap en na de geboorte en na 1 januari 2023 is erkend door een bekende donor, dan hebben de moeder en de partner van de moeder gezamenlijk gezag

    @deprecated
    Scenario: minderjarige is erkend na 1-1-2023 en minderjarige is staande partnerschap van moeder met niet-ouder geboren
      Gegeven de persoon 'erkenner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de persoon 'partner' met burgerservicenummer '000000048'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is geboren op 08-02-2023
      En 'minderjarige' is erkend door 'erkenner' <soort erkenning>
      En 'moeder' en 'partner' zijn een geregistreerd partnerschap aangegaan op 28-09-2006
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'erkenner'

      Voorbeelden:
        | soort erkenning                                         |
        | bij geboorteaangifte                                    |
        | na geboorteaangifte op 10-02-2023                       |
        | bij notariële akte op 10-02-2023                        |
        | met gerechtelijke vaststelling ouderschap op 10-02-2023 |

    @skip-verify @to-do
    Scenario: minderjarige is erkend na 1-1-2023 en minderjarige is staande partnerschap van moeder met niet-ouder geboren
      Gegeven de persoon 'erkenner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de persoon 'partner' met burgerservicenummer '000000048'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is geboren op 08-02-2023
      En 'minderjarige' is erkend door 'erkenner' <soort erkenning>
      En 'moeder' en 'partner' zijn een geregistreerd partnerschap aangegaan op 28-09-2006
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'moeder' en derde 'partner'

      Voorbeelden:
        | soort erkenning                                         |
        | bij geboorteaangifte                                    |
        | na geboorteaangifte op 10-02-2023                       |
        | bij notariële akte op 10-02-2023                        |
        | met gerechtelijke vaststelling ouderschap op 10-02-2023 |

    Scenario: minderjarige is als ongeboren vrucht erkend na 1-1-2023 en minderjarige is staande partnerschap van moeder met niet-ouder geboren
      Gegeven de persoon 'partner' met burgerservicenummer '000000048'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met twee ouders 'moeder' en 'erkenner' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      * is geboren op 10-02-2023
      En 'minderjarige' is erkend door 'erkenner' als ongeboren vrucht op 09-02-2023
      En 'moeder' en 'partner' zijn een geregistreerd partnerschap aangegaan op 28-09-2006
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'erkenner'

  Regel: Als het kind is erkend na 1-1-2023 en een van de ouders is overleden of onbevoegd is voor gezag, dan heeft de andere ouder eenhoofdig ouderlijk gezag
    | vraag | ouder 1     | ouder 2     | logische situatie                                                                                       | verwacht route | verwacht resultaat          |
    | 2a.3  | overleden   | bevoegd     | erkend na 1-1-2023 en ouder 1 is overleden                                                              | 53n1           | eenhoofdig ouderlijk gezag  |
    | 2a.3  | curatele    | bevoegd     | erkend na 1-1-2023 en ouder 1 staat onder curatele                                                      | 53n1           | eenhoofdig ouderlijk gezag  |
    | 2a.3  | minderjarig | bevoegd     | erkend na 1-1-2023 en ouder 1 is minderjarig                                                            | 53n1           | eenhoofdig ouderlijk gezag  |
    | 2a.3  | bevoegd     | overleden   | erkend na 1-1-2023 en ouder 2 is overleden                                                              | 53n2           | eenhoofdig ouderlijk gezag  |
    | 2a.3  | bevoegd     | curatele    | erkend na 1-1-2023 en ouder 2 staat onder curatele                                                      | 53n2           | eenhoofdig ouderlijk gezag  |
    | 2a.3  | bevoegd     | minderjarig | erkend na 1-1-2023 en ouder 2 is minderjarig                                                            | 53n2           | eenhoofdig ouderlijk gezag  |
    | 2a.3  | bevoegd     | bevoegd     | minderjarige is erkend na 1-1-2023 en moeder is gehuwd moet niet-ouder en de niet-ouder is niet bevoegd | 54n            | gezamenlijk ouderlijk gezag |

    Scenario: erkend na 1-1-2023 en <omschrijving>
      Gegeven de persoon 'erkenner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * 'minderjarige' is erkend door 'erkenner' na geboorteaangifte op 10-2-2025
      En persoon 'moeder'
      * <bevoegdheid ouder 1>
      En persoon 'erkenner'
      * <bevoegdheid ouder 2>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder '<ouder met gezag>'

      Voorbeelden:
        | bevoegdheid ouder 1  | bevoegdheid ouder 2  | ouder met gezag | omschrijving                 |
        | is overleden         | is bevoegd           | erkenner        | ouder 1 is overleden         |
        | staat onder curatele | is bevoegd           | erkenner        | ouder 1 staat onder curatele |
        | is minderjarig       | is bevoegd           | erkenner        | ouder 1 is minderjarig       |
        | is bevoegd           | is overleden         | moeder          | ouder 2 is overleden         |
        | is bevoegd           | staat onder curatele | moeder          | ouder 2 staat onder curatele |
        | is bevoegd           | is minderjarig       | moeder          | ouder 2 is minderjarig       |

    Scenario: minderjarige is erkend na 1-1-2023 en moeder is gehuwd met niet-ouder en de niet-ouder (partner) is niet bevoegd
      Gegeven de persoon 'erkenner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de persoon 'partner' met burgerservicenummer '000000048'
      * is meerderjarig
      * staat onder curatele
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * 'minderjarige' is erkend door 'erkenner' op 10-2-2025
      En 'moeder' en 'partner' zijn met elkaar gehuwd
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'erkenner'

  Regel: Als het kind is erkend na 1-1-2023 en beide ouders zijn overleden of onbevoegd voor gezag, dan is er tijdelijk geen gezag

  Regel: Wanneer de ouders nooit met elkaar gehuwd waren en het kind is geadopteerd, dan is er gezamenlijk ouderlijk gezag
    | vraag     | logische situatie                                                                            | verwacht route | verwacht resultaat          |
    | 2a.1&2a.2 | natuurlijke ouders zijn gehuwd en minderjarige is geadopteerd door twee ongehuwde personen   | 55             | gezamenlijk ouderlijk gezag |
    | 2a.1&2a.2 | natuurlijke ouders zijn ongehuwd en minderjarige is geadopteerd door twee ongehuwde personen | 55             | gezamenlijk ouderlijk gezag |
    | 2a.1&2a.2 | ouders waren nooit gehuwd en minderjarige is geadopteerd door één van de ouders              | 55             | gezamenlijk ouderlijk gezag |
    | 2a.1&2a.2 | minderjarige is geboren in het buitenland en geadopteerd door beide ouders                   | 55a            | gezamenlijk ouderlijk gezag |

    Scenario: natuurlijke ouders zijn gehuwd en minderjarige is geadopteerd door twee ongehuwde personen
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * is 5 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'adoptiemoeder' en ouder 'adoptievader'

    Scenario: natuurlijke ouders zijn ongehuwd en minderjarige is geadopteerd door twee ongehuwde personen
      Gegeven de minderjarige persoon 'minderjarige' met twee ouders 'moeder' en 'vader' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      * is 5 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'adoptiemoeder' en ouder 'adoptievader'

    Scenario: ouders waren nooit gehuwd en minderjarige is geadopteerd door één van de ouders
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is 15 jaar geleden geadopteerd door Nederlandse adoptieouder 'adoptievader' met een Nederlandse adoptieakte
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'adoptievader'

    Scenario: minderjarige is geboren in het buitenland en geadopteerd door beide ouders
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met niet-ingezeten ouders 'geboortemoeder' en 'geboortevader'
      * is 15 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'adoptiemoeder' en ouder 'adoptievader'

  Regel: Wanneer de ouders nooit met elkaar gehuwd waren en het kind is erkend voor 1-1-2023, dan is er eenhoofdig ouderlijk gezag voor de geboortemoeder
    | vraag     | logische situatie                                                              | verwacht route | verwacht resultaat         |
    | 2a.1&2a.3 | ouders waren nooit gehuwd en minderjarige is erkend voor 1-1-2023 door ouder 2 | 54v1           | eenhoofdig ouderlijk gezag |
    | 2a.1&2a.3 | ouders waren nooit gehuwd en minderjarige is erkend voor 1-1-2023 door ouder 1 | 54v2           | eenhoofdig ouderlijk gezag |
    | 2a.1&2a.3 | minderjarige is erkend en erkenner is een man                                  | 54v1           | eenhoofdig ouderlijk gezag |
    | 2a.1&2a.3 | minderjarige is erkend en erkenner is een vrouw                                | 54v1           | eenhoofdig ouderlijk gezag |
    | 2a.1&2a.3 | minderjarige is erkend als ongeboren vrucht en erkenner is een man             | 54v1           | eenhoofdig ouderlijk gezag |
    | 2a.1&2a.3 | minderjarige is erkend als ongeboren vrucht en beide ouders zijn vrouw         | 54             | gezag niet te bepalen      |

    Scenario: ouders waren nooit gehuwd en minderjarige is erkend voor 1-1-2023 door ouder 2
      Gegeven de persoon 'erkenner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * 'minderjarige' is erkend door 'erkenner' op <datum erkenning>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

      Voorbeelden:
        | datum erkenning | omschrijving       |
        |      31-12-2022 | dag voor 1-1-2023  |
        |      15-12-2019 | ruim voor 1-1-2023 |

    Scenario: ouders waren nooit gehuwd en minderjarige is erkend voor 1-1-2023 door ouder 1
      Gegeven de persoon 'moeder' met burgerservicenummer '000000012'
      * is meerderjarig
      En de persoon 'erkenner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de persoon 'minderjarige' met burgerservicenummer '000000036'
      * is minderjarig
      * is ingeschreven in een Nederlandse gemeente
      * is in Nederland geboren
      * heeft 'moeder' als ouder 2
      * is erkend door 'erkenner' als ouder 1 met erkenning na geboorteaangifte op 15-3-2022
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

    Scenario: minderjarige is erkend na geboorte en erkenner is een <geslacht erkenner>
      Gegeven de persoon 'erkenner' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een <geslacht erkenner>
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      En 'minderjarige' is erkend door 'erkenner' <erkenning>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

      Voorbeelden:
        | erkenning                                              | geslacht erkenner |
        | bij geboorteaangifte                                   | man               |
        | na geboorteaangifte op 15-3-2022                       | man               |
        | bij notariële akte op 15-3-2022                        | man               |
        | met gerechtelijke vaststelling ouderschap op 15-3-2022 | man               |
        | bij geboorteaangifte                                   | vrouw             |
        | na geboorteaangifte op 15-3-2022                       | vrouw             |
        | bij notariële akte op 15-3-2022                        | vrouw             |
        | met gerechtelijke vaststelling ouderschap op 15-3-2022 | vrouw             |

    Scenario: minderjarige is erkend als ongeboren vrucht en erkenner is een man
      Gegeven de persoon 'ouder1' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een <geslacht ouder 1>
      En de persoon 'ouder2' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een <geslacht ouder 2>
      En de persoon 'minderjarige' met burgerservicenummer '000000036'
      * is minderjarig
      * is ingeschreven in een Nederlandse gemeente
      * is in Nederland geboren
      * heeft 'ouder1' als ouder 1 met de volgende gegevens
        | naam                                               | waarde                  |
        | geslachtsaanduiding (04.10)                        | <code geslacht ouder 1> |
        | datum ingang familierechtelijke betrekking (62.10) | gisteren - 17 jaar      |
        | aktenummer (81.20)                                 |                 1AA0100 |
      * heeft 'ouder2' als ouder 2 met de volgende gegevens
        | naam                                               | waarde                  |
        | geslachtsaanduiding (04.10)                        | <code geslacht ouder 2> |
        | datum ingang familierechtelijke betrekking (62.10) | gisteren - 17 jaar      |
        | aktenummer (81.20)                                 |                 1AA0100 |
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder '<gezaghebbende ouder>'

      Voorbeelden:
        | geslacht ouder 1 | code geslacht ouder 1 | geslacht ouder 2 | code geslacht ouder 2 | omschrijving                  | gezaghebbende ouder |
        | vrouw            | V                     | man              | M                     | erkenner (ouder 2) is een man | ouder1              |
        | man              | M                     | vrouw            | V                     | erkenner (ouder 1) is een man | ouder2              |

    Scenario: minderjarige is erkend als ongeboren vrucht en beide ouders zijn vrouw
      Gegeven de persoon 'ouder1' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'ouder2' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een vrouw
      En de persoon 'minderjarige' met burgerservicenummer '000000036'
      * is minderjarig
      * is ingeschreven in een Nederlandse gemeente
      * is in Nederland geboren
      * heeft 'ouder1' als ouder 1 met de volgende gegevens
        | naam                                               | waarde             |
        | geslachtsaanduiding (04.10)                        | V                  |
        | datum ingang familierechtelijke betrekking (62.10) | gisteren - 17 jaar |
        | aktenummer (81.20)                                 |            1AA0100 |
      * heeft 'ouder2' als ouder 2 met de volgende gegevens
        | naam                                               | waarde             |
        | geslachtsaanduiding (04.10)                        | V                  |
        | datum ingang familierechtelijke betrekking (62.10) | gisteren - 17 jaar |
        | aktenummer (81.20)                                 |            1AA0100 |
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat niet kan worden vastgesteld welke ouder de geboortemoeder is.'

    Abstract Scenario: minderjarige is erkend na 1-1-2023 door niet ingezeten ouder en <omschrijving>
      Gegeven adres 'A1'
        | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
        |                  518 | Turfmarkt          |                  1 |                           0518200000583526 |
      Gegeven de persoon 'Moeder' met burgerservicenummer '000000012'
      * heeft de volgende gegevens
        | naam                        | waarde   |
        | geslachtsnaam (02.40)       | Moeder   |
        | geboortedatum (03.10)       | 19820101 |
        | geslachtsaanduiding (04.10) | V        |
      Gegeven de persoon 'Vader' zonder burgerservicenummer
      * heeft de volgende gegevens
        | naam                        | waarde   |
        | geslachtsnaam (02.40)       | Vader    |
        | geboortedatum (03.10)       | 19800701 |
        | geslachtsaanduiding (04.10) | M        |
      Gegeven de persoon 'Minderjarige' met burgerservicenummer '000000024'
      * heeft de volgende gegevens
        | naam                          | waarde   |
        | geslachtsnaam (02.40)         | Moeder   |
        | geboortedatum (03.10)         | 20221203 |
        | geboorteland (03.30)          |     6030 |
        | beschrijving document (82.30) | PIVA PL  |
        | aktenummer (81.20)            |          |
      En heeft een ouder 1 met de volgende gegevens
        | naam                                               | waarde    |
        | burgerservicenummer (01.20)                        | 000000012 |
        | geslachtsnaam (02.40)                              | Moeder    |
        | geboortedatum (03.10)                              |  19820101 |
        | geslachtsaanduiding (04.10)                        | V         |
        | datum ingang familierechtelijke betrekking (62.10) |  20221203 |
        | beschrijving document (82.30)                      | PIVA PL   |
      En heeft een ouder 2 met de volgende gegevens
        | naam                                               | waarde                 |
        | geslachtsnaam (02.40)                              | Vader                  |
        | geboortedatum (03.10)                              |               19800701 |
        | geslachtsaanduiding (04.10)                        | M                      |
        | datum ingang familierechtelijke betrekking (62.10) | <datum erkenning>      |
        | beschrijving document (82.30)                      | PIVA PL                |
        | aktenummer (81.20)                                 | <aktenummer erkenning> |
      En is ingeschreven op adres 'A1' met de volgende gegevens
        | naam                              | waarde |
        | gemeente van inschrijving (09.10) |    518 |
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' <verwacht gezag>

      Voorbeelden:
        | aktenummer erkenning | omschrijving                          | datum erkenning | omschrijving datum erkenning | verwacht gezag                                                  |
        |              1AC0100 | erkend met Nederlandse erkenningsakte |        20221227 | voor 1-1-2023                | eenhoofdig ouderlijk gezag met ouder 'Moeder'                   |
        |                      | erkenning overgenomen van PIVA PL     |        20221227 | voor 1-1-2023                | eenhoofdig ouderlijk gezag met ouder 'Moeder'                   |
        |              1AC0100 | erkend met Nederlandse erkenningsakte |        20240401 | na 1-1-2023                  | gezamenlijk ouderlijk gezag met ouder 'Moeder' en ouder 'Vader' |
        |                      | erkenning overgenomen van PIVA PL     |        20240401 | na 1-1-2023                  | gezamenlijk ouderlijk gezag met ouder 'Moeder' en ouder 'Vader' |

  Regel: Wanneer de ouders nooit met elkaar gehuwd waren en het kind is erkend voor 1-1-2023 en de geboortemoeder is overleden of onbevoegd, dan is er tijdelijk geen gezag
    | vraag     | geboortemoeder | andere ouder | logische situatie                                                  | verwacht route | verwacht resultaat         |
    | 2a.3&4a.3 | bevoegd        | bevoegd      | geboortemoeder is bevoegd                                          | 54v1/54v2      | eenhoofdig ouderlijk gezag |
    | 2a.3&4a.3 | bevoegd        | overleden    | geboortemoeder is bevoegd en de andere ouder is overleden          | 54v1o1/54v2o2  | eenhoofdig ouderlijk gezag |
    | 2a.3&4a.3 | bevoegd        | curatele     | geboortemoeder is bevoegd en de andere ouder staat onder curatele  | 54v1o1/54v2o2  | eenhoofdig ouderlijk gezag |
    | 2a.3&4a.3 | bevoegd        | minderjarig  | geboortemoeder is bevoegd en de andere ouder is minderjarig        | 54v1o1/54v2o2  | eenhoofdig ouderlijk gezag |
    | 2a.3&4a.3 | overleden      | bevoegd      | geboortemoeder is overleden                                        | 54v1o2/54v2o1  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | curatele       | bevoegd      | geboortemoeder staat onder curatele                                | 54v1o2/54v2o1  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | minderjarig    | bevoegd      | geboortemoeder is overleden                                        | 54v1o2/54v2o1  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | overleden      | overleden    | geboortemoeder en andere ouder zijn beide overleden                | 53v1oo/53v2oo  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | overleden      | curatele     | geboortemoeder is overleden en andere ouder staat onder curatele   | 53v1oc/53v2oc  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | overleden      | minderjarig  | geboortemoeder is overleden en andere ouder is minderjarig         | 53v1om/53v2om  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | curatele       | overleden    | geboortemoeder staat onder curatele en andere ouder is overleden   | 53v1oc/53v2oc  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | curatele       | curatele     | geboortemoeder en andere ouder staan beide onder curatele          | 53v1cc/53v2cc  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | curatele       | minderjarig  | geboortemoeder staat onder curatele en andere ouder is minderjarig | 53v1cm/53v2cm  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | minderjarig    | overleden    | geboortemoeder is minderjarig en andere ouder is overleden         | 53v1om/53v2om  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | minderjarig    | curatele     | geboortemoeder is minderjarig en andere ouder staat onder curatele | 53v1cm/53v2cm  | tijdelijk geen gezag       |
    | 2a.3&4a.3 | minderjarig    | minderjarig  | geboortemoeder en andere ouder zijn beide minderjarig              | 53v1om/53v2om  | tijdelijk geen gezag       |

    Scenario: <omschrijving>
      Gegeven de persoon 'moeder' met burgerservicenummer '000000012'
      * is meerderjarig
      En de persoon 'erkenner' met burgerservicenummer '000000024'
      * is meerderjarig
      * <bevoegdheid erkenner>
      En de persoon 'minderjarige' met burgerservicenummer '000000036'
      * is minderjarig
      * is ingeschreven in een Nederlandse gemeente
      * is in Nederland geboren
      * heeft 'moeder' als ouder <categorie moeder>
      * is erkend door 'erkenner' als ouder <categorie erkenner> met erkenning na geboorteaangifte op 15-3-2022
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

      Voorbeelden:
        | categorie moeder | categorie erkenner | bevoegdheid erkenner | omschrijving                                                      | route  |
        |                1 |                  2 | is bevoegd           | geboortemoeder en erkenner zijn beide bevoegd                     |   54v1 |
        |                1 |                  2 | is overleden         | geboortemoeder is bevoegd en de andere ouder is overleden         | 54v1o1 |
        |                1 |                  2 | staat onder curatele | geboortemoeder is bevoegd en de andere ouder staat onder curatele | 54v1o1 |
        |                1 |                  2 | is minderjarig       | geboortemoeder is bevoegd en de andere ouder is minderjarig       | 54v1o1 |
        |                2 |                  1 | is bevoegd           | geboortemoeder en erkenner zijn beide bevoegd                     |   54v2 |
        |                2 |                  1 | is overleden         | geboortemoeder is bevoegd en de andere ouder is overleden         | 54v2o2 |
        |                2 |                  1 | staat onder curatele | geboortemoeder is bevoegd en de andere ouder staat onder curatele | 54v2o2 |
        |                2 |                  1 | is minderjarig       | geboortemoeder is bevoegd en de andere ouder is minderjarig       | 54v2o2 |

    Scenario: <omschrijving>
      Gegeven de persoon 'moeder' met burgerservicenummer '000000012'
      * is meerderjarig
      * <bevoegdheid moeder>
      En de persoon 'erkenner' met burgerservicenummer '000000024'
      * is meerderjarig
      * <bevoegdheid erkenner>
      En de persoon 'minderjarige' met burgerservicenummer '000000036'
      * is minderjarig
      * is ingeschreven in een Nederlandse gemeente
      * is in Nederland geboren
      * heeft 'moeder' als ouder <categorie moeder>
      * is erkend door 'erkenner' als ouder <categorie erkenner> met erkenning na geboorteaangifte op 15-3-2022
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'
      # Paden en toelichtingen zijn eigenlijk niet correct, omdat daarin ook iets staat over de bevoegdheid van de ouder die geen gezag heeft

      Voorbeelden:
        | categorie moeder | categorie erkenner | bevoegdheid moeder   | bevoegdheid erkenner | omschrijving                                                       | toelichting                                                    | route  |
        | 1                | 2                  | is overleden         | is bevoegd           | geboortemoeder is overleden en andere ouder is wel bevoegd         | Tijdelijk geen gezag omdat de ouder overleden of onbevoegd is. | 54v1o2 |
        | 1                | 2                  | staat onder curatele | is bevoegd           | geboortemoeder staat onder curatele en andere ouder is wel bevoegd | Tijdelijk geen gezag omdat de ouder overleden of onbevoegd is. | 54v1o2 |
        | 1                | 2                  | is minderjarig       | is bevoegd           | geboortemoeder is minderjarig en andere ouder is wel bevoegd       | Tijdelijk geen gezag omdat de ouder overleden of onbevoegd is. | 54v1o2 |
        | 1                | 2                  | is overleden         | is overleden         | geboortemoeder en andere ouder zijn beide overleden                | Tijdelijk geen gezag omdat de ouder overleden is.              | 54v1o  |
        | 1                | 2                  | is overleden         | staat onder curatele | geboortemoeder is overleden en andere ouder staat onder curatele   | Tijdelijk geen gezag omdat de ouder overleden is.              | 54v1o  |
        | 1                | 2                  | is overleden         | is minderjarig       | geboortemoeder is overleden en andere ouder is minderjarig         | Tijdelijk geen gezag omdat de ouder overleden is.              | 54v1o  |
        | 1                | 2                  | staat onder curatele | is overleden         | geboortemoeder staat onder curatele en andere ouder is overleden   | Tijdelijk geen gezag omdat de ouder onder curatele staat.      | 54v1c  |
        | 1                | 2                  | staat onder curatele | staat onder curatele | geboortemoeder en andere ouder staan beide onder curatele          | Tijdelijk geen gezag omdat de ouder onder curatele staat.      | 54v1c  |
        | 1                | 2                  | staat onder curatele | is minderjarig       | geboortemoeder staat onder curatele en andere ouder is minderjarig | Tijdelijk geen gezag omdat de ouder onder curatele staat.      | 54v1c  |
        | 1                | 2                  | is minderjarig       | is overleden         | geboortemoeder is minderjarig en andere ouder is overleden         | Tijdelijk geen gezag omdat de ouder minderjarig is.            | 54v1m  |
        | 1                | 2                  | is minderjarig       | staat onder curatele | geboortemoeder is minderjarig en andere ouder staat onder curatele | Tijdelijk geen gezag omdat de ouder minderjarig is.            | 54v1m  |
        | 1                | 2                  | is minderjarig       | is minderjarig       | geboortemoeder en andere ouder zijn beide minderjarig              | Tijdelijk geen gezag omdat de ouder minderjarig is.            | 54v1m  |
        | 2                | 1                  | is overleden         | is bevoegd           | geboortemoeder is overleden en andere ouder is wel bevoegd         | Tijdelijk geen gezag omdat de ouder overleden of onbevoegd is. | 54v2o1 |
        | 2                | 1                  | staat onder curatele | is bevoegd           | geboortemoeder staat onder curatele en andere ouder is wel bevoegd | Tijdelijk geen gezag omdat de ouder overleden of onbevoegd is. | 54v2o1 |
        | 2                | 1                  | is overleden         | is bevoegd           | geboortemoeder is minderjarig en andere ouder is wel bevoegd       | Tijdelijk geen gezag omdat de ouder overleden of onbevoegd is. | 54v2o1 |
        | 2                | 1                  | is overleden         | is overleden         | geboortemoeder en andere ouder zijn beide overleden                | Tijdelijk geen gezag omdat de ouder overleden is.              | 54v2o  |
        | 2                | 1                  | is overleden         | staat onder curatele | geboortemoeder is overleden en andere ouder staat onder curatele   | Tijdelijk geen gezag omdat de ouder overleden is.              | 54v2o  |
        | 2                | 1                  | is overleden         | is minderjarig       | geboortemoeder is overleden en andere ouder is minderjarig         | Tijdelijk geen gezag omdat de ouder overleden is.              | 54v2o  |
        | 2                | 1                  | staat onder curatele | is overleden         | geboortemoeder staat onder curatele en andere ouder is overleden   | Tijdelijk geen gezag omdat de ouder onder curatele staat.      | 54v2c  |
        | 2                | 1                  | staat onder curatele | staat onder curatele | geboortemoeder en andere ouder staan beide onder curatele          | Tijdelijk geen gezag omdat de ouder onder curatele staat.      | 54v2c  |
        | 2                | 1                  | staat onder curatele | is minderjarig       | geboortemoeder staat onder curatele en andere ouder is minderjarig | Tijdelijk geen gezag omdat de ouder onder curatele staat.      | 54v2c  |
        | 2                | 1                  | is minderjarig       | is overleden         | geboortemoeder is minderjarig en andere ouder is overleden         | Tijdelijk geen gezag omdat de ouder minderjarig is.            | 54v2m  |
        | 2                | 1                  | is minderjarig       | staat onder curatele | geboortemoeder is minderjarig en andere ouder staat onder curatele | Tijdelijk geen gezag omdat de ouder minderjarig is.            | 54v2m  |
        | 2                | 1                  | is minderjarig       | is minderjarig       | geboortemoeder en andere ouder zijn beide minderjarig              | Tijdelijk geen gezag omdat de ouder minderjarig is.            | 54v2m  |
