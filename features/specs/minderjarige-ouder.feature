# language: nl
Functionaliteit: Minderjarige ouder
  Gezag bepalen voor een minderjarige wanneer één of beide ouders minderjarig zijn.
  
  Regel: Als de moeder minderjarig is en er is geen voogd, dan is er tijdelijk geen gezag
    # Dit kan bijvoorbeeld wanneer de minderjarige moeder bijna 18 is. Dan kan worden besloten te wachten op het meerderjarig worden van de moeder.
    # Dit kan ook een tijdelijke situatie zijn in afwachting van de (registratie van) de gerechtelijke uitspraak.

    Voorbeeld: De minderjarige heeft één ouder die minderjarig is en er is (nog) geen voogd toegewezen
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de gisteren geboren persoon 'Bert' met één ouder 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'

  Regel: Als de moeder minderjarig is en er is een voogd aangewezen, dan is er gezag voor een onbekende voogd

    Voorbeeld: De minderjarige heeft een ouder die minderjarig is en in een gerechtelijke uitspraak is een voogd aangewezen
      Gegeven de 16 jaar geleden geboren vrouw 'Gerda'
      En de 2 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' voogdij

  Regel: Gezag van een erkenner kan alleen van rechtswege ontstaan uit gezamenlijk ouderlijk gezag
    Een erkenner die meerderjarig is (geworden) krijgt alleen gezag vanaf het moment dat de moeder meerderjarig is geworden of meerderjarig is verklaard.

    Voorbeeld: De minderjarige heeft een minderjarige moeder (niet bevoegd) en daarom heeft de meerderjarige erkenner (nog) geen gezag
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de gisteren geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'
      # volgens het huidige stroomschema gezag zou de vader eenhoofdig ouderlijk gezag krijgen

    Voorbeeld: De moeder was minderjarig bij geboorte en is nu meerderjarig geworden, waardoor gezamenlijk ouderlijk gezag voor moeder en erkenner is ontstaan
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 20 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Regel: Een verklaring van eenhoofdig gezag door een minderjarige moeder en de erkenner kan worden vastgelegd in de BRP als gerechtelijke uitspraak die geldig wordt op de dag dat de moeder meerderjarig wordt
    zodat gezamenlijk gezag met de erkenner kan worden voorkomen
    De gerechtelijke uitspraak heeft dan een datum ingang geldigheid in de toekomst en moet nu dus nog niet worden toegepast.
    # werkt dit (al) zo in het gezagsregister en in de registratie in de BRP?

    Voorbeeld: De moeder en erkenner hebben verklaard dat alleen de moeder het gezag moet krijgen
      Gegeven de 16 jaar geleden geboren vrouw 'Gerda'
      En de 17 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En met ingang geldigheid over 2 jaar is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'
