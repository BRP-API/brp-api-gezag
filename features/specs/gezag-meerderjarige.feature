# language: nl
Functionaliteit: Gezag bepalen voor personen die gezag hebben over een of meerdere minderjarigen

  Regel: Voor een meerderjarige worden de gezagsrelaties geleverd van de minderjarige kinderen waar deze ouderlijk gezag over heeft

    Voorbeeld: Het gezag wordt gevraagd van een moeder met eenhoofdig ouderlijk gezag over haar kind
      Gegeven de op 20-11-2022 geboren persoon 'Bert' met twee ouders 'Gerda' en 'Aart' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      Als 'gezag' wordt gevraagd van 'Gerda'
      Dan heeft 'Gerda' de volgende gezagsrelaties
      * het gezag over 'Bert' is eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: Het gezag wordt gevraagd van een vader met gezamenlijk ouderlijk gezag over zijn kind
      Gegeven de minderjarige persoon 'Bert' met twee gehuwde ouders 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Aart'
      Dan heeft 'Aart' de volgende gezagsrelaties
      * het gezag over 'Bert' is gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: Het gezag wordt gevraagd van een moeder met gezag over twee kinderen
      Gegeven de op 20-11-2022 geboren persoon 'Bert' met twee ouders 'Gerda' en 'Aart' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      En de op 26-05-2024 geboren persoon 'Ernie' met twee ouders 'Gerda' en 'Aart' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      Als 'gezag' wordt gevraagd van 'Gerda'
      Dan heeft 'Gerda' de volgende gezagsrelaties
      * het gezag over 'Bert' is eenhoofdig ouderlijk gezag met ouder 'Gerda'
      * het gezag over 'Ernie' is gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: het gezag wordt gevraagd van een moeder die samen met haar partner gezamenlijk gezag heeft over haar kind
      Gegeven de minderjarige persoon 'Bert' met één ouder 'Gerda' die gehuwd is met 'Ariana'
      Als 'gezag' wordt gevraagd van 'Gerda'
      Dan heeft 'Gerda' de volgende gezagsrelaties
      * het gezag over 'Bert' is gezamenlijk gezag met ouder 'Gerda' en derde 'Ariana'

  Regel: Voor een meerderjarige worden de gezagsrelaties geleverd van de minderjarige kinderen waar deze gezamenlijk gezag of voogdij heeft

    Voorbeeld: het gezag wordt gevraagd van een meerderjarige die gehuwd die gezamenlijk gezag heeft over het kind van haar partner
      Gegeven de minderjarige persoon 'Bert' met één ouder 'Gerda' die gehuwd is met 'Ariana'
      Als 'gezag' wordt gevraagd van 'Ariana'
      Dan heeft 'Ariana' de volgende gezagsrelaties
      * het gezag over 'Bert' is gezamenlijk gezag met ouder 'Gerda' en derde 'Ariana'

  Regel: Voor een meerderjarige wordt geen gezag geleverd over kinderen waar de meerderjarige zelf geen gezag over heeft

    Voorbeeld: Het gezag wordt gevraagd van een vader en de moeder heeft eenhoofdig ouderlijk gezag
      Gegeven de op 20-11-2022 geboren persoon 'Bert' met twee ouders 'Gerda' en 'Aart' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      Als 'gezag' wordt gevraagd van 'Aart'
      Dan heeft 'Aart' geen gezag
    
    Voorbeeld: het gezag wordt gevraagd van een vader met gezag over een kind (erkend na 1-1-2023) en geen gezag over een ander kind (erkend voor 1-1-2023)
      Gegeven de op 20-11-2022 geboren persoon 'Bert' met twee ouders 'Gerda' en 'Aart' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      En de op 26-05-2024 geboren persoon 'Ernie' met twee ouders 'Gerda' en 'Aart' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      Als 'gezag' wordt gevraagd van 'Aart'
      Dan heeft 'Aart' de volgende gezagsrelaties
      * het gezag over 'Ernie' is gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: het gezag wordt gevraagd van een moeder en in een gerechtelijke uitspraak is het gezag toegewezen aan een voogdijinstelling
      Gegeven de minderjarige persoon 'Bert' met één ouder 'Gerda'
      En in een gerechtelijke uitspraak is een voogdijinstelling tot voogd benoemd
      Als 'gezag' wordt gevraagd van 'Gerda'
      Dan heeft 'Gerda' geen gezag

  Regel: Voor een meerderjarige wordt geen gezag geleverd over kinderen waarvoor het gezag niet te bepalen is

    Voorbeeld: het gezag wordt gevraagd van een ouder en er kan niet worden bepaald of zij de geboortemoeder is van het kind
      Gegeven de meerderjarige vrouw 'Ariana'
      En de meerderjarige vrouw 'Gerda'
      En de op 30-11-2022 geboren persoon 'Bert' met twee ouders 'Ariana' en 'Gerda' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      Als 'gezag' wordt gevraagd van 'Gerda'
      Dan heeft 'Gerda' geen gezag
