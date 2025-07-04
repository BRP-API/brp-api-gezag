# language: nl
Functionaliteit: Gezag bepalen bij een meerderjarig verklaarde ouder jonger dan 18 jaar
  Een meerderjarigheidsverklaring kan nog niet worden geregistreerd in de BRP.

  Er zijn twee mogelijkheden:
  1. Er is niks geregistreerd over de meerderjarigheidsverklaring. Het gezag wordt bepaald alsof de ouder minderjarig is. Er is dan tijdelijk geen gezag.
  2. De meerderjarigheidsverklaring wordt geregistreerd bij het kind als gezag voor de moeder.
  3. De meerderjarigheidsverklaring van de moeder in combinatie met een verklaring voor gezag bij de erkenning wordt bij het kind geregistreerd als gezag voor beide ouders.

  Ad 1. Niet registreren van de meerderjarigheidsverklaring
    Dit heeft de volgende gevolgen:
    - de meerderjarig verklaarde ouder krijgt geen gezag
    - de gezagsdrager(s) van de meerderjarig verklaarde ouder behouden het gezag over de meerderjarig verklaarde

  Ad 2. De meerderjarigheidsverklaring registreren als gerechtelijke uitspraak gezag
    Dit heeft de volgende gevolgen:
    - De meerderjarig verklaarde krijgt het gezag over het kind
    - De registratie van een meerderjarigheidsverklaring als gerechtelijke uitspraak gezag blokkeert dat gezag voor de erkenner van rechtswege kan ontstaan als hij en de moeder meerderjarig zijn.
      Dit vereist dat de registratie als gerechtelijke uitspraak gezag door de gemeente moet worden verwijderd op de dag dat de moeder 18 jaar oud wordt. 
    - De gezagsdrager(s) van de meerderjarig verklaarde verliezen het gezag over de meerderjarig verklaarde
  Ad 3. De meerderjarigheidsverklaring in combinatie met verklaring voor gezag registreren als gerechtelijke uitspraak gezag
    Dit heeft de volgende gevolgen:
    - De meerderjarig verklaarde krijgt samen met de erkenner het gezag over het kind
    - De gezagsdrager(s) van de meerderjarig verklaarde verliezen het gezag over de meerderjarig verklaarde
      # Aan de Bestands Controle Module (BCM) moet een controle worden toegevoegd, zodat de gemeente erop geattendeerd wordt wanneer de registratie gerechtelijke uitspraak n.a.v. een meerderjarigheidsverklaring moet worden verwijderd.
      # Kan de erkenner ook meerderjarig worden verklaard?

  Regel: Als niet is geregistreerd in BRP dat de moeder meerderjarig is verklaard, dan is er tijdelijk geen gezag

    Voorbeeld: De minderjarige heeft één ouder die meerderjarig is verklaard
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de gisteren geboren persoon 'Bert' met één ouder 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'

  Regel: Als de meerderjarigheidsverklaring van de moeder is geregistreerd in de BRP als gerechtelijke uitspraak, dan is er eenhoofdig ouderlijk gezag

    Voorbeeld: De moeder krijgt gezag als de meerderjarigheidsverklaring is vastgelegd als gerechtelijke uitspraak
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 1 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      En 1 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'
      # Vraag: kan het ook voorkomen dat er wél echt een gerechtelijke uitspraak is over gezag die niet uitsluitend een meerderjarigheidsverklaring is?

    Voorbeeld: Er ontstaat geen gezamenlijk gezag als de meerderjarigheidsverklaring van de moeder is vastgelegd als gerechtelijke uitspraak en de erkenner is meerderjarig
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 1 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: Er ontstaat geen gezamenlijk gezag als de meerderjarigheidsverklaring die is geregistreerd als gerechtelijke uitspraak niet tijdig is weggehaald
      Gegeven de 18 jaar geleden geboren vrouw 'Gerda'
      En de 18 jaar geleden geboren man 'Aart'
      En de 2 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 2 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: Er ontstaat gezamenlijk gezag als de meerderjarigheidsverklaring die is vastgelegd als gerechtelijke uitspraak is verwijderd nu de moeder en erkenner beide meerderjarig zijn
      Gegeven de 19 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de 3 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 3 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan 'Gerda'
      En 1 jaar geleden is de registratie van de meerderjarigheidsverklaring als toewijzing van gezag beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Regel: Als de meerderjarigheidsverklaring van de moeder in combinatie met verklaring gezag voor erkenner is geregistreerd in de BRP als gerechtelijke uitspraak, dan is er gezamenlijk ouderlijk gezag

    Voorbeeld: Er ontstaat gezamenlijk gezag als de meerderjarigheidsverklaring van de moeder in combinatie met een verklaring gezag voor erkenner is geregistreerd als gerechtelijke uitspraak
      Gegeven de 17 jaar geleden geboren vrouw 'Gerda'
      En de 19 jaar geleden geboren man 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met twee ongehuwde ouders 'Gerda' en 'Aart'
      En 1 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan beide ouders
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Regel: Als een meerderjarigheidsverklaring is vastgelegd als gerechtelijke uitspraak, dan hebben de ouders geen gezag over hun meerderjarig verklaarde kind
    Als de minderjarige moeder zelf gezag heeft, dan hebben haar ouders geen gezag over de minderjarige moeder.

    Voorbeeld: Het gezag wordt gevraagd van een minderjarige ouder waarbij de meerderjarigheidsverklaring is geregistreerd als gerechtelijke uitspraak
      Gegeven de 17 jaar geleden geboren persoon 'Zoe' met twee gehuwde ouders 'Gerda' en 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met één ouder 'Zoe'
      En 1 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan 'Zoe'
      Als 'gezag' wordt gevraagd van 'Zoe'
      Dan heeft 'Zoe' de volgende gezagsrelaties
      * het gezag over 'Bert' is eenhoofdig ouderlijk gezag met ouder 'Zoe'

    Voorbeeld: Het gezag wordt gevraagd van een ouder van een van een minderjarige ouder waarbij de meerderjarigheidsverklaring is geregistreerd als gerechtelijke uitspraak
      Gegeven de 17 jaar geleden geboren persoon 'Zoe' met twee gehuwde ouders 'Gerda' en 'Aart'
      En de 1 jaar geleden geboren persoon 'Bert' met één ouder 'Zoe'
      En 1 jaar geleden is de meerderjarigheidsverklaring geregistreerd als een gerechtelijke uitspraak met het gezag toegewezen aan 'Zoe'
      Als 'gezag' wordt gevraagd van 'Gerda'
      Dan heeft 'Gerda' de volgende gezagsrelaties
      * heeft de persoon geen gezag
