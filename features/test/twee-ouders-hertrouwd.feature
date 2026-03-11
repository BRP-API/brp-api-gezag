# language: nl
Functionaliteit: Twee ouders met relatie

  Voorbeeld: Beide ouders waren gehuwd voor geboorte van het kind en zijn na geboorte gescheiden
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
    * 'Bert' is 9 jaar geleden geboren
    * heeft 'Gerda' en 'Aart' als ouders vanaf de geboortedatum
    Als 'gezag' wordt gevraagd van 'Bert'
    Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'
