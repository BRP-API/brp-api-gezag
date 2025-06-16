# language: nl
Functionaliteit: Minderjarige ouder
  Gezag bepalen voor een minderjarige wanneer één of beide ouders minderjarig zijn.

  Erkenning wanneer de moeder of beide ouders minderjarig zijn (bij geboorte van het kind):
    Er wordt mogelijk geen verklaring over het gezag vastgelegd in deze situatie, omdat dit op moment van erkennen geen rechtsgevolg heeft.
    Bij meerderjarig worden van moeder/de erkenner ontstaat dan mogelijk ten onrechte van rechtswege gezamenlijk gezag van moeder en erkenner.
    # hoe ziet zo'n verklaring vastgelegd in het gezagsregister eruit in de BRP? Wordt dit gezet in indicatie gezag met de gezaghebbende ouders?
    # zijn de regels voor gezag met minderjarigheid van een ouder in combinatie erkenning veranderd op enig moment (afgezien van 1-1-2023 voor gezag erkenner)?

  Regel: Een meerderjarigheidsverklaring van een minderjarige moeder kan worden vastgelegd in de BRP als gerechtelijke uitspraak over het gezag
    # veronderstelt registratie indicatie gezag als uitvoering van de meerderjarigheidsverklaring, terwijl er geen gezag is vastgelegd in het gezagsregister
    # indicatie gezag als uitvoering van een meerderjarigheidsverklaring vervalt van rechtswege niet na meerderjarig worden of na erkenning door een tweede ouder

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

    Voorbeeld: De minderjarige heeft een moeder die bij geboorte minderjarig was en meerderjarig verklaard is en na het meerderjarig worden van de ouders is het kind erkend
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de 3 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      En 'Bert' is 1 jaar geleden erkend door 'Aart'
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
    # Dit kan bijvoorbeeld wanneer de minderjarige moeder bijna 18 is. Dan kan worden besloten te wachten op het meerderjarig worden van de moeder.
    # Dit kan ook een tijdelijke situatie zijn in afwachting van de (registratie van) de gerechtelijke uitspraak.

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

  Regel: Als de moeder minderjarig is en er is een voogd aangewezen, dan is er gezag voor een onbekende voogd.

    Voorbeeld: De minderjarige heeft twee ouders die beide minderjarig zijn en in een gerechtelijke uitspraak is een voogd aangewezen
      Gegeven de 16 jaar geleden geboren vrouw 'Gerda'
      En de 17 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' voogdij

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

  Regel: Als de moeder minderjarig was bij geboorte van haar kind en zowel de moeder als de erkenner zijn nu meerderjarig en minderjarige is erkend na 1-1-2023, dan is er gezamenlijk ouderlijk gezag

    Voorbeeld: Bij de geboorte van minderjarige waren beide ouders minderjarig en beide ouders zijn nu meerderjarig geworden en minderjarige is als ongeboren vrucht erkend
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 18 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Bij de geboorte van minderjarige was de moeder nog meerderjarig en de erkenner was meerderjarig, er is geen voogd aangewezen en moeder is meerderjarig geworden
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 21 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Bij de geboorte van minderjarige waren beide ouders minderjarig en beide ouders zijn nu meerderjarig geworden en minderjarige is geboren voor 1-1-2023 en erkend na 1-1-2023
      Gegeven de op 14-10-2006 geboren vrouw 'Gerda'
      En de op 16-05-2006 geboren man 'Aart'
      En de op 17-12-2022 geboren persoon 'Bert' met één ouder 'Gerda'
      En 'Bert' is erkend door 'Aart' op 3-11-2024
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Regel: Als de moeder minderjarig was bij geboorte van haar kind en zowel de moeder als de erkenner zijn nu meerderjarig en minderjarige is erkend voor 1-1-2023, dan is er eenhoofdig ouderlijk gezag

    Voorbeeld: Bij de geboorte van minderjarige waren beide ouders minderjarig en minderjarige is erkend voor 1-1-2023 en beide ouders zijn na 1-1-2023 meerderjarig geworden
      Gegeven de op 14-10-2006 geboren vrouw 'Gerda'
      En de op 16-05-2006 geboren man 'Aart'
      En de op 17-12-2022 geboren persoon 'Bert' met één ouder 'Gerda'
      En 'Bert' is erkend door 'Aart' bij geboorteaangifte
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

  Regel: Als de erkenner minderjarig was bij de geboorte van het kind en minderjarige is erkend na 1-1-2023 en de erkenner is inmiddels meerderjarig, dan is er gezamenlijk ouderlijk gezag

    Voorbeeld: De erkenner was minderjarig bij de geboorte van het kind, maar is inmiddels meerderjarig geworden
      Gegeven de 21 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 'Bert' is erkend door 'Aart' bij geboorteaangifte
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: De erkenner was minderjarig bij de geboorte van het kind, maar is inmiddels meerderjarig geworden en heeft als meerderjarige het kind erkend
      Gegeven de 22 jaar geleden geboren vrouw 'Gerda'
      En de 20 jaar geleden geboren man 'Aart'
      En de 3 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 'Bert' is 1 jaar geleden erkend door 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Regel: Een voogd behoudt het gezag na het meerderjarig worden van de moeder tot een rechter de voogdij intrekt of wijzigt

    Voorbeeld: Bij de geboorte van minderjarige was de moeder minderjarig en is een voogd aangewezen en de moeder is nu meerderjarig geworden
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 2 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' voogdij

    Voorbeeld: Bij de geboorte van minderjarige was de moeder minderjarig en is het gezag toegewezen aan de vader en de moeder is nu meerderjarig geworden
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 21 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Aart'

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

  Regel: Als de moeder minderjarig was bij geboorte van haar kind en het kind is destijds geadopteerd en moeder is inmiddels meerderjarig, dan is er gezamenlijk gezag voor de moeder en de adoptieouder

    Voorbeeld: Bij de geboorte van minderjarige was de moeder minderjarig en is de minderjarige geadopteerd en de moeder is nu meerderjarig geworden
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 30 jaar geleden geboren vrouw 'Ariana'
      En de 6 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      * is 6 jaar geleden geadopteerd door Nederlandse adoptieouder 'Ariana' met een Nederlandse adoptieakte
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Ariana'

  Regel: Als het gezag wordt gevraagd van een minderjarige die in een gerechtelijke uitspraak meerderjarig is verklaard, dan 

    Voorbeeld: Het gezag wordt gevraagd van een minderjarige met een kind
      Gegeven de 17 jaar geleden geboren 'Zoe' met twee gehuwde ouders 'Gerda' en 'Aart'
      En de 1 jaar geleden geboren 'Bert' met één ouder 'Zoe'
      Als 'gezag' wordt gevraagd van 'Zoe'
      Dan is het gezag over 'Zoe' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Ariana'

    Voorbeeld: Het gezag wordt gevraagd van een minderjarige met een kind en er is een voogd aangewezen voor het kind van de minderjarige
      Gegeven de 17 jaar geleden geboren 'Zoe' met twee gehuwde ouders 'Gerda' en 'Aart'
      En de 1 jaar geleden geboren 'Bert' met één ouder 'Zoe'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      Als 'gezag' wordt gevraagd van 'Zoe'
      Dan is het gezag over 'Zoe' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Ariana'

    Voorbeeld: Het gezag wordt gevraagd van een minderjarige die zelf een minderjarig kind heeft en in een gerechtelijke uitspraak zij meerderjarig verklaard en heeft het gezag gekregen
      Gegeven de 17 jaar geleden geboren 'Zoe' met twee gehuwde ouders 'Gerda' en 'Aart'
      En de 1 jaar geleden geboren 'Bert' met één ouder 'Zoe'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Zoe'
      Als 'gezag' wordt gevraagd van 'Zoe'
      Dan heeft 'Zoe' de volgende gezagsrelaties
      * het gezag over 'Bert' is eenhoofdig ouderlijk gezag met ouder 'Zoe'
