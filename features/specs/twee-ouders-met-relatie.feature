# language: nl
Functionaliteit: Twee ouders met relatie
  Gezag bepalen voor een minderjarige met twee juridische ouders die na de geboorte van het kind gehuwd zijn of waren of partnerschap hebben of hadden

  Voor de situatie dat de ouders na de geboorte van minderjarige niet met elkaar gehuwd zijn (geweest) 
  en geen partnerschap hebben (gehad), wordt het gezag bepaald volgens de [Twee ouders geen relatie functionaliteit](twee-ouders-geen-relatie.feature).

  Achtergrond:
    Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
    * is meerderjarig
    En de persoon 'Aart' met burgerservicenummer '000000024'
    * is meerderjarig
    En de persoon 'Bert' met burgerservicenummer '000000036'
    * is ingeschreven in de BRP
    * heeft 'Aart' en 'Gerda' als ouders

  Regel: Als de ouders na de geboorte van minderjarige een periode met elkaar gehuwd zijn (geweest) of partnerschap hebben (gehad), dan hebben de ouders gezamenlijk ouderlijk gezag

    Voorbeeld: Beide ouders zijn gehuwd voor geboorte van het kind en zijn dat nog steeds
      Gegeven 'Bert' is 7 jaar geleden geboren
      En 'Gerda' en 'Aart' zijn 8 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Beide ouders zijn gehuwd na geboorte van het kind en zijn dat nog steeds
      Gegeven 'Bert' is 7 jaar geleden geboren
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Beide ouders waren gehuwd voor geboorte van het kind en zijn na geboorte gescheiden
      Gegeven 'Bert' is 7 jaar geleden geboren
      En 'Gerda' en 'Aart' zijn 8 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 2 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Beide ouders waren gehuwd en zijn gescheiden voor geboorte van het kind en zijn na geboorte opnieuw gehuwd
      Gegeven 'Bert' is 5 jaar geleden geboren
      En 'Gerda' en 'Aart' zijn 8 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 6 jaar geleden gescheiden
      En 'Gerda' en 'Aart' zijn 2 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Beide ouders waren gehuwd na geboorte van het kind en zijn na geboorte gescheiden
      Gegeven 'Bert' is 7 jaar geleden geboren
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      En 'Gerda' en 'Aart' zijn 2 jaar geleden gescheiden
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'
 
  Regel: Erkenner krijgt van rechtswege gezag wanneer op het moment van huwelijkssluiting dan wel aangaan partnerschap met elkaar de moeder het gezag had en de erkenner bevoegd was tot gezag

    Voorbeeld: Op het moment van huwen stond de vader onder curatele
      Gegeven 'Bert' is 15 jaar geleden geboren
      En 6 jaar geleden is 'Aart' onder curatele gesteld
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      En 4 jaar geleden is de curatele van 'Aart' beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Sinds voor het sluiten van het huwelijk staat de moeder onder curatele
      Gegeven 'Bert' is 15 jaar geleden geboren
      En 2 maanden geleden is 'Gerda' onder curatele gesteld
      En 'Gerda' en 'Aart' zijn 1 maand geleden gehuwd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Aart'

    Voorbeeld: Op het moment van huwen stond de moeder onder curatele
      Gegeven 'Bert' is 15 jaar geleden geboren
      En 6 jaar geleden is 'Gerda' onder curatele gesteld
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      En 4 jaar geleden is de curatele van 'Gerda' beëindigd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Sinds na het sluiten van het huwelijk staat de moeder onder curatele
      Gegeven 'Bert' is 15 jaar geleden geboren
      En 'Gerda' en 'Aart' zijn 5 jaar geleden gehuwd
      En 1 maanden geleden is 'Gerda' onder curatele gesteld
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Aart' eenhoofdig ouderlijk gezag met ouder 'Aart'
