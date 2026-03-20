# language: nl
Functionaliteit: Twee ouders met relatie en hertrouwen met verschillende stapelnummers
  Relaties (huwelijk partnerschap) kan worden opgevoerd waarbij de stapels niet noodzakelijk in
  chronologische volgorde worden opgenomen.
  Deze feature test dat de implementatie niet aanneemt dat stapel 0 de eerste relatie is, stapel 1 de tweede, enz.

  Regel: Als de ouders met elkaar zijn hertrouwd of opnieuw partnerschap zijn aangegaan na gerechtelijke uitspraak tot gezag voor één van beide ouders, wordt het gezag van rechtswege bepaald

    Voorbeeld: Reparatiehuwelijk na gerechtelijke uitspraak
      Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Aart' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een man
      En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 12 jaar geleden gescheiden
      En de persoon 'Bert' met burgerservicenummer '000000036'
      * is ingeschreven in de BRP
      * 'Bert' is 16 jaar geleden geboren
      * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
      * 10 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Reparatiehuwelijk na gerechtelijke uitspraak en daarna weer gescheiden
      Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Aart' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een man
      En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 12 jaar geleden gescheiden
      En de persoon 'Bert' met burgerservicenummer '000000036'
      * is ingeschreven in de BRP
      * 'Bert' is 16 jaar geleden geboren
      * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
      * 10 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 2 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Reparatiehuwelijk na gerechtelijke uitspraak en relaties zijn in omgekeerde volgorde opgevoerd
      Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Aart' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een man
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 2 jaar geleden gescheiden
      En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 12 jaar geleden gescheiden
      En de persoon 'Bert' met burgerservicenummer '000000036'
      * is ingeschreven in de BRP
      * 'Bert' is 16 jaar geleden geboren
      * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
      * 10 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'moeder'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Reparatiehuwelijk na gerechtelijke uitspraak moeder had andere partner tussendoor
      Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Aart' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een man
      En de persoon 'Pino' met burgerservicenummer '000000036'
      * is meerderjarig
      * is een man
      En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 12 jaar geleden gescheiden
      En 'Gerda' en 'Pino' zijn 11 jaar geleden gehuwd
      En 'Gerda' en 'Pino' zijn 7 jaar geleden gescheiden
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 2 jaar geleden gescheiden
      En de persoon 'Bert' met burgerservicenummer '000000048'
      * is ingeschreven in de BRP
      * 'Bert' is 16 jaar geleden geboren
      * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
      * 10 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Reparatiehuwelijk na gerechtelijke uitspraak moeder had andere partner tussendoor - opgevoerd in omgekeerde volgorde
      Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Aart' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een man
      En de persoon 'Pino' met burgerservicenummer '000000036'
      * is meerderjarig
      * is een man
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 2 jaar geleden gescheiden
      En 'Gerda' en 'Pino' zijn 11 jaar geleden gehuwd
      En 'Gerda' en 'Pino' zijn 7 jaar geleden gescheiden
      En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 12 jaar geleden gescheiden
      En de persoon 'Bert' met burgerservicenummer '000000048'
      * is ingeschreven in de BRP
      * 'Bert' is 16 jaar geleden geboren
      * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
      * 10 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Reparatiehuwelijk na gerechtelijke uitspraak moeder had andere partner tussendoor - opgevoerd in niet-chronologische volgorde
      Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Aart' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een man
      En de persoon 'Pino' met burgerservicenummer '000000036'
      * is meerderjarig
      * is een man
      En 'Gerda' en 'Pino' zijn 11 jaar geleden gehuwd
      En 'Gerda' en 'Pino' zijn 7 jaar geleden gescheiden
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 2 jaar geleden gescheiden
      En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 12 jaar geleden gescheiden
      En de persoon 'Bert' met burgerservicenummer '000000048'
      * is ingeschreven in de BRP
      * 'Bert' is 16 jaar geleden geboren
      * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
      * 10 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Reparatiehuwelijk na gerechtelijke uitspraak moeder had andere partner tussendoor - opgevoerd in andere niet-chronologische volgorde
      Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Aart' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een man
      En de persoon 'Pino' met burgerservicenummer '000000036'
      * is meerderjarig
      * is een man
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 2 jaar geleden gescheiden
      En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 12 jaar geleden gescheiden
      En 'Gerda' en 'Pino' zijn 11 jaar geleden gehuwd
      En 'Gerda' en 'Pino' zijn 7 jaar geleden gescheiden
      En de persoon 'Bert' met burgerservicenummer '000000048'
      * is ingeschreven in de BRP
      * 'Bert' is 16 jaar geleden geboren
      * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
      * 10 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'
