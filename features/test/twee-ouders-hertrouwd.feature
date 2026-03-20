# language: nl
Functionaliteit: Twee ouders met relatie en hertrouwen met verschillende stapelnummers
  Relaties (huwelijk partnerschap) kan worden opgevoerd waarbij de stapels niet noodzakelijk in
  chronologische volgorde worden opgenomen.
  Deze feature test dat de implementatie niet aanneemt dat stapel 0 de eerste relatie is, stapel 1 de tweede, enz.


  Voorbeeld: Beide ouders waren gehuwd voor geboorte van het kind en zijn na geboorte gescheiden - opgevoerd in chronologische volgorde
    Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
    * is meerderjarig
    * is een vrouw
    En de persoon 'Aart' met burgerservicenummer '000000024'
    * is meerderjarig
    * is een man
    En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
    En 'Gerda' en 'Aart' zijn 15 jaar geleden gescheiden
    En 'Gerda' en 'Aart' zijn 14 jaar geleden gehuwd
    En de persoon 'Bert' met burgerservicenummer '000000036'
    * is ingeschreven in de BRP
    * 'Bert' is 13 jaar geleden geboren
    * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
    En 'Gerda' en 'Aart' zijn 6 jaar geleden gescheiden
    Als 'gezag' wordt gevraagd van 'Bert'
    Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Voorbeeld: Beide ouders waren gehuwd voor geboorte van het kind en zijn na geboorte gescheiden - opgevoerd in omgekeerde volgorde
    Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
    * is meerderjarig
    * is een vrouw
    En de persoon 'Aart' met burgerservicenummer '000000024'
    * is meerderjarig
    * is een man
    En 'Gerda' en 'Aart' zijn 14 jaar geleden gehuwd
    En 'Gerda' en 'Aart' zijn 6 jaar geleden gescheiden
    En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
    En 'Gerda' en 'Aart' zijn 15 jaar geleden gescheiden
    En de persoon 'Bert' met burgerservicenummer '000000036'
    * is ingeschreven in de BRP
    * 'Bert' is 13 jaar geleden geboren
    * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
    Als 'gezag' wordt gevraagd van 'Bert'
    Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Voorbeeld: Beide ouders waren gehuwd voor geboorte van het kind en moeder is met andere man gehuwd voor geboorte van het kind
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
    En 'Gerda' en 'Aart' zijn 15 jaar geleden gescheiden
    En 'Gerda' en 'Pino' zijn 14 jaar geleden gehuwd
    En de persoon 'Bert' met burgerservicenummer '000000048'
    * is ingeschreven in de BRP
    * 'Bert' is 13 jaar geleden geboren
    * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
    #En 'Gerda' en 'Pino' zijn 13 jaar geleden gescheiden
    Als 'gezag' wordt gevraagd van 'Bert'
    Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

  Voorbeeld: Beide ouders waren gehuwd voor geboorte van het kind en moeder is met andere man gehuwd voor geboorte van het kind en na geboorte gescheiden en hertrouwd met vader
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
    En 'Gerda' en 'Aart' zijn 15 jaar geleden gescheiden
    En 'Gerda' en 'Pino' zijn 14 jaar geleden gehuwd
    En de persoon 'Bert' met burgerservicenummer '000000048'
    * is ingeschreven in de BRP
    * 'Bert' is 13 jaar geleden geboren
    * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
    En 'Gerda' en 'Pino' zijn 10 jaar geleden gescheiden
    En 'Gerda' en 'Aart' zijn 8 jaar geleden gehuwd
    En 'Gerda' en 'Aart' zijn 5 jaar geleden gescheiden
    Als 'gezag' wordt gevraagd van 'Bert'
    Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Voorbeeld: Beide ouders waren gehuwd voor geboorte van het kind en moeder is met andere man gehuwd voor geboorte van het kind en na geboorte gescheiden en hertrouwd met vader - opgevoerd in omgekeerde volgorde
    Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
    * is meerderjarig
    * is een vrouw
    En de persoon 'Aart' met burgerservicenummer '000000024'
    * is meerderjarig
    * is een man
    En de persoon 'Pino' met burgerservicenummer '000000036'
    * is meerderjarig
    * is een man
    En 'Gerda' en 'Aart' zijn 8 jaar geleden gehuwd
    En 'Gerda' en 'Aart' zijn 5 jaar geleden gescheiden
    En 'Gerda' en 'Pino' zijn 14 jaar geleden gehuwd
    En 'Gerda' en 'Pino' zijn 10 jaar geleden gescheiden
    En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
    En 'Gerda' en 'Aart' zijn 15 jaar geleden gescheiden
    En de persoon 'Bert' met burgerservicenummer '000000048'
    * is ingeschreven in de BRP
    * 'Bert' is 13 jaar geleden geboren
    * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
    Als 'gezag' wordt gevraagd van 'Bert'
    Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Voorbeeld: Beide ouders waren gehuwd voor geboorte van het kind en moeder is met andere man gehuwd voor geboorte van het kind en na geboorte gescheiden en hertrouwd met vader - opgevoerd in niet-chronologische volgorde
    Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
    * is meerderjarig
    * is een vrouw
    En de persoon 'Aart' met burgerservicenummer '000000024'
    * is meerderjarig
    * is een man
    En de persoon 'Pino' met burgerservicenummer '000000036'
    * is meerderjarig
    * is een man
    En 'Gerda' en 'Pino' zijn 14 jaar geleden gehuwd
    En 'Gerda' en 'Pino' zijn 10 jaar geleden gescheiden
    En 'Gerda' en 'Aart' zijn 8 jaar geleden gehuwd
    En 'Gerda' en 'Aart' zijn 5 jaar geleden gescheiden
    En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
    En 'Gerda' en 'Aart' zijn 15 jaar geleden gescheiden
    En de persoon 'Bert' met burgerservicenummer '000000048'
    * is ingeschreven in de BRP
    * 'Bert' is 13 jaar geleden geboren
    * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
    Als 'gezag' wordt gevraagd van 'Bert'
    Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Voorbeeld: Beide ouders waren gehuwd voor geboorte van het kind en moeder is met andere man gehuwd voor geboorte van het kind en na geboorte gescheiden en hertrouwd met vader - opgevoerd in andere niet-chronologische volgorde
    Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
    * is meerderjarig
    * is een vrouw
    En de persoon 'Aart' met burgerservicenummer '000000024'
    * is meerderjarig
    * is een man
    En de persoon 'Pino' met burgerservicenummer '000000036'
    * is meerderjarig
    * is een man
    En 'Gerda' en 'Aart' zijn 8 jaar geleden gehuwd
    En 'Gerda' en 'Aart' zijn 5 jaar geleden gescheiden
    En 'Gerda' en 'Aart' zijn 20 jaar geleden gehuwd
    En 'Gerda' en 'Aart' zijn 15 jaar geleden gescheiden
    En 'Gerda' en 'Pino' zijn 14 jaar geleden gehuwd
    En 'Gerda' en 'Pino' zijn 10 jaar geleden gescheiden
    En de persoon 'Bert' met burgerservicenummer '000000048'
    * is ingeschreven in de BRP
    * 'Bert' is 13 jaar geleden geboren
    * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
    Als 'gezag' wordt gevraagd van 'Bert'
    Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'
