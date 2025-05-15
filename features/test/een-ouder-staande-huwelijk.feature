# language: nl
Functionaliteit: Test gezagsuitspraak bij minderjarige met één ouder die ten tijde van de geboorte gehuwd was of een geregistreerd partnerschap had
  Test dat de functionaliteit rond bepalen gezag voor een minderjarige met één ouder correct werkt.

  Alleen routes die ook geraakt zijn in productie worden getest.

  Regel: Als de minderjarige tijdens het huwelijk of partnerschap van de juridische ouder geboren is, dan hebben de ouder en diens (toenmalige) partner gezamenlijk gezag
    | vraag | logische situatie                                         | verwacht route | verwacht resultaat         |
    | 2b.1  | moeder was gehuwd bij geboorte en is dat nu nog           | 41             | gezamenlijk gezag          |
    | 2b.1  | moeder was gehuwd bij geboorte en is daarna gescheiden    | 41             | gezamenlijk gezag          |
    | 2b.1  | moeder was nooit gehuwd                                   |                | eenhoofdig ouderlijk gezag |
    | 2b.1  | moeder was gehuwd en is voor de geboorte gescheiden       |                | eenhoofdig ouderlijk gezag |
    | 2b.1  | moeder is gehuwd na geboorte                              |                | eenhoofdig ouderlijk gezag |

    Scenario: moeder was gehuwd bij geboorte en is dat nu nog
      Gegeven de persoon 'partner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is vandaag - 8 jaar geboren
      En 'moeder' en 'partner' zijn <huwelijksdatum> gehuwd
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'moeder' en derde 'partner'

      Voorbeelden:
        | huwelijksdatum    | omschrijving                         |
        | morgen - 20 jaar  | ruim voor geboorte van minderjarige  |
        | gisteren - 8 jaar | 1 dag voor geboorte van minderjarige |
        | vandaag - 8 jaar  | op de geboortedag van minderjarige   |

    Scenario: moeder was gehuwd bij geboorte en is daarna gescheiden
      Gegeven de persoon 'partner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is vandaag - 8 jaar geboren
      En 'moeder' en 'partner' zijn morgen - 10 jaar gehuwd
      En 'moeder' en 'partner' zijn <datum echtscheiding> gescheiden
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'moeder' en derde 'partner'

      Voorbeelden:
        | datum echtscheiding | omschrijving                       |
        | gisteren - 7 jaar   | ruim na geboorte van minderjarige  |
        | morgen - 8 jaar     | 1 dag na geboorte van minderjarige |

    Scenario: moeder was nooit gehuwd
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

    Scenario: moeder was gehuwd en is voor de geboorte gescheiden
      Gegeven de persoon 'partner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is vandaag - 8 jaar geboren
      En 'moeder' en 'partner' zijn morgen - 10 jaar gehuwd
      En 'moeder' en 'partner' zijn <datum echtscheiding> gescheiden
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

      Voorbeelden:
        | datum echtscheiding | omschrijving                         |
        | morgen - 9 jaar     | ruim voor geboorte van minderjarige  |
        | gisteren - 8 jaar   | 1 dag voor geboorte van minderjarige |
        | vandaag - 8 jaar    | op de geboortedag van minderjarige   |

    Scenario: moeder is gehuwd na geboorte
      Gegeven de persoon 'partner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is vandaag - 8 jaar geboren
      En 'moeder' en 'partner' zijn <huwelijksdatum> gehuwd
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

      Voorbeelden:
        | huwelijksdatum  | omschrijving                       |
        | morgen - 6 jaar | ruim na geboorte van minderjarige  |
        | morgen - 8 jaar | 1 dag na geboorte van minderjarige |

  Regel: Als de minderjarige tijdens het huwelijk of partnerschap van de juridische ouder is geadopteerd, dan hebben de ouder en diens (toenmalige) partner gezamenlijk gezag

  Regel: Als de minderjarige tijdens het huwelijk of partnerschap van de juridische ouder geboren is en er sprake is van ontkenning vaderschap, dan heeft de ouder eenhoofdig ouderlijk gezag

  Regel: Als de ouder is overleden of onbevoegd is voor gezag, dan is er voogdij door de partner

  Regel: Als de partner is overleden of onbevoegd is voor gezag, dan is er eenhoofdig ouderlijk gezag

  Regel: Als zowel de ouder als de partner is overleden of onbevoegd is voor gezag, dan is er tijdelijk geen gezag

  Regel: De partner behoudt gezag ook na nietigverklaring van het huwelijk
    De nietigverklaring heeft terugwerkende kracht tot het tijdstip van de huwelijkssluiting of het aangaan van het geregistreerde partnerschap.
    Het huwelijk of het geregistreerde partnerschap wordt geacht niet te hebben bestaan.
    Een rechtsfeit dat heeft plaatsgevonden voor de nietigverklaring, behoudt het rechtsgevolg.

    Een nietigverklaring van een huwelijk is ongelijk aan een nietig huwelijk.
    Een nietig huwelijk of geregistreerd partnerschap heeft geen enkel rechtsgevolg.

    | vraag | logische situatie                                         | verwacht route | verwacht resultaat         |
    | 2b.1  | huwelijk is na geboorte nietig verklaard                  | 41             | gezamenlijk gezag          |
    | 2b.1  | huwelijk is voor geboorte nietig verklaard                |                | eenhoofdig ouderlijk gezag |
    | 2b.1  | huwelijk is na geboorte nietig (verwijderd met correctie) |                | eenhoofdig ouderlijk gezag |
    
    Deze regel is nog niet geïmplementeerd!

    @to-do @skip-verify
    Scenario: huwelijk is na geboorte nietig verklaard
      Gegeven de persoon 'partner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is vandaag - 8 jaar geboren
      En 'moeder' en 'partner' zijn morgen - 9 jaar gehuwd
      En het huwelijk van 'moeder' en 'partner' is morgen - 8 jaar nietig verklaard
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk gezag met ouder 'moeder' en derde 'partner'

    @deprecated
    Scenario: huwelijk is na geboorte nietig verklaard
      Gegeven de persoon 'partner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is vandaag - 8 jaar geboren
      En 'moeder' en 'partner' zijn morgen - 9 jaar gehuwd
      En het huwelijk van 'moeder' en 'partner' is 8 jaar geleden nietig verklaard
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

    Scenario: huwelijk is voor geboorte nietig verklaard
      Gegeven de persoon 'partner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is vandaag - 8 jaar geboren
      En 'moeder' en 'partner' zijn morgen - 9 jaar gehuwd
      En het huwelijk van 'moeder' en 'partner' is 8 jaar geleden nietig verklaard
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'

    Scenario: huwelijk is nietig
      Gegeven de persoon 'partner' met burgerservicenummer '000000024'
      * is meerderjarig
      En de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      * is vandaag - 8 jaar geboren
      En 'moeder' en 'partner' zijn morgen - 9 jaar gehuwd
      #En het huwelijk van 'moeder' en 'partner' is nietig
      En is het huwelijk van 'moeder' en 'partner' gecorrigeerd met de volgende gegevens
        | naam                                                                | waarde            |
        | burgerservicenummer (01.20)                                         |                   |
        | geslachtsnaam (02.40)                                               |                   |
        | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  |                   |
        | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) |                   |
        | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   |                   |
        | datum ingang geldigheid (85.10)                                     | gisteren - 8 jaar |
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'
