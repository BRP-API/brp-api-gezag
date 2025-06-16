# language: nl
Functionaliteit: Minderjarige ouder
  Gezag bepalen voor een minderjarige wanneer één of beide ouders minderjarig zijn.

  Erkenning wanneer de moeder of beide ouders minderjarig zijn (bij geboorte van het kind):
    Er wordt mogelijk geen verklaring over het gezag vastgelegd in deze situatie, omdat dit op moment van erkennen geen rechtsgevolg heeft.
    Bij meerderjarig worden van moeder/de erkenner ontstaat dan mogelijk ten onrechte van rechtswege gezamenlijk gezag van moeder en erkenner.
    # hoe ziet zo'n verklaring vastgelegd in het gezagsregister eruit in de BRP? Wordt dit gezet in indicatie gezag met de gezaghebbende ouders?
  #Zijn de regels voor gezag met minderjarigheid van een ouder in combinatie erkenning veranderd op enig moment (afgezien van 1-1-2023 voor gezag erkenner)?

  Regel: Een meerderjarigheidsverklaring van een minderjarige moeder kan worden vastgelegd in de BRP als gerechtelijke uitspraak over het gezag
    # veronderstelt registratie indicatie gezag als uitvoering van de meerderjarigheidsverklaring, terwijl er geen gezag is vastgelegd in het gezagsregister

    Voorbeeld: De moeder is meerderjarig verklaard en heeft daardoor het gezag gekregen
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 1 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: De minderjarige heeft twee ouders die beide minderjarig zijn en in een gerechtelijke uitspraak zijn beide ouders meerderjarig verklaard
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 17 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan beide ouders
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: De minderjarige heeft twee ouders die beide minderjarig waren bij geboorte en in een gerechtelijke uitspraak is de moeder meerderjarig verklaard en beide ouders zijn inmiddels meerderjarig
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 18 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

  Regel: Een verklaring over het gezag door een minderjarige moeder kan worden vastgelegd in de BRP als gerechtelijke uitspraak over het gezag met ingang geldigheid de datum meerderjarig worden van de moeder
    De gerechtelijke uitspraak heeft dan een datum ingang geldigheid in de toekomst en moet nu dus nog niet worden toegepast.
    # werkt dit (al) zo in het gezagsregister en in de registratie in de BRP?

    Voorbeeld: De moeder en erkenner hebben verklaard dat alleen de moeder het gezag moet krijgen
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 17 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En met ingang geldigheid over 1 jaar is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'

  Regel: Als de moeder minderjarig is en er is geen voogd, dan is er tijdelijk geen gezag

    Voorbeeld: De minderjarige heeft één ouder die minderjarig is en er is (nog) geen voogd toegewezen
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de gisteren geboren persoon 'Bert' met één ouder 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'

    Voorbeeld: De minderjarige heeft twee minderjarige ouders die beide minderjarig zijn en er is (nog) geen voogd toegewezen
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 17 jaar geleden geboren man 'Aart'
      En de gisteren geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat beide ouders minderjarig zijn.'

    Voorbeeld: De minderjarige heeft een minderjarige moeder en is erkend door een meerderjarige ouder en er is (nog) geen voogd toegewezen
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de gisteren geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'
      # volgens het huidige stroomschema gezag zou de vader eenhoofdig ouderlijk gezag krijgen

  Regel: Als de moeder meerderjarig is en haar kind is erkend door een minderjarige, dan is er eenhoofdig ouderlijk gezag voor de moeder

    Voorbeeld: De minderjarige heeft een meerderjarige moeder en is erkend door een minderjarige ouder
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 17 jaar geleden geboren man 'Aart'
      En de gisteren geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: Bij de geboorte van minderjarige waren beide ouders minderjarig en de moeder is nu meerderjarig geworden
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 17 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

  Regel: Als de moeder minderjarig was bij geboorte van haar kind en er is geen andere ouder of voogd en de moeder is nu meerderjarig, dan is er eenhoofdig ouderlijk gezag voor de moeder

    Voorbeeld: Bij de geboorte van minderjarige was de moeder minderjarig en zij is nu meerderjarig geworden
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 2 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

  Regel: Als de moeder minderjarig was bij geboorte van haar kind en zowel de moeder als de erkenner zijn nu meerderjarig, en minderjarige is erkend na 1-1-2023, dan is er gezamenlijk ouderlijk gezag

    Voorbeeld: Bij de geboorte van minderjarige waren beide ouders minderjarig en beide ouders zijn nu meerderjarig geworden
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 18 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Bij de geboorte van minderjarige waren beide ouders minderjarig en beide ouders zijn nu meerderjarig geworden en minderjarige is erkend na 1-1-2023
      Gegeven de op 14-10-2006 geboren vrouw 'Gerda'
      En de op 16-05-2006 geboren man 'Aart'
      En de op 17-12-2022 geboren persoon 'Bert' met één ouder 'Gerda'
      En 'Bert' is erkend door 'Aart' op 3-11-2024
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Regel: Als de moeder minderjarig was bij geboorte van haar kind en zowel de moeder als de erkenner zijn nu meerderjarig, en minderjarige is erkend voor 1-1-2023, dan is er eenhoofdig ouderlijk gezag

    Voorbeeld: Bij de geboorte van minderjarige waren beide ouders minderjarig en de moeder is nu meerderjarig geworden
      Gegeven de op 14-10-2006 geboren vrouw 'Gerda'
      En de op 16-05-2006 geboren man 'Aart'
      En de op 17-12-2022 geboren persoon 'Bert' met één ouder 'Gerda'
      En 'Bert' is erkend door 'Aart' bij geboorteaangifte
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

  Regel: Een voogd behoudt het gezag na het meerderjarig worden van de moeder tot een rechter de voogdij intrekt of wijzigt

    Voorbeeld: Bij de geboorte van minderjarige was de moeder minderjarig en is een voogd aangewezen en de moeder is nu meerderjarig geworden
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 2 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' voogdij

    Voorbeeld: Bij de geboorte van minderjarige was de moeder minderjarig en is een voogd aangewezen en de moeder is nu meerderjarig geworden en de rechter heeft de voogdij beëindigd
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 2 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      En gisteren is in een gerechtelijke uitspraak de voogdij beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: Bij de geboorte van minderjarige waren de moeder en erkenner minderjarig en is een voogd aangewezen en de moeder en erkenner zijn nu meerderjarig geworden en de rechter heeft de voogdij beëindigd
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 18 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      En gisteren is in een gerechtelijke uitspraak de voogdij beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Bij de geboorte van minderjarige waren de moeder en erkenner minderjarig en is een voogd aangewezen en de moeder en erkenner zijn nu meerderjarig geworden en de rechter heeft de voogdij beëindigd toen moeder meerderjarig werd
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 18 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      En 1 jaar geleden is in een gerechtelijke uitspraak de voogdij beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Regel: -------------------------------------------------------------------------------------------------------------------

  Regel: de minderjarige heeft twee ouders die beide minderjarig zijn

    Voorbeeld: De minderjarige heeft twee ouders die beide minderjarig zijn en in een gerechtelijke uitspraak is een
      Gegeven de 16 jaar geleden geboren vrouw 'Gerda'
      En de 17 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' voogdij

    Voorbeeld: De minderjarige heeft twee ouders die beide minderjarig zijn en in een gerechtelijke uitspraak is de moeder meerderjarig verklaard en heeft het gezag gekregen
      Gegeven de 16 jaar geleden geboren vrouw 'Gerda'
      En de 17 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: De minderjarige heeft twee ouders die beide minderjarig zijn en in een gerechtelijke uitspraak zijn beide ouders meerderjarig verklaard en hebben het gezag gekregen
      Gegeven de 16 jaar geleden geboren vrouw 'Gerda'
      En de 17 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan beide ouders
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Regel: de minderjarie heeft twee ouders en één van beide ouders is minderjarig

    Voorbeeld: De minderjarige heeft één minderjarige ouder, de geboortemoeder, en een meerderjarige ouder, de erkenner en in een gerechtelijke uitspraak is de moeder meerderjarig verklaard en heeft het gezag gekregen
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 20 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toegewezen gezag>
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' <resultaat>
      # veronderstelt registratie indicatie gezag als uitvoering van de meerderjarigheidsverklaring, terwijl er geen gezag is vastgelegd in het gezagsregister

      Voorbeelden:
        | toegewezen gezag | resultaat                                                     |
        | 'Gerda'          | eenhoofdig ouderlijk gezag met ouder 'Gerda'                  |
        | beide ouders     | gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart' |

  Regel: de minderjarie heeft twee ouders en één van beide ouders was bij de geboorte zelf nog minderjarig en is nu meerderjarig geworden

    Voorbeeld: De minderjarige heeft één ouder, de geboortemoeder, die ten tijde van de geboorte minderjarig was, maar is inmiddels meerderjarig geworden en de andere ouder, de erkenner, was bij geboorte al meerderjarig
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 21 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'
      # hier was er geen gerechtelijke uitspraak dus geen gezag tijdens de minderjarigheid en daardoor geen gezag tijdens de erkenning. ontstaat dan alsnog gezamenlijk gezag bij het meerderjarig worden van de moeder?

    Voorbeeld: De minderjarige heeft één ouder, de geboortemoeder, die ten tijde van de geboorte minderjarig was, maar is inmiddels meerderjarig geworden en de andere ouder, de erkenner, was bij geboorte al meerderjarig en het gezag is vóór het meerderjarig worden van de ouder in een gerechtelijke uitspraak toegewezen aan de erkenner
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 22 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Aart'

    Voorbeeld: De minderjarige heeft één ouder, de geboortemoeder, die ten tijde van de geboorte minderjarig was, maar is inmiddels meerderjarig geworden en de andere ouder heeft het kind geadopteerd en was op dat moment meerderjarig
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 22 jaar geleden geboren man 'Aart'
      En de 3 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      * is 2 jaar geleden geadopteerd door Nederlandse adoptieouder 'Aart' met een Nederlandse adoptieakte
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'
      # in dit voorbeeld is de minderjarige geadopteerd, maar blijft de (dan minderjarige) moeder als moeder geregistreerd. verkrijgt zij dan bij meerderjarig worden van rechtswege gezamenlijk gezag met de adoptieouder?

    Voorbeeld: De minderjarige heeft één ouder, de geboortemoeder, die ten tijde van de geboorte minderjarig was, maar is inmiddels meerderjarig geworden en de andere ouder was bij geboorte al meerderjarig en het gezag is vóór het meerderjarig worden van de ouder in een gerechtelijke uitspraak toegewezen aan een voogd
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 22 jaar geleden geboren man 'Aart'
      En de 3 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' voogdij

    Voorbeeld: De minderjarige heeft één ouder, de geboortemoeder, die ten tijde van de geboorte minderjarig was, maar is inmiddels meerderjarig geworden en het gezag is vóór het meerderjarig worden van de ouder in een gerechtelijke uitspraak toegewezen aan een voogd en de andere ouder was bij geboorte al meerderjarig en heeft erkend na het toewijzen van de voogdij en na het meerderjarig worden van de moeder is de voogdij beëindigd
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 22 jaar geleden geboren man 'Aart'
      En de 3 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      En 'Bert' is 1 jaar geleden erkend door 'Aart'
      En vorige maand is in een gerechtelijke uitspraak de voogdij beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'
      # door toewijzing van voogdij had de moeder ten tijde van de erkenning geen gezag, er was een voogd aangesteld. krijgt de erkenner dan bij beëindigen van de voogdij van rechtswege gezamenlijk gezag?

    Voorbeeld: De minderjarige heeft één ouder, de geboortemoeder, die ten tijde van de geboorte minderjarig was, maar is inmiddels meerderjarig geworden en de andere ouder was bij geboorte al meerderjarig en heeft ongeboren vrucht erkend (erkend voor vaststelling van voogdij) en het gezag is vóór het meerderjarig worden van de ouder in een gerechtelijke uitspraak toegewezen aan een voogd en na het meerderjarig worden van de moeder is de voogdij beëindigd
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 22 jaar geleden geboren man 'Aart'
      En de 3 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      En vorige maand is in een gerechtelijke uitspraak de voogdij beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'
      # ten tijde van de erkenning was de moeder minderjarig en had geen gezag, er was toen nog geen voogd aangesteld. krijgt de erkenner dan bij beëindigen van de voogdij van rechtswege gezamenlijk gezag?

    Voorbeeld: De minderjarige heeft één minderjarige ouder, de geboortemoeder, in een gerechtelijke uitspraak is de moeder meerderjarig verklaard en heeft het gezag verkregen en daarna is de minderjarige erkend door de (meerderjarige) vader
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 20 jaar geleden geboren man 'Aart'
      En de 3 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      En 'Bert' is 1 jaar geleden erkend door 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'
      # aanname is dat erkenning na een gerechtelijke uitspraak geen 'recente gebeurtenis' is die de gerechtelijke uitspraak zou doen vervallen en zou leiden tot gezag van rechtswege?

    Voorbeeld: De minderjarige heeft één ouder, de geboortemoeder, die bij geboorte al meerderjarig was en een andere ouder, de erkenner, die ten tijde van de geboorte minderjarig was en als minderjarige het kind heeft erkend, maar is inmiddels meerderjarig geworden
      Gegeven de 21 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 'Bert' is erkend door 'Aart' bij geboorteaangifte
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: De minderjarige heeft één ouder, de geboortemoeder, die bij geboorte al meerderjarig was en een andere ouder, de erkenner, die ten tijde van de geboorte minderjarig was, maar inmiddels meerderjarig geworden is en als meerderjarige het kind heeft erkend
      Gegeven de 21 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 'Bert' is 1 jaar geleden erkend door 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Regel: de minderjarige heeft twee ouders die bij geboorte minderjarig waren en de ouders zijn meerderjarig geworden

    Voorbeeld: De minderjarige heeft twee ouders die bij geboorte minderjarig waren en de vader is inmiddels meerderjarig geworden

    Voorbeeld: De minderjarige heeft twee ouders die bij geboorte minderjarig waren en de moeder is inmiddels meerderjarig geworden, er was een voogd aangewezen, maar de voogdij is na het meerderjarig worden van de moeder beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: De minderjarige heeft twee ouders die bij geboorte minderjarig waren en de vader is inmiddels meerderjarig geworden, er was een voogd aangewezen, maar de voogdij is na het meerderjarig worden van de vader beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Aart'
      # vader heeft als minderjarige erkend en is nu meerderjarig geworden. moeder is nog minderjarig en voogdij is beëindigd. Krijgt de erkenner dan van rechtswege het gezag?

    Voorbeeld: De minderjarige heeft twee ouders die bij geboorte minderjarig waren en de vader is inmiddels meerderjarig geworden en heeft na meerderjarig worden erkend, er was een voogd aangewezen, maar de voogdij is na het meerderjarig worden van de erkenner beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Aart'
      # vader was minderjarig bij geboorte, maar heeft als meerderjarige erkend. moeder is nog minderjarig en voogdij is beëindigd. Krijgt de erkenner dan van rechtswege het gezag?

    Voorbeeld: De minderjarige heeft twee ouders die bij geboorte minderjarig waren en inmiddels meerderjarig zijn, er was een voogd aangewezen, maar de voogdij is na het meerderjarig worden van de moeder beëindigd, toen de vader nog niet meerderjarig was
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'
      # hier is de moeder eerst meerderjarig geworden. na het beëindigen van de voogdij had zij alleen het gezag. krijgt de vader/erkenner bij meerderjarig worden van rechtswege gezamenlijk gezag?

    Voorbeeld: De minderjarige heeft twee ouders die bij geboorte minderjarig waren en inmiddels meerderjarig zijn, er was een voogd aangewezen, maar de voogdij is na het meerderjarig worden van beide ouders beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'
      # de vader werd eerder meerderjarig dan de moeder. op het moment van opheffen van de voogdij waren beide ouders meerderjarig.

  Regel: de minderjarige heeft zelf een minderjarig kind

    Voorbeeld: het gezag wordt gevraagd van een minderjarige die zelf een minderjarig kind heeft en in een gerechtelijke uitspraak is de ouder meerderjarig verklaard en heeft het gezag gekregen
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'
      # kunnen we uit het toewijzen van gezag aan de moeder concluderen we ze meerderjarig verklaard is en haar ouders dus geen gezag over haar hebben?
