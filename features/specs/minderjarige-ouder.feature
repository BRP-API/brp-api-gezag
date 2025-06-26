# language: nl
Functionaliteit: Minderjarige ouder
  Gezag bepalen voor een minderjarige wanneer één of beide ouders minderjarig zijn.

  Erkenning wanneer de moeder of beide ouders minderjarig zijn (bij geboorte van het kind):
    Er wordt mogelijk geen verklaring over het gezag vastgelegd in deze situatie, omdat dit op moment van erkennen geen rechtsgevolg heeft.
    Bij meerderjarig worden van moeder/de erkenner ontstaat dan mogelijk ten onrechte van rechtswege gezamenlijk gezag van moeder en erkenner.
    # hoe ziet zo'n verklaring vastgelegd in het gezagsregister eruit in de BRP? Wordt dit gezet in indicatie gezag met de gezaghebbende ouders?
    # zijn de regels voor gezag met minderjarigheid van een ouder in combinatie erkenning veranderd op enig moment (afgezien van 1-1-2023 voor gezag erkenner)?

  Regel: Als de moeder minderjarig is en er is geen voogd, dan is er tijdelijk geen gezag
    # Dit kan bijvoorbeeld wanneer de minderjarige moeder bijna 18 is. Dan kan worden besloten te wachten op het meerderjarig worden van de moeder.
    # Dit kan ook een tijdelijke situatie zijn in afwachting van de (registratie van) de gerechtelijke uitspraak.

    Voorbeeld: De minderjarige heeft één ouder die minderjarig is en er is (nog) geen voogd toegewezen
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de gisteren geboren persoon 'Bert' met één ouder 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'

  Regel: Als de moeder minderjarig is en er is een voogd aangewezen, dan is er gezag voor een onbekende voogd.

    Voorbeeld: De minderjarige heeft een ouder die minderjarig is en in een gerechtelijke uitspraak is een voogd aangewezen
      Gegeven de 16 jaar geleden geboren vrouw 'Gerda'
      En de 2 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan een voogd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' voogdij

  Regel: Als de moeder meerderjarig verklaard is, dan is er tijdelijk geen gezag
    # een meerderjarigheidsverklaring kan (nog) niet worden geregistreerd in de BRP

    Voorbeeld: De minderjarige heeft één ouder die meerderjarig is verklaard
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de gisteren geboren persoon 'Bert' met één ouder 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'

    Voorbeeld: Het gezag wordt gevraagd van een minderjarige met een kind
      Gegeven de 17 jaar geleden geboren 'Zoe' met twee gehuwde ouders 'Gerda' en 'Aart'
      En de 1 jaar geleden geboren 'Bert' met één ouder 'Zoe'
      Als 'gezag' wordt gevraagd van 'Zoe'
      Dan is het gezag over 'Zoe' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Ariana'


  Regel: Een meerderjarigheidsverklaring van een minderjarige moeder mag worden vastgelegd in de BRP als gerechtelijke uitspraak over het gezag, tot een meerderjarigheidsverklaring in de BRP kan worden vastgelegd
    Als een meerderjarigheidsverklaring van een moeder wordt geregistreerd als gerechtelijke uitspraak gezag voor de moeder bij het kind
    dan kan nooit het gezag voor erkenner van rechtswege ontstaan als moeder en erkenner meerderjarig zijn geworden.
    Dit pleit voor registratie meerderjarigheidsverklaring bij de moeder en niet toestaan van bovenstaande werkwijze.
    Tot het mogelijk is om een meerderjarigheidsverklaring in de BRP te registreren kan een gemeente invullen dat gezag aan de moeder is toegewezen indicatie gezag bij het kind
    en deze door de gemeente wordt verwijderd op de dag dat de moeder 18 jaar oud wordt.
    
    # Dit moet dan ook als controle worden toegevoegd aan de Bestands Controle Module (BCM), zodat de gemeente hierop geattendeerd wordt.

    Voorbeeld: De moeder is meerderjarig verklaard en dit is vastgelegd als gerechtelijke uitspraak
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 1 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 1 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'
      # Vraag: kan het ook voorkomen dat er wél echt een gerechtelijke uitspraak is over gezag die niet uitsluitend een meerderjarigheidsverklaring is?

    Voorbeeld: De minderjarige heeft twee ouders die beide minderjarig waren bij geboorte en in een gerechtelijke uitspraak is de moeder meerderjarig verklaard en beide ouders zijn inmiddels meerderjarig
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 18 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 2 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: De meerderjarigheidsverklaring vastgelegd als gerechtelijke uitspraak is verwijderd nu de moeder 18 jaar is geworden waardoor met erkenner gezamenlijk gezag is ontstaan
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de 3 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 3 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan 'Gerda'
      En 1 jaar geleden is de registratie van de meerderjarigheidsverklaring als toewijzing van gezag beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: De moeder is meerderjarig verklaard en dit is vastgelegd als gerechtelijke uitspraak en de erkenner is meerderjarig
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 1 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan beide ouders
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

      # zijn er nog andere situaties? meerderjarigheidsverklaring van erkenner? ...

    Voorbeeld: Het gezag wordt gevraagd van een minderjarige die zelf een minderjarig kind heeft en in een gerechtelijke uitspraak zij meerderjarig verklaard en heeft het gezag gekregen
      Gegeven de 17 jaar geleden geboren 'Zoe' met twee gehuwde ouders 'Gerda' en 'Aart'
      En de 1 jaar geleden geboren 'Bert' met één ouder 'Zoe'
      En 1 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Zoe'
      Als 'gezag' wordt gevraagd van 'Zoe'
      Dan heeft 'Zoe' de volgende gezagsrelaties
      * het gezag over 'Bert' is eenhoofdig ouderlijk gezag met ouder 'Zoe'

  Regel: Gezag van een erkenner kan alleen van rechtswege ontstaan uit gezamenlijk ouderlijk gezag
    Een erkenner die meerderjarig is (geworden) krijgt alleen gezag vanaf het moment dat de moeder ook meerderjarig is (verklaard).

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
