# language: nl
Functionaliteit: Test gezagsuitspraak bij gerechtelijke uitspraak gezag
  Test dat de functionaliteit rond bepalen gezag na een gerechtelijke uitspraak gezag correct werkt.

  Regel: indicatie gezag 1D geeft gezamenlijk gezag voor ouder 1 en een onbekende derde
    | vraag   | logische situatie                                                                                                    | verwacht route | verwacht resultaat                        |
    | 3.2(1D) | uitspraak gezag ouder 1 en een derde	en minderjarige heeft twee ouders                                              | 4n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(1D) | uitspraak gezag ouder 1 en een derde en minderjarige heeft één ouder                                                 | 4n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(1D) | uitspraak gezag ouder 1 en een derde en minderjarige heeft één ouder die gehuwd was bij geboorte van de minderjarige | 4n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(1D) | uitspraak gezag ouder 1 en een derde na adoptie door beide ouders bij geboren in buitenland                          | 4an            | gezamenlijk gezag met een onbekende derde |

    Scenario: uitspraak gezag ouder 1 en een derde met <beginsituatie>
      Gegeven de minderjarige persoon 'minderjarige' met <beginsituatie>
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder' en een derde
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'moeder' en een onbekende derde

      Voorbeelden:
        | beginsituatie                                  |
        | twee gehuwde ouders 'moeder' en 'vader'        |
        | één ouder 'moeder'                             |
        | één ouder 'moeder' die gehuwd is met 'partner' |

    Scenario: uitspraak gezag ouder 1 en een derde na adoptie door beide ouders bij geboren in buitenland
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met niet-ingezeten ouders 'geboortemoeder' en 'geboortevader'
      * is 12 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'adoptiemoeder' en een derde
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'adoptiemoeder' en een onbekende derde

  Regel: indicatie gezag 1D geeft voogdij zonder derde wanneer betreffende ouder is overleden of onbevoegd is voor gezag
    | vraag        | logische situatie                                                                                                  | verwacht route | verwacht resultaat                        |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en de andere ouder is overleden                                          | 4n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en de andere ouder staat onder curatele                                  | 4n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en de andere ouder is minderjarig                                        | 4n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 is overleden en er is geen andere ouder                       | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 staat onder curatele en er is geen andere ouder               | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 is minderjarig en er is geen andere ouder                     | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 is overleden en andere ouder wel bevoegd                      | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 staat onder curatele en andere ouder wel bevoegd              | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 is minderjarig en andere ouder wel bevoegd                    | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en beide ouders zijn overleden                                           | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 is overleden en ouder 2 onder curatele                        | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 2 is overleden en ouder 1 onder curatele                        | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 is overleden en ouder 2 is minderjarig                        | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 2 is overleden en ouder 1 is minderjarig                        | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en beide ouders onder curatele                                           | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 onder curatele en ouder 2 is minderjarig                      | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 2 onder curatele en ouder 1 is minderjarig                      | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en beide ouders zijn minderjarig                                         | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en de partner van ouder 1 is overleden                                   | 4n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en de partner van ouder 1 staat onder curatele                           | 4n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en de partner van ouder 1 is minderjarig                                 | 4n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 is overleden en de partner van ouder 1 is wel bevoegd         | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 staat onder curatele en de partner van ouder 1 is wel bevoegd | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 is minderjarig en de partner van ouder 1 is wel bevoegd       | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 en de partner zijn overleden                                  | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 is overleden en partner onder curatele                        | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en partner is overleden en ouder 1 onder curatele                        | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 is overleden en partner is minderjarig                        | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en partner is overleden en ouder 1 is minderjarig                        | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder1 en de partner staan onder curatele                             | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder 1 onder curatele en partner is minderjarig                      | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en partner onder curatele en ouder 1 is minderjarig                      | 4o1            | voogdij zonder derde                      |
    | 3.2(1D)&4b.1 | uitspraak gezag voor ouder 1 en een derde en ouder1 em partner zijn minderjarig                                    | 4o1            | voogdij zonder derde                      |
    # ik had bij veel testgevallen een andere route verwacht (zie antwoordenmodel), maar logging geeft op elke situatie met voogdij zonder derde route 4o1
    # alternatieve routes in antwoordenmodel verwachten soms OG1 of G - dit klopt n.m.m. niet want de derde moet onder elk antwoord op vraag 4b gezag behouden

    Scenario: uitspraak gezag ouder 1 en een derde en de andere ouder <reden onbevoegd>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder' en een derde
      En persoon 'vader'
      * <reden onbevoegd>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'moeder' en een onbekende derde

      Voorbeelden:
        | reden onbevoegd      |
        | is overleden         |
        | staat onder curatele |
        | is minderjarig       |

    Scenario: uitspraak gezag voor ouder 1 en een derde en er is geen andere ouder en ouder 1 <reden onbevoegd>
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder' en een derde
      En persoon 'moeder'
      * <reden onbevoegd>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' voogdij

      Voorbeelden:
        | reden onbevoegd      |
        | is overleden         |
        | staat onder curatele |
        | is minderjarig       |

    Scenario: uitspraak gezag voor ouder 1 en een derde en moeder <bevoegdheid moeder> en vader <bevoegdheid vader>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder' en een derde
      En persoon 'moeder'
      * <bevoegdheid moeder>
      En persoon 'vader'
      * <bevoegdheid vader>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' voogdij

      Voorbeelden:
        | bevoegdheid moeder   | bevoegdheid vader    |
        | is overleden         | is bevoegd           |
        | staat onder curatele | is bevoegd           |
        | is minderjarig       | is bevoegd           |
        | is overleden         | is overleden         |
        | is overleden         | staat onder curatele |
        | staat onder curatele | is overleden         |
        | is overleden         | is minderjarig       |
        | is minderjarig       | is overleden         |
        | staat onder curatele | staat onder curatele |
        | staat onder curatele | is minderjarig       |
        | is minderjarig       | staat onder curatele |
        | is minderjarig       | is minderjarig       |

    Scenario: uitspraak gezag voor ouder 1 en een derde en de partner van moeder <reden onbevoegd>
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder' die gehuwd is met 'partner'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder' en een derde
      En persoon 'partner'
      * <reden onbevoegd>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'moeder' en een onbekende derde

      Voorbeelden:
        | reden onbevoegd      |
        | is overleden         |
        | staat onder curatele |
        | is minderjarig       |

    Scenario: uitspraak gezag voor ouder 1 en een derde en moeder <bevoegdheid moeder> en de partner van moeder <bevoegdheid partner>
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder' die gehuwd is met 'partner'
      * gisteren - 1 jaar is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder' en een derde
      En persoon 'moeder'
      * <bevoegdheid moeder>
      En persoon 'partner'
      * <bevoegdheid partner>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' voogdij

      Voorbeelden:
        | bevoegdheid moeder   | bevoegdheid partner  |
        | is overleden         | is bevoegd           |
        | staat onder curatele | is bevoegd           |
        | is minderjarig       | is bevoegd           |
        | is overleden         | is overleden         |
        | is overleden         | staat onder curatele |
        | staat onder curatele | is overleden         |
        | is overleden         | is minderjarig       |
        | is minderjarig       | is overleden         |
        | staat onder curatele | staat onder curatele |
        | staat onder curatele | is minderjarig       |
        | is minderjarig       | staat onder curatele |
        | is minderjarig       | is minderjarig       |

  Regel: indicatie gezag 2D geeft gezamenlijk gezag voor ouder 2 en een onbekende derde
    | vraag   | logische situatie                                                                                 | verwacht route | verwacht resultaat                        |
    | 3.2(2D) | uitspraak gezag ouder 2 en een derde bij twee gehuwde ouders die beide het gezag hadden           | 5n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(2D) | uitspraak gezag ouder 2 en een derde bij twee ouders waarbij ouder 1 van rechtswege het gezag had | 5n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(2D) | uitspraak gezag ouder 2 en een derde na adoptie door beide ouders bij geboren in buitenland       | 5an            | gezamenlijk gezag met een onbekende derde |

    Scenario: uitspraak  gezag ouder 2 en een derde met <beginsituatie>
      Gegeven de minderjarige persoon 'minderjarige' met <beginsituatie>
      # is geboren voor 1 januari 2023
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'vader' en een derde
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'vader' en een onbekende derde

      Voorbeelden:
        | beginsituatie                                                                                                  | omschrijving                                             |
        | twee gehuwde ouders 'moeder' en 'vader'                                                                        | twee gehuwde ouders die beide het gezag hadden           |
        | twee ouders 'moeder' en 'vader' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren | twee ouders waarbij ouder 1 van rechtswege het gezag had |

    Scenario: uitspraak gezag ouder 2 en een derde na adoptie door beide ouders bij geboren in buitenland
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met niet-ingezeten ouders 'geboortemoeder' en 'geboortevader'
      * is 12 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'adoptievader' en een derde
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'adoptievader' en een onbekende derde

  Regel: indicatie gezag 2D geeft voogdij zonder derde wanneer betreffende ouder is overleden of onbevoegd is voor gezag
    | vraag        | logische situatie                                                                                      | ouder 1     |ouder 2      | verwacht route | verwacht resultaat                        |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en de andere ouder is overleden                              | overleden   | bevoegd     | 5n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en de andere ouder staat onder curatele                      | curatele    | bevoegd     | 5n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en de andere ouder is minderjarig                            | minderjarig | bevoegd     | 5n             | gezamenlijk gezag met een onbekende derde |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en ouder 2 is overleden en andere ouder wel bevoegd          | bevoegd     | overleden   | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en ouder 2 staat onder curatele en andere ouder wel bevoegd  | bevoegd     | curatele    | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en ouder 2 is minderjarig en andere ouder wel bevoegd        | bevoegd     | minderjarig | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en beide ouders zijn overleden                               | overleden   | overleden   | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en ouder 1 is overleden en ouder 2 onder curatele            | overleden   | curatele    | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en ouder 2 is overleden en ouder 1 onder curatele            | curatele    | overleden   | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en ouder 1 is overleden en ouder 2 is minderjarig            | overleden   | minderjarig | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en ouder 2 is overleden en ouder 1 is minderjarig            | minderjarig | overleden   | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en beide ouders onder curatele                               | curatele    | curatele    | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en ouder 1 onder curatele en ouder 2 is minderjarig          | curatele    | minderjarig | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en ouder 2 onder curatele en ouder 1 is minderjarig          | minderjarig | curatele    | 5o1            | voogdij zonder derde                      |
    | 3.2(2D)&4b.1 | uitspraak gezag voor ouder 2 en een derde en beide ouders zijn minderjarig                             | minderjarig | minderjarig | 5o1            | voogdij zonder derde                      |

    Scenario: uitspraak gezag ouder 2 en een derde en de andere ouder <reden onbevoegd>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'vader' en een derde
      En persoon 'moeder'
      * <reden onbevoegd>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'vader' en een onbekende derde

      Voorbeelden:
        | reden onbevoegd      |
        | is overleden         |
        | staat onder curatele |
        | is minderjarig       |

    Scenario: uitspraak gezag voor ouder 2 en een derde en vader <bevoegdheid vader> en de andere ouder <bevoegdheid moeder>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'vader' en een derde
      En persoon 'moeder'
      * <bevoegdheid moeder>
      En persoon 'vader'
      * <bevoegdheid vader>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' voogdij

      Voorbeelden:
        | bevoegdheid vader    | bevoegdheid moeder   |
        | is overleden         | is overleden         |
        | is overleden         | staat onder curatele |
        | staat onder curatele | is overleden         |
        | is overleden         | is minderjarig       |
        | is minderjarig       | is overleden         |
        | staat onder curatele | staat onder curatele |
        | staat onder curatele | is minderjarig       |
        | is minderjarig       | staat onder curatele |
        | is minderjarig       | is minderjarig       |

  Regel: indicatie gezag D geeft voogdij zonder derde
    | vraag  | logische situatie                                                                            | verwacht route | verwacht resultaat   |
    | 3.2(D) | uitspraak gezag voor een derde met twee ouders                                               | 6              | voogdij zonder derde |
    | 3.2(D) | uitspraak gezag voor een derde met één ongehuwde ouder                                       | 6              | voogdij zonder derde |
    | 3.2(D) | uitspraak gezag voor een derde met één ouder die gehuwd was bij geboorte van de minderjarige | 6              | voogdij zonder derde |
    | 3.2(D) | uitspraak gezag voor een derde na adoptie door beide ouders bij geboren in buitenland        | 6a             | voogdij zonder derde |

    Scenario: uitspraak gezag voor een derde
      Gegeven de minderjarige persoon 'minderjarige' met <beginsituatie>
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een derde
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' voogdij

      Voorbeelden:
        | beginsituatie                                  |
        | twee gehuwde ouders 'moeder' en 'vader'        |
        | één ouder 'moeder'                             |
        | één ouder 'moeder' die gehuwd is met 'partner' |

    Scenario: uitspraak gezag ouder 1 en een derde na adoptie door beide ouders bij geboren in buitenland
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met niet-ingezeten ouders 'geboortemoeder' en 'geboortevader'
      * is 12 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een derde
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' voogdij

  Regel: indicatie gezag 12 geeft gezamenlijk ouderlijk gezag
    | vraag   | logische situatie                                                                        | verwacht route | verwacht resultaat          |
    | 3.2(12) | uitspraak gezag voor beide ouders waar van rechtswege alleen moeder gezag zou hebben     | 7              | tweehoofdig ouderlijk gezag |
    | 3.2(12) | uitspraak gezag voor beide ouders na eerdere uitspraak gezag                             | 7              | tweehoofdig ouderlijk gezag |
    | 3.2(12) | uitspraak gezag voor beide ouders na adoptie door beide ouders bij geboren in buitenland | 7a             | tweehoofdig ouderlijk gezag |

    Scenario: uitspraak gezag voor beide ouders waar van rechtswege alleen moeder gezag zou hebben
      Gegeven de minderjarige persoon 'minderjarige' met twee ouders 'moeder' en 'vader' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      # is geboren voor 1 januari 2023
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan beide ouders
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

    Scenario: uitspraak gezag voor beide ouders na eerdere uitspraak gezag <eerdere uitspraak gezag>
      Gegeven de minderjarige persoon 'minderjarige' met twee ouders 'moeder' en 'vader' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      # is geboren voor 1 januari 2023
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <eerdere toewijzing gezag>
      * 5 jaar geleden is in een nieuwe gerechtelijke uitspraak het gezag toegewezen aan beide ouders
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

      Voorbeelden:
        | eerdere indicatie gezag | eerdere toewijzing gezag |
        |                       1 | 'moeder'                 |
        |                       2 | 'vader'                  |
        |                      1D | 'moeder' en een derde    |
        |                      2D | 'vader' en een derde     |
        | D                       | een derde                |

    Scenario: uitspraak gezag voor beide ouders na adoptie door beide ouders bij geboren in buitenland
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met niet-ingezeten ouders 'geboortemoeder' en 'geboortevader'
      * is 12 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan beide ouders
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'adoptiemoeder' en ouder 'adoptievader'

  Regel: indicatie gezag 12 geeft eenhoofdig ouderlijk gezag wanneer één van de ouders is overleden of onbevoegd is voor gezag
    | vraag        | logische situatie                                                 | verwacht route | verwacht resultaat                      |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 1 staat onder curatele | 8              | eenhoofdig ouderlijk gezag voor ouder 2 |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 1 is overleden         | 8              | eenhoofdig ouderlijk gezag voor ouder 2 |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 1 is minderjarig       | 8              | eenhoofdig ouderlijk gezag voor ouder 2 |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 2 staat onder curatele | 9              | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 2 is overleden         | 9              | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 2 is minderjarig       | 9              | eenhoofdig ouderlijk gezag voor ouder 1 |

    Scenario: indicatie gezag 12 en <onbevoegde ouder> <reden onbevoegd>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan beide ouders
      En persoon '<onbevoegde ouder>'
      * <reden onbevoegd>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder '<ouder met gezag>'

      Voorbeelden:
        | onbevoegde ouder | reden onbevoegd      | ouder met gezag |
        | moeder           | staat onder curatele | vader           |
        | moeder           | is overleden         | vader           |
        | moeder           | is minderjarig       | vader           |
        | vader            | staat onder curatele | moeder          |
        | vader            | is overleden         | moeder          |
        | vader            | is minderjarig       | moeder          |

  Regel: indicatie gezag 12 geeft tijdelijk geen gezag wanneer beide ouders zijn overleden dan wel onbevoegd zijn voor gezag
    | vraag        | logische situatie                                                                     | verwacht route | verwacht resultaat   |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en beide ouders overleden                           | 10oo           | tijdelijk geen gezag |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 1 is overleden en ouder 2 onder curatele   | 10oc           | tijdelijk geen gezag |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 2 is overleden en ouder 1 onder curatele   | 10oc           | tijdelijk geen gezag |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 1 is overleden en ouder 2 is minderjarig   | 10om           | tijdelijk geen gezag |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 2 is overleden en ouder 1 is minderjarig   | 10om           | tijdelijk geen gezag |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en beide ouders onder curatele                      | 10cc           | tijdelijk geen gezag |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 1 onder curatele en ouder 2 is minderjarig | 10cm           | tijdelijk geen gezag |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en ouder 2 onder curatele en ouder 1 is minderjarig | 10cm           | tijdelijk geen gezag |
    | 3.2(12)&4a.2 | uitspraak gezag voor beide ouders en beide ouders zijn minderjarig                    | 10mm           | tijdelijk geen gezag |

    Scenario: uitspraak gezag voor beide ouders en <toelichting>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan beide ouders
      En persoon 'moeder'
      * <bevoegdheid moeder>
      En persoon 'vader'
      * <bevoegdheid vader>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | bevoegdheid moeder   | bevoegdheid vader    | toelichting                                                                                  |
        | is overleden         | is overleden         | Tijdelijk geen gezag omdat beide ouders overleden zijn.                                      |
        | staat onder curatele | staat onder curatele | Tijdelijk geen gezag omdat beide ouders onder curatele staan.                                |
        | is minderjarig       | is minderjarig       | Tijdelijk geen gezag omdat beide ouders minderjarig zijn.                                    |
        | is overleden         | staat onder curatele | Tijdelijk geen gezag omdat een ouder overleden is en de andere ouder onder curatele staat.   |
        | is overleden         | is minderjarig       | Tijdelijk geen gezag omdat een ouder overleden is en de andere ouder minderjarig is.         |
        | staat onder curatele | is minderjarig       | Tijdelijk geen gezag omdat een ouder onder curatele staat en de andere ouder minderjarig is. |

  Regel: indicatie gezag 1 geeft eenhoofdig ouderlijk gezag
    | vraag       | logische situatie                                                                          | verwacht route | verwacht resultaat                      |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 bij twee gehuwde ouders                                       | 11             | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 bij één ongehuwde ouder                                       | 11             | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 bij één ouder die gehuwd was bij geboorte van de minderjarige | 11             | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(1)&4a.3 | uitspraak gezag ouder 1 na adoptie door beide ouders bij geboren in buitenland             | 11a            | eenhoofdig ouderlijk gezag voor ouder 1 |

    Scenario: uitspraak gezag voor ouder 1 bij twee gehuwde ouders
      Gegeven de minderjarige persoon 'minderjarige' met <beginsituatie>
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

      Voorbeelden:
        | beginsituatie                                  |
        | twee gehuwde ouders 'moeder' en 'vader'        |
        | één ouder 'moeder'                             |
        | één ouder 'moeder' die gehuwd is met 'partner' |

    Scenario: uitspraak gezag ouder 1 na adoptie door beide ouders bij geboren in buitenland
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met niet-ingezeten ouders 'geboortemoeder' en 'geboortevader'
      * is 12 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'adoptiemoeder'
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'adoptiemoeder'

  Regel: indicatie gezag 1 geeft tijdelijk geen gezag wanneer betreffende ouder is overleden of onbevoegd is voor gezag
    | vraag       | logische situatie                                                                        | ouder 1     | ouder 2     | verwacht route | verwacht resultaat                      |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en de andere ouder is overleden                             | bevoegd     | overleden   | 11o1           | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en de andere ouder staat onder curatele                     | bevoegd     | curatele    | 11o1           | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en de andere ouder is minderjarig                           | bevoegd     | minderjarig | 11o1           | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en de partner is overleden                                  | bevoegd     | overleden   | 11o1           | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en de partner staat onder curatele                          | bevoegd     | curatele    | 11o1           | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en de partner is minderjarig                                | bevoegd     | minderjarig | 11o1           | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 1 is overleden en andere ouder wel bevoegd         | overleden   | bevoegd     | 11o2           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 1 staat onder curatele en andere ouder wel bevoegd | overleden   | bevoegd     | 11c2           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 1 is minderjarig en andere ouder wel bevoegd       | minderjarig | bevoegd     | 11m2           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 1 is overleden en er is geen andere ouder          | overleden   | geen        | 12o            | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 1 staat onder curatele en er is geen andere ouder  | curatele    | geen        | 12c            | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 1 is minderjarig en er is geen andere ouder        | minderjarig | geen        | 12m            | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en beide ouders zijn overleden                              | overleden   | overleden   | 12oo           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 1 is overleden en ouder 2 onder curatele           | overleden   | curatele    | 12oc           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 2 is overleden en ouder 1 onder curatele           | curatele    | overleden   | 12oc           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 1 is overleden en ouder 2 is minderjarig           | overleden   | minderjarig | 12om           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 2 is overleden en ouder 1 is minderjarig           | minderjarig | overleden   | 12om           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en beide ouders onder curatele                              | curatele    | curatele    | 12cc           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 1 onder curatele en ouder 2 is minderjarig         | curatele    | minderjarig | 12cm           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en ouder 2 onder curatele en ouder 1 is minderjarig         | minderjarig | curatele    | 12cm           | tijdelijk geen gezag                    |
    | 3.2(1)&4a.3 | uitspraak gezag voor ouder 1 en beide ouders zijn minderjarig                            | minderjarig | minderjarig | 12mm           | tijdelijk geen gezag                    |

    Scenario: uitspraak gezag voor ouder 1 en de andere ouder <reden onbevoegd>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      En persoon 'vader'
      * <reden onbevoegd>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

      Voorbeelden:
        | reden onbevoegd      |
        | is overleden         |
        | staat onder curatele |
        | is minderjarig       |

    Scenario: uitspraak gezag voor ouder 1 en de partner <reden onbevoegd>
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder' die gehuwd is met 'partner'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      En persoon 'partner'
      * <reden onbevoegd>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

      Voorbeelden:
        | reden onbevoegd      |
        | is overleden         |
        | staat onder curatele |
        | is minderjarig       |

    @deprecated
    Scenario: uitspraak gezag voor ouder 1 en ouder 1 <bevoegdheid moeder> en de andere ouder is wel bevoegd
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      En persoon 'moeder'
      * <bevoegdheid moeder>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'
      # voorbeelden curatele en minderjarig geven ook route o2 met toelichting dat ouder overleden is!

      Voorbeelden:
        | bevoegdheid moeder   | toelichting                                               |
        | is overleden         | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | staat onder curatele | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        # https://github.com/BRP-API/brp-api-gezag/issues/325 de toelichting voor de voorbeelden 2 (curatele) en 3 (minderjarig) is "...ouder overleden is"

    @nieuw
    Scenario: uitspraak gezag voor ouder 1 en ouder 1 <bevoegdheid moeder> en de andere ouder is wel bevoegd
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      En persoon 'moeder'
      * <bevoegdheid moeder>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | bevoegdheid moeder   | toelichting                                               |
        | is overleden         | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | staat onder curatele | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |

    @deprecated
    Scenario: uitspraak gezag voor ouder 1 en <toelichting>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      En persoon 'moeder'
      * <bevoegdheid moeder>
      En persoon 'vader'
      * <bevoegdheid vader>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | bevoegdheid moeder   | bevoegdheid vader    | toelichting                                               |
        | is overleden         | is overleden         | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | is overleden         | staat onder curatele | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | is overleden         | is minderjarig       | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | staat onder curatele | is overleden         | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | staat onder curatele | staat onder curatele | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | staat onder curatele | is minderjarig       | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | is minderjarig       | is overleden         | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        | is minderjarig       | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        | is minderjarig       | staat onder curatele | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
      # zie https://github.com/BRP-API/brp-api-gezag/issues/344 toelichting zegt ook iets over bevoegdheid van ouder die geen gezag heeft

    @nieuw
    Scenario: uitspraak gezag voor ouder 1 en <toelichting>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      En persoon 'moeder'
      * <bevoegdheid moeder>
      En persoon 'vader'
      * <bevoegdheid vader>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | bevoegdheid moeder   | bevoegdheid vader    | toelichting                                               |
        | is overleden         | is overleden         | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | is overleden         | staat onder curatele | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | is overleden         | is minderjarig       | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | staat onder curatele | is overleden         | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | staat onder curatele | staat onder curatele | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | staat onder curatele | is minderjarig       | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | is minderjarig       | is overleden         | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        | is minderjarig       | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        | is minderjarig       | staat onder curatele | Tijdelijk geen gezag omdat de ouder minderjarig is.       |

    Scenario: uitspraak gezag voor ouder 1 en er is geen andere ouder en de ouder <reden onbevoegd>
      Gegeven de minderjarige persoon 'minderjarige' met <beginsituatie>
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      En persoon 'moeder'
      * <reden onbevoegd>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | beginsituatie                                  | reden onbevoegd      | toelichting                                               |
        | één ouder 'moeder'                             | is overleden         | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | één ouder 'moeder'                             | staat onder curatele | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | één ouder 'moeder'                             | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        | één ouder 'moeder' die gehuwd is met 'partner' | is overleden         | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | één ouder 'moeder' die gehuwd is met 'partner' | staat onder curatele | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | één ouder 'moeder' die gehuwd is met 'partner' | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |

    Scenario: uitspraak gezag voor ouder 1 en er is geen andere ouder en minderjarige is staande huwelijk geboren en de ouder <reden onbevoegd ouder> en de partner <reden onbevoegd partner>
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder' die gehuwd is met 'partner'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      En persoon 'moeder'
      * <reden onbevoegd ouder>
      En persoon 'partner'
      * <reden onbevoegd partner>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | reden onbevoegd ouder | reden onbevoegd partner | toelichting                                               |
        | is overleden          | is overleden            | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | is overleden          | staat onder curatele    | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | is overleden          | is minderjarig          | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | staat onder curatele  | is overleden            | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | staat onder curatele  | staat onder curatele    | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | staat onder curatele  | is minderjarig          | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | is minderjarig        | is overleden            | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        | is minderjarig        | staat onder curatele    | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        | is minderjarig        | is minderjarig          | Tijdelijk geen gezag omdat de ouder minderjarig is.       |

  Regel: indicatie gezag 2 geeft eenhoofdig ouderlijk gezag
    | vraag       | logische situatie                                                                          | verwacht route | verwacht resultaat                      |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 1 bij twee gehuwde ouders                                       | 13             | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(2)&4a.3 | uitspraak gezag ouder 1 na adoptie door beide ouders bij geboren in buitenland             | 13a            | eenhoofdig ouderlijk gezag voor ouder 1 |

    Scenario: uitspraak gezag voor ouder 2 bij twee gehuwde ouders
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'vader'
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'vader'

    Scenario: uitspraak gezag ouder 2 na adoptie door beide ouders bij geboren in buitenland
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met niet-ingezeten ouders 'geboortemoeder' en 'geboortevader'
      * is 12 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'adoptievader'
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'adoptievader'

  Regel: indicatie gezag 2 geeft tijdelijk geen gezag wanneer betreffende ouder is overleden of onbevoegd is voor gezag
    | vraag       | logische situatie                                                                        | verwacht route | verwacht resultaat                      |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 2 is overleden en andere ouder wel bevoegd         | 13o1           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 2 staat onder curatele en andere ouder wel bevoegd | 13c1           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 2 is minderjarig en andere ouder wel bevoegd       | 13m1           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en de andere ouder is overleden                             | 13o2           | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en de andere ouder staat onder curatele                     | 13o2           | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en de andere ouder is minderjarig                           | 13o2           | eenhoofdig ouderlijk gezag voor ouder 1 |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 2 is overleden en er is geen andere ouder          | 14o            | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 2 staat onder curatele en er is geen andere ouder  | 14c            | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 2 staat onder curatele en er is geen andere ouder  | 14m            | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en beide ouders zijn overleden                              | 14oo           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 1 is overleden en ouder 2 onder curatele           | 14oc           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 2 is overleden en ouder 1 onder curatele           | 14oc           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 1 is overleden en ouder 2 is minderjarig           | 14om           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 2 is overleden en ouder 1 is minderjarig           | 14om           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en beide ouders onder curatele                              | 14cc           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 1 onder curatele en ouder 2 is minderjarig         | 14cm           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en ouder 2 onder curatele en ouder 1 is minderjarig         | 14cm           | tijdelijk geen gezag                    |
    | 3.2(2)&4a.3 | uitspraak gezag voor ouder 2 en beide ouders zijn minderjarig                            | 14mm           | tijdelijk geen gezag                    |

    Scenario: uitspraak gezag voor ouder 2 en de andere ouder <reden onbevoegd>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'vader'
      En persoon 'moeder'
      * <reden onbevoegd>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'vader'

      Voorbeelden:
        | reden onbevoegd      |
        | is overleden         |
        | staat onder curatele |
        | is minderjarig       |

    @deprecated
    Scenario: uitspraak gezag voor ouder 2 en <toelichting>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'vader'
      En persoon 'vader'
      * <bevoegdheid vader>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | bevoegdheid vader    | toelichting                                               |
        | is overleden         | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | staat onder curatele | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        # https://github.com/BRP-API/brp-api-gezag/issues/325 de toelichting voor de voorbeelden 2 (curatele) en 3 (minderjarig) is "...ouder overleden is"

    @nieuw
    Scenario: uitspraak gezag voor ouder 2 en <toelichting>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'vader'
      En persoon 'vader'
      * <bevoegdheid vader>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | bevoegdheid vader    | toelichting                                               |
        | is overleden         | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | staat onder curatele | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |

    Scenario: uitspraak gezag voor ouder 2 en <toelichting>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'vader'
      En persoon 'moeder'
      * <bevoegdheid moeder>
      En persoon 'vader'
      * <bevoegdheid vader>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | bevoegdheid moeder   | bevoegdheid vader    | toelichting                                               |
        | is overleden         | is overleden         | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | staat onder curatele | staat onder curatele | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | is minderjarig       | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        | is overleden         | staat onder curatele | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | is overleden         | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
        | staat onder curatele | is minderjarig       | Tijdelijk geen gezag omdat de ouder minderjarig is.       |

  Regel: in geval van een recente gebeurtenis na een gerechtelijke uitspraak, dan wordt het gezag van rechtswege bepaald
    | vraag | logische situatie                                                                                                  | verwacht route | verwacht resultaat          |
    | 3.1   | ouders zijn gehuwd geweest en uitspraak gezag met recente gebeurtenis adoptie                                      | 23             | tweehoofdig ouderlijk gezag |
    | 3.1   | uitspraak gezag met recente gebeurtenis reparatiehuwelijk                                                          | 27             | tweehoofdig ouderlijk gezag |
    | 3.1   | geboren in buitenland en ouders zijn gehuwd en uitspraak gezag met recente gebeurtenis adoptie                     | 27a            | tweehoofdig ouderlijk gezag |
    | 3.1   | ouders zijn gehuwd geweest en uitspraak gezag met recente gebeurtenis reparatiehuwelijk en daarna weer gescheiden  | 23             | tweehoofdig ouderlijk gezag |
    | 3.1   | ouders zijn gehuwd geweest en uitspraak gezag en geen recente gebeurtenis door adoptie voor de uitspraak           |                | voogdij zonder derde        |
    | 3.1   | ouders zijn gehuwd geweest en uitspraak gezag en geen recente gebeurtenis door reparatiehuwelijk voor de uitspraak |                | eenhoofdig ouderlijk gezag  |
    | 3.1   | ouders zijn gehuwd geweest en uitspraak gezag en geen recente gebeurtenis door reparatiehuwelijk bij uitspraak D   |                | voogdij                     |
    | 3.1   | ouders zijn gehuwd geweest en uitspraak gezag en geen recente gebeurtenis door reparatiehuwelijk bij uitspraak 1D  |                | gezamenlijk gezag           |
    | 3.1   | ouders zijn gehuwd geweest en uitspraak gezag en geen recente gebeurtenis door reparatiehuwelijk bij uitspraak 2D  |                | gezamenlijk gezag           |
    | 3.1   | ouders zijn gehuwd geweest en uitspraak gezag en geen recente gebeurtenis door huwelijk met andere persoon         |                | voogdij zonder derde        |
    | 3.1   | ouders zijn nooit gehuwd geweest en uitspraak gezag met recente gebeurtenis adoptie                                | 33             | tweehoofdig ouderlijk gezag |
    | 3.1   | ouders zijn nooit gehuwd geweest en uitspraak gezag en geen recente gebeurtenis door adoptie voor de uitspraak     |                | diverse                     |
    # nu alleen testgevallen opgesteld voor routes die afgelopen jaar zijn voorgekomen in productie: route 23 en route 27

    Scenario: ouders zijn gehuwd geweest en uitspraak gezag <indicatie gezag> met recente gebeurtenis adoptie
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En 'moeder' en 'vader' zijn 8 jaar geleden gescheiden
      En persoon 'minderjarige'
      * 5 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toewijzing gezag>
      * is 2 jaar geleden geadopteerd door Nederlandse adoptieouder 'adoptievader' met een Nederlandse adoptieakte
      En 'moeder' en 'adoptievader' zijn 6 jaar geleden gehuwd
      En 'moeder' en 'adoptievader' zijn 2 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'adoptievader'

      Voorbeelden:
        | indicatie gezag | toewijzing gezag      |
        |               1 | 'moeder'              |
        |               2 | 'vader'               |
        |              12 | beide ouders          |
        |              1D | 'moeder' en een derde |
        |              2D | 'vader' en een derde  |
        | D               | een derde             |

    Scenario: uitspraak gezag <indicatie gezag> met recente gebeurtenis reparatiehuwelijk
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toewijzing gezag>
      En 'moeder' en 'vader' zijn 9 jaar geleden gescheiden
      En 'moeder' en 'vader' zijn 5 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

      Voorbeelden:
        | indicatie gezag | toewijzing gezag |
        |               1 | 'moeder'         |
        |               2 | 'vader'          |

    Scenario: geboren in buitenland en ouders zijn gehuwd en uitspraak gezag met recente gebeurtenis adoptie
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met één ouder 'moeder'
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toewijzing gezag>
      * is 5 jaar geleden geadopteerd door Nederlandse adoptieouder 'adoptievader' met een Nederlandse adoptieakte
      En 'moeder' en 'adoptievader' zijn 12 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'adoptievader'

      Voorbeelden:
        | indicatie gezag | toewijzing gezag      |
        |               1 | 'moeder'              |
        |              1D | 'moeder' en een derde |
        | D               | een derde             |

    Scenario: geboren in buitenland en ouders zijn gehuwd en uitspraak gezag met recente gebeurtenis adoptie
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met twee gehuwde ouders 'moeder' en 'vader'
      En 'moeder' en 'vader' zijn 8 jaar geleden gescheiden
      En persoon 'minderjarige'
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toewijzing gezag>
      * is 5 jaar geleden geadopteerd door Nederlandse adoptieouder 'adoptievader' met een Nederlandse adoptieakte
      En 'moeder' en 'adoptievader' zijn 9 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'adoptievader'

      Voorbeelden:
        | indicatie gezag | toewijzing gezag      |
        |               1 | 'moeder'              |
        |               2 | 'vader'               |
        |              12 | beide ouders          |
        |              1D | 'moeder' en een derde |
        |              2D | 'vader' en een derde  |
        | D               | een derde             |

    Scenario: ouders zijn gehuwd geweest en uitspraak gezag <indicatie gezag> met recente gebeurtenis reparatiehuwelijk en daarna weer gescheiden
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toewijzing gezag>
      En 'moeder' en 'vader' zijn 9 jaar geleden gescheiden
      En 'moeder' en 'vader' zijn 5 jaar geleden gehuwd
      En 'moeder' en 'vader' zijn 2 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

      Voorbeelden:
        | indicatie gezag | toewijzing gezag |
        |               1 | 'moeder'         |
        |               2 | 'vader'          |

    Scenario: ouders zijn gehuwd geweest en uitspraak gezag en geen recente gebeurtenis door adoptie voor de uitspraak
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is 10 jaar geleden geadopteerd door Nederlandse adoptieouder 'adoptievader' met een Nederlandse adoptieakte
      * 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een derde
      En 'moeder' en 'adoptievader' zijn 12 jaar geleden gehuwd
      En 'moeder' en 'adoptievader' zijn 9 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' voogdij

    Scenario: ouders zijn gehuwd geweest en uitspraak gezag <indicatie gezag> en geen recente gebeurtenis door reparatiehuwelijk voor de uitspraak
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toewijzing gezag>
      En 'moeder' en 'vader' zijn 9 jaar geleden gescheiden
      En 'moeder' en 'vader' zijn 5 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' <uitspraak gezag>

      Voorbeelden:
        | indicatie gezag | toewijzing gezag | uitspraak gezag                                                 |
        |               1 | 'moeder'         | eenhoofdig ouderlijk gezag met ouder 'moeder'                   |
        |               2 | 'vader'          | eenhoofdig ouderlijk gezag met ouder 'vader'                    |
        |              12 | beide ouders     | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader' |

    Scenario: ouders zijn gehuwd geweest en uitspraak gezag <indicatie gezag> en geen recente gebeurtenis door reparatiehuwelijk bij uitspraak <indicatie gezag>
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toewijzing gezag>
      En 'moeder' en 'vader' zijn 9 jaar geleden gescheiden
      En 'moeder' en 'vader' zijn 5 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' <uitspraak gezag>

      Voorbeelden:
        | indicatie gezag | toewijzing gezag      | uitspraak gezag                                             |
        |              1D | 'moeder' en een derde | gezamenlijk gezag met ouder 'moeder' en een onbekende derde |
        |              2D | 'vader' en een derde  | gezamenlijk gezag met ouder 'vader' en een onbekende derde  |
        | D               | een derde             | voogdij                                                     |

    Scenario: ouders zijn gehuwd geweest en uitspraak gezag en geen recente gebeurtenis door huwelijk met andere persoon
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toewijzing gezag>
      En 'moeder' en 'vader' zijn 9 jaar geleden gescheiden
      En de meerderjarige persoon 'nieuwe partner'
      En 'moeder' en 'nieuwe partner' zijn 5 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder '<gezaghebbende ouder>'

      Voorbeelden:
        | indicatie gezag | toewijzing gezag | gezaghebbende ouder |
        |               1 | 'moeder'         | moeder              |
        |               2 | 'vader'          | vader               |

    Scenario: ouders zijn nooit gehuwd geweest en uitspraak gezag met recente gebeurtenis adoptie
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toewijzing gezag>
      * is 5 jaar geleden geadopteerd door Nederlandse adoptieouder 'adoptievader' met een Nederlandse adoptieakte
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'adoptievader'

      Voorbeelden:
        | indicatie gezag | toewijzing gezag      |
        |               1 | 'moeder'              |
        |               2 | 'vader'               |
        |              12 | beide ouders          |
        |              1D | 'moeder' en een derde |
        |              2D | 'vader' en een derde  |
        | D               | een derde             |

    Scenario: ouders zijn nooit gehuwd geweest en uitspraak gezag en geen recente gebeurtenis door adoptie voor de uitspraak
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is 9 jaar geleden geadopteerd door Nederlandse adoptieouder 'adoptievader' met een Nederlandse adoptieakte
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toewijzing gezag>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' <uitspraak gezag>

      Voorbeelden:
        | indicatie gezag | toewijzing gezag            | uitspraak gezag                                                        |
        |               1 | 'moeder'                    | eenhoofdig ouderlijk gezag met ouder 'moeder'                          |
        |               2 | 'adoptievader'              | eenhoofdig ouderlijk gezag met ouder 'adoptievader'                    |
        |              12 | beide ouders                | gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'adoptievader' |
        |              1D | 'moeder' en een derde       | gezamenlijk gezag met ouder 'moeder' en een onbekende derde            |
        |              2D | 'adoptievader' en een derde | gezamenlijk gezag met ouder 'adoptievader' en een onbekende derde      |
        | D               | een derde                   | voogdij                                                                |

  Regel: Gezag verkregen vóór nietigverklaring van het reparatiehuwelijk blijft daarna geldig
    Een rechtsfeit dat heeft plaatsgevonden voor de nietigverklaring, behoudt het rechtsgevolg. 
    In dit geval betreft dat het vervallen van de gerechtelijke uitspraak door een reparatiehuwelijk.
    Dus behoudt de vader gezag, ondanks dat het huwelijk nietig is verklaard.

    Een nietigverklaring van een huwelijk is ongelijk aan een nietig huwelijk.
    Een nietig huwelijk of geregistreerd partnerschap heeft geen enkel rechtsgevolg.

    Scenario: recente gebeurtenis reparatiehuwelijk en dat huwelijk is nietig verklaard
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'vader'
      En 'moeder' en 'vader' zijn 9 jaar geleden gescheiden
      En 'moeder' en 'vader' zijn 5 jaar geleden gehuwd
      En het huwelijk van 'moeder' en 'vader' is 4 jaar geleden nietig verklaard
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

    Scenario: huwelijk van ouders is nietig (gecorrigeerd)
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * 8 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'vader'
      En 'moeder' en 'vader' zijn 9 jaar geleden gescheiden
      En 'moeder' en 'vader' zijn 5 jaar geleden gehuwd
      En is het huwelijk van 'moeder' en 'vader' gecorrigeerd met de volgende gegevens
        | naam                                                                | waarde            |
        | burgerservicenummer (01.20)                                         |                   |
        | geslachtsnaam (02.40)                                               |                   |
        | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  |                   |
        | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) |                   |
        | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   |                   |
        | datum ingang geldigheid (85.10)                                     | gisteren - 2 jaar |
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'vader'
