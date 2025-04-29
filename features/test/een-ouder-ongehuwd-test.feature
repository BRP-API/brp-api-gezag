# language: nl
Functionaliteit: Test gezagsuitspraak bij minderjarige met één ouder die ten tijde van de geboorte ongehuwd was
  Test dat de functionaliteit rond bepalen gezag voor een minderjarige met één ouder correct werkt.

  Alleen routes die ook geraakt zijn in productie worden getest.

  Regel: Als de minderjarige niet tijdens een huwelijk of partnerschap van de juridische ouder geboren is, dan heeft de ouder eenhoofdig ouderlijk gezag
    | vraag    | logische situatie                                               | verwacht route | verwacht resultaat         |
    | 2.1&4a.3 | er is één ouder                                                 | 40o1           | eenhoofdig ouderlijk gezag |
    | 2.1&4a.3 | minderjarige geboren in buitenland en geadopteerd met één ouder | 40ao1          | eenhoofdig ouderlijk gezag |
    | 2.1&4a.3 | er is één ouder als ouder 2                                     | 40o2           | eenhoofdig ouderlijk gezag |

    Scenario: er is één ouder
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

    Scenario: minderjarige geboren in buitenland en geadopteerd met één ouder
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland geadopteerd door één ouder 'adoptiemoeder'
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'adoptiemoeder'

    Scenario: er is één ouder als ouder 2
      Gegeven de persoon 'moeder' met burgerservicenummer '000000012'
      * is meerderjarig
      En de persoon 'minderjarige' met burgerservicenummer '000000036'
      * is minderjarig
      * is in Nederland geboren
      * is ingeschreven in de BRP
      * heeft 'moeder' als ouder 2
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

  Regel: Als de ouder is overleden of onbevoegd is voor gezag, dan is er tijdelijk geen gezag
    | vraag | logische situatie                           | verwacht route | verwacht resultaat   |
    | 4a.3  | er is één ouder en die is overleden         | 39o            | tijdelijk geen gezag |
    | 4a.3  | er is één ouder en die staat onder curatele | 39c            | tijdelijk geen gezag |
    | 4a.3  | er is één ouder en die is minderjarig       | 39m            | tijdelijk geen gezag |

    Scenario: er is één ouder en die <gebeurtenis bevoegdheid>
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      En persoon 'moeder'
      * <gebeurtenis bevoegdheid>
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' tijdelijk geen gezag met de toelichting '<toelichting>'

      Voorbeelden:
        | gebeurtenis bevoegdheid | toelichting                                               |
        | is overleden            | Tijdelijk geen gezag omdat de ouder overleden is.         |
        | staat onder curatele    | Tijdelijk geen gezag omdat de ouder onder curatele staat. |
        | is minderjarig          | Tijdelijk geen gezag omdat de ouder minderjarig is.       |
