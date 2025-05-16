# language: nl
Functionaliteit: Test gezagsuitspraak bij minderjarige met twee ouders die gehuwd zijn of zijn geweest
  Test dat de functionaliteit rond bepalen gezag voor een minderjarige met twee ouders correct werkt.

  Alleen routes die ook geraakt zijn in productie worden getest.

  Regel: Als de ouders na de geboorte van minderjarige een periode met elkaar gehuwd zijn (geweest) of partnerschap hebben (gehad), dan hebben de ouders gezamenlijk ouderlijk gezag
    | vraag | logische situatie                                           | verwacht route | verwacht resultaat          |
    | 2a.1  | ouders zijn nu gehuwd                                       | 49             | gezamenlijk ouderlijk gezag |
    | 2a.1  | ouders zijn gehuwd na geboorte                              | 49             | gezamenlijk ouderlijk gezag |
    | 2a.1  | ouders zijn gehuwd voor geboorte en zijn daarna gescheiden  | 45             | gezamenlijk ouderlijk gezag |
    | 2a.1  | ouders zijn gehuwd voor adoptie en zijn daarna gescheiden   | 45a            | gezamenlijk ouderlijk gezag |
    | 2a.1  | ouders zijn gehuwd na geboorte en zijn daarna gescheiden    | 45             | gezamenlijk ouderlijk gezag |
    | 2a.1  | ouders zijn nooit gehuwd geweest                            | 54v1           | eenhoofdig ouderlijk gezag  |
    | 2a.1  | ouders zijn gehuwd en weer gescheiden voor geboorte         | 54v1           | eenhoofdig ouderlijk gezag  |

    Scenario: ouders zijn nu gehuwd
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

    Scenario: ouders zijn gehuwd na geboorte
      Gegeven de minderjarige persoon 'minderjarige' met twee ouders 'moeder' en 'vader' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      En 'moeder' en 'vader' zijn 1 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

    Scenario: ouders zijn gehuwd voor geboorte en zijn daarna gescheiden
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En 'moeder' en 'vader' zijn 2 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

    Scenario: ouders zijn gehuwd na geboorte en zijn daarna gescheiden
      Gegeven de minderjarige persoon 'minderjarige' met twee ouders 'moeder' en 'vader' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      En 'moeder' en 'vader' zijn 5 jaar geleden gehuwd
      En 'moeder' en 'vader' zijn 2 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

    Scenario: ouders zijn gehuwd voor adoptie en zijn daarna gescheiden
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met niet-ingezeten ouders 'moeder' en 'vader'
      * is 12 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      En 'adoptiemoeder' en 'adoptievader' zijn 15 jaar geleden gehuwd
      En 'adoptiemoeder' en 'adoptievader' zijn 2 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'adoptiemoeder' en ouder 'adoptievader'

    Scenario: ouders zijn nooit gehuwd geweest
      Gegeven de minderjarige persoon 'minderjarige' met twee ouders 'moeder' en 'vader' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

    @deprecated
    Scenario: ouders zijn gehuwd en weer gescheiden voor geboorte
      Gegeven de minderjarige persoon 'minderjarige' met twee ouders 'moeder' en 'vader' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      En 'moeder' en 'vader' zijn 25 jaar geleden gehuwd
      En 'moeder' en 'vader' zijn 19 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'minderjarige'
      #geeft nu onjuist gezamenlijk ouderlijk gezag, zie https://github.com/BRP-API/brp-api-gezag/issues/338
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

    @nieuw
    Scenario: ouders zijn gehuwd en weer gescheiden voor geboorte
      Gegeven de minderjarige persoon 'minderjarige' met twee ouders 'moeder' en 'vader' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      En 'moeder' en 'vader' zijn 25 jaar geleden gehuwd
      En 'moeder' en 'vader' zijn 19 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

  Regel: Als een van de ouders is overleden of onbevoegd is voor gezag, dan heeft de andere ouder eenhoofdig ouderlijk gezag
    | vraag | ouder 1     | ouder 2     | logische situatie                                      | verwacht route | verwacht resultaat          |
    | 4a.2  | curatele    | bevoegd     | ouder 1 is overleden                                   | 50             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | curatele    | bevoegd     | ouder 1 staat onder curatele                           | 50             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | minderjarig | bevoegd     | ouder 1 is minderjarig                                 | 50             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | bevoegd     | curatele    | ouder 2 is overleden                                   | 51             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | bevoegd     | curatele    | ouder 2 staat onder curatele                           | 51             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | bevoegd     | minderjarig | ouder 2 is minderjarig                                 | 51             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | overleden   | bevoegd     | ouders zijn gescheiden en ouder 1 is overleden         | 46             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | curatele    | bevoegd     | ouders zijn gescheiden en ouder 1 staat onder curatele | 46             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | minderjarig | bevoegd     | ouders zijn gescheiden en ouder 1 is minderjarig       | 46             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | bevoegd     | overleden   | ouders zijn gescheiden en ouder 2 is overleden         | 47             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | bevoegd     | curatele    | ouders zijn gescheiden en ouder 2 staat onder curatele | 47             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | bevoegd     | minderjarig | ouders zijn gescheiden en ouder 2 is minderjarig       | 47             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | bevoegd     | bevoegd     | ouder 1 wordt morgen 18 jaar                           | 50             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | minderjarig | bevoegd     | ouder 1 is vandaag 18 jaar geworden                    |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | bevoegd     | bevoegd     | ouder 1 wordt volgende maand 18 jaar                   | 50             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | minderjarig | bevoegd     | ouder 1 is vorige maand 18 jaar geworden               |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | minderjarig | bevoegd     | ouder 1 is deze maand 18 jaar geworden                 |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | minderjarig | bevoegd     | ouder 1 is vandaag 18 jaar geworden                    |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | bevoegd     | bevoegd     | ouder 1 wordt volgend jaar 18 jaar                     | 50             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | minderjarig | bevoegd     | ouder 1 is vorig jaar 18 jaar geworden                 |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | minderjarig | bevoegd     | ouder 1 is dit jaar 18 jaar geworden                   |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | bevoegd     | bevoegd     | ouder 2 wordt morgen 18 jaar                           | 51             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | bevoegd     | minderjarig | ouder 2 is vandaag 18 jaar geworden                    |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | bevoegd     | bevoegd     | ouder 2 wordt volgende maand 18 jaar                   | 51             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | bevoegd     | minderjarig | ouder 2 is vorige maand 18 jaar geworden               |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | bevoegd     | minderjarig | ouder 2 is deze maand 18 jaar geworden                 |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | bevoegd     | minderjarig | ouder 2 is vandaag 18 jaar geworden                    |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | bevoegd     | bevoegd     | ouder 2 wordt volgend jaar 18 jaar                     | 51             | eenhoofdig ouderlijk gezag  |
    | 4a.2  | bevoegd     | minderjarig | ouder 2 is vorig jaar 18 jaar geworden                 |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | bevoegd     | minderjarig | ouder 2 is dit jaar 18 jaar geworden                   |                | gezamenlijk ouderlijk gezag |

    Scenario: <omschrijving>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En persoon '<onbevoegde ouder>'
      * <bevoegdheid>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder '<bevoegde ouder>'

      Voorbeelden:
        | onbevoegde ouder | bevoegdheid          | bevoegde ouder | omschrijving                 |
        | moeder           | is overleden         | vader          | ouder 1 staat onder curatele |
        | moeder           | staat onder curatele | vader          | ouder 1 staat onder curatele |
        | moeder           | is minderjarig       | vader          | ouder 1 is minderjarig       |
        | vader            | is overleden         | moeder         | ouder 2 staat onder curatele |
        | vader            | staat onder curatele | moeder         | ouder 2 staat onder curatele |
        | vader            | is minderjarig       | moeder         | ouder 2 is minderjarig       |

    Scenario: ouders zijn gescheiden en <omschrijving>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En 'moeder' en 'vader' zijn 2 jaar geleden gescheiden
      En persoon '<onbevoegde ouder>'
      * <bevoegdheid>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder '<bevoegde ouder>'

      Voorbeelden:
        | onbevoegde ouder | bevoegdheid          | bevoegde ouder | omschrijving                 |
        | moeder           | is overleden         | vader          | ouder 1 is overleden         |
        | moeder           | staat onder curatele | vader          | ouder 1 staat onder curatele |
        | moeder           | is minderjarig       | vader          | ouder 1 is minderjarig       |
        | vader            | is overleden         | moeder         | ouder 2 is overleden         |
        | vader            | staat onder curatele | moeder         | ouder 2 staat onder curatele |
        | vader            | is minderjarig       | moeder         | ouder 2 is minderjarig       |

    Scenario: <omschrijving>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En persoon '<ouder>'
      * is <geboortedatum> geboren
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' <uitspraak gezag>

      Voorbeelden:
        | ouder  | geboortedatum            | uitspraak gezag                                                 | omschrijving                             |
        | moeder | morgen - 18 jaar         | eenhoofdig ouderlijk gezag met ouder 'vader'                    | ouder 1 wordt morgen 18 jaar             |
        | moeder | vandaag - 18 jaar        | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' | ouder 1 is vandaag 18 jaar geworden      |
        | moeder | volgende maand - 18 jaar | eenhoofdig ouderlijk gezag met ouder 'vader'                    | ouder 1 wordt volgende maand 18 jaar     |
        | moeder | vorige maand - 18 jaar   | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' | ouder 1 is vorige maand 18 jaar geworden |
        | moeder | deze maand - 18 jaar     | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' | ouder 1 is deze maand 18 jaar geworden   |
        | moeder | dit jaar - 17 jaar       | eenhoofdig ouderlijk gezag met ouder 'vader'                    | ouder 1 wordt volgend jaar 18 jaar       |
        | moeder | dit jaar - 19 jaar       | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' | ouder 1 is vorig jaar 18 jaar geworden   |
        | moeder | dit jaar - 18 jaar       | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' | ouder 1 is dit jaar 18 jaar geworden     |
        | vader  | morgen - 18 jaar         | eenhoofdig ouderlijk gezag met ouder 'moeder'                   | ouder 2 wordt morgen 18 jaar             |
        | vader  | vandaag - 18 jaar        | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' | ouder 2 is vandaag 18 jaar geworden      |
        | vader  | volgende maand - 18 jaar | eenhoofdig ouderlijk gezag met ouder 'moeder'                   | ouder 2 wordt volgende maand 18 jaar     |
        | vader  | vorige maand - 18 jaar   | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' | ouder 2 is vorige maand 18 jaar geworden |
        | vader  | deze maand - 18 jaar     | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' | ouder 2 is deze maand 18 jaar geworden   |
        | vader  | dit jaar - 17 jaar       | eenhoofdig ouderlijk gezag met ouder 'moeder'                   | ouder 2 wordt volgend jaar 18 jaar       |
        | vader  | dit jaar - 19 jaar       | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' | ouder 2 is vorig jaar 18 jaar geworden   |
        | vader  | dit jaar - 18 jaar       | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' | ouder 2 is dit jaar 18 jaar geworden     |

  Regel: Een ouder met volledig onbekend geboortedatum is meerderjarig
    | vraag | logische situatie                                                           | verwacht route | verwacht resultaat          |
    | 4a.2  | minderjarige heeft twee gehuwde ouders en ouder 1 geboortedatum is onbekend |                | gezamenlijk ouderlijk gezag |
    | 4a.2  | minderjarige heeft twee gehuwde ouders en ouder 2 geboortedatum is onbekend |                | gezamenlijk ouderlijk gezag |

    @deprecated
    Scenario: <omschrijving>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En persoon '<ouder>'
      * is op een onbekende datum geboren
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat relevante gegevens ontbreken bij het bepalen van de bevoegdheid van een ouder. Het gaat om de volgende gegevens: geboortedatum'

      Voorbeelden:
        | ouder  | uitspraak gezag                               | omschrijving                      |
        | moeder | eenhoofdig ouderlijk gezag met ouder 'vader'  | ouder 1 geboortedatum is onbekend |
        | vader  | eenhoofdig ouderlijk gezag met ouder 'moeder' | ouder 2 geboortedatum is onbekend |

    @nieuw
    Scenario: <omschrijving>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En persoon '<ouder>'
      * is op een onbekende datum geboren
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' <uitspraak gezag>

      Voorbeelden:
        | ouder  | uitspraak gezag                               | omschrijving                      |
        | moeder | eenhoofdig ouderlijk gezag met ouder 'vader'  | ouder 1 geboortedatum is onbekend |
        | vader  | eenhoofdig ouderlijk gezag met ouder 'moeder' | ouder 2 geboortedatum is onbekend |

  Regel: Als beide ouders zijn overleden of onbevoegd zijn voor gezag, dan is er tijdelijk geen gezag
    | vraag | ouder 1     | ouder 2     | logische situatie                                            | verwacht route | verwacht resultaat         |
    | 4a.2  | overleden   | overleden   | ouder 1 is overleden en ouder 2 staat onder curatele         | 48oo           | tijdelijk geen gezag |
    | 4a.2  | overleden   | curatele    | ouder 1 is overleden en ouder 2 staat onder curatele         | 48oc           | tijdelijk geen gezag |
    | 4a.2  | overleden   | minderjarig | ouder 1 is overleden en ouder 2 is minderjarig               | 48om           | tijdelijk geen gezag |
    | 4a.2  | curatele    | overleden   | ouder 1 staat onder curatele en ouder 2 is overleden         | 48oc           | tijdelijk geen gezag |
    | 4a.2  | curatele    | curatele    | ouder 1 staat onder curatele en ouder 2 staat onder curatele | 48cc           | tijdelijk geen gezag |
    | 4a.2  | curatele    | minderjarig | ouder 1 staat onder curatele en ouder 2 is minderjarig       | 48cm           | tijdelijk geen gezag |
    | 4a.2  | minderjarig | overleden   | ouder 1 is minderjarig en ouder 2 is overleden               | 48om           | tijdelijk geen gezag |
    | 4a.2  | minderjarig | curatele    | ouder 1 is minderjarig en ouder 2 staat onder curatele       | 48cm           | tijdelijk geen gezag |
    | 4a.2  | minderjarig | minderjarig | ouder 1 is minderjarig en ouder 2 is minderjarig             | 48mm           | tijdelijk geen gezag |

    Scenario: <omschrijving>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En 'moeder' en 'vader' zijn 2 jaar geleden gescheiden
      En persoon 'moeder'
      * <bevoegdheid ouder 1>
      En persoon 'vader'
      * <bevoegdheid ouder 2>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | bevoegdheid ouder 1  | bevoegdheid ouder 2  | logische situatie                                            | toelichting                                                                                  |
        | is overleden         | is overleden         | ouder 1 is overleden en ouder 2 staat onder curatele         | Tijdelijk geen gezag omdat beide ouders overleden zijn.                                      |
        | is overleden         | staat onder curatele | ouder 1 is overleden en ouder 2 staat onder curatele         | Tijdelijk geen gezag omdat een ouder overleden is en de andere ouder onder curatele staat.   |
        | is overleden         | is minderjarig       | ouder 1 is overleden en ouder 2 is minderjarig               | Tijdelijk geen gezag omdat een ouder overleden is en de andere ouder minderjarig is.         |
        | staat onder curatele | is overleden         | ouder 1 staat onder curatele en ouder 2 is overleden         | Tijdelijk geen gezag omdat een ouder overleden is en de andere ouder onder curatele staat.   |
        | staat onder curatele | staat onder curatele | ouder 1 staat onder curatele en ouder 2 staat onder curatele | Tijdelijk geen gezag omdat beide ouders onder curatele staan.                                |
        | staat onder curatele | is minderjarig       | ouder 1 staat onder curatele en ouder 2 is minderjarig       | Tijdelijk geen gezag omdat een ouder onder curatele staat en de andere ouder minderjarig is. |
        | is minderjarig       | is overleden         | ouder 1 is minderjarig en ouder 2 is overleden               | Tijdelijk geen gezag omdat een ouder overleden is en de andere ouder minderjarig is.         |
        | is minderjarig       | staat onder curatele | ouder 1 is minderjarig en ouder 2 staat onder curatele       | Tijdelijk geen gezag omdat een ouder onder curatele staat en de andere ouder minderjarig is. |
        | is minderjarig       | is minderjarig       | ouder 1 is minderjarig en ouder 2 is minderjarig             | Tijdelijk geen gezag omdat beide ouders minderjarig zijn.                                    |

  Regel: Gezag verkregen vóór nietigverklaring van het huwelijk blijft daarna geldig
    De nietigverklaring heeft terugwerkende kracht tot het tijdstip van de huwelijkssluiting of het aangaan van het geregistreerde partnerschap.
    Het huwelijk of het geregistreerde partnerschap wordt geacht niet te hebben bestaan.
    Een rechtsfeit dat heeft plaatsgevonden voor de nietigverklaring, behoudt het rechtsgevolg.
    Dus behoudt de vader gezag, ondanks dat het huwelijk nietig is verklaard.

    Een nietigverklaring van een huwelijk is ongelijk aan een nietig huwelijk.
    Een nietig huwelijk of geregistreerd partnerschap heeft geen enkel rechtsgevolg.

    | vraag | logische situatie                                           | verwacht route | verwacht resultaat          |
    | 2a.1  | huwelijk ouders is nietig verklaard na geboorte             | 45             | gezamenlijk ouderlijk gezag |
    | 2a.1  | huwelijk ouders is nietig verklaard voor geboorte           | 54v1           | eenhoofdig ouderlijk gezag  |
    | 2a.1  | huwelijk van ouders is nietig (gecorrigeerd)                | 54v1           | eenhoofdig ouderlijk gezag  |

    Scenario: huwelijk ouders is nietig verklaard na geboorte
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En het huwelijk van 'moeder' en 'vader' is 8 jaar geleden nietig verklaard
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

    @deprecated
    Scenario: huwelijk ouders is nietig verklaard voor geboorte
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En het huwelijk van 'moeder' en 'vader' is 19 jaar geleden nietig verklaard
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'
      # levert ten onrechte tweehoofdig ouderlijk gezag, zie https://github.com/BRP-API/brp-api-gezag/issues/338

    @nieuw
    Scenario: huwelijk ouders is nietig verklaard voor geboorte
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En het huwelijk van 'moeder' en 'vader' is 19 jaar geleden nietig verklaard
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

    Scenario: huwelijk van ouders is nietig (gecorrigeerd)
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En is het huwelijk van 'moeder' en 'vader' gecorrigeerd met de volgende gegevens
        | naam                                                                | waarde            |
        | burgerservicenummer (01.20)                                         |                   |
        | geslachtsnaam (02.40)                                               |                   |
        | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  |                   |
        | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) |                   |
        | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   |                   |
        | datum ingang geldigheid (85.10)                                     | gisteren - 8 jaar |
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'
