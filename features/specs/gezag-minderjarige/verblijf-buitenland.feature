# language: nl
Functionaliteit: Gezag bepalen voor personen die in het buitenland verblijven of daar verbleven hebben
  Wanneer een minderjarige een tijd een vaste verblijfplaats in het buitenland heeft gehad, kan het gezag onder buitenlands recht wijzigen.
  In sommige situaties is het daardoor niet te bepalen wat het gezag is.

  We hanteren hierbij de volgende principes:
  - de vaste verblijfplaats van de minderjarige bepaalt onder welk recht het gezag bepaald wordt. Het land waar de ouders verblijven is niet relevant
  - eens gegeven, altijd gegeven: iemand kan niet het gezag verliezen door vestiging van de minderjarige in een ander land
  - een gerechtelijke uitspraak over gezag blijft geldig na vestiging in een ander land
  - een adoptie blijft geldig na vestiging in een ander land

  Nog niet uitgewerkt in deze versie:
  - Verkrijgen van Gezamenlijk ouderlijk gezag bij ongehuwde ouders na verblijf van minderjarige in specifieke landen (België, Spanje, ...)
  - Bepalen dat er sprake is van buitenlandse adoptie

  Achtergrond:
    Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
    * is meerderjarig
    En de persoon 'Aart' met burgerservicenummer '000000024'
    * is meerderjarig
    En de persoon 'Bert' met burgerservicenummer '000000036'
    * is minderjarig
    En de persoon 'Zoe' met burgerservicenummer '000000048'
    * is meerderjarig

  Regel: Het gezag kan niet worden bepaald voor een minderjarige die nooit een vaste verblijfplaats in Nederland heeft gehad

    Voorbeeld: minderjarige staat ingeschreven als niet-ingezetene en heeft nooit een vaste verblijfplaats in Nederland gehad
      Gegeven persoon 'Bert'
      * is ingeschreven als niet-ingezetene met een verblijfplaats in België
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'Gezag is niet te bepalen omdat minderjarige nooit een vaste verblijfplaats in Nederland heeft gehad.'

    Voorbeeld: minderjarige is nooit ingezetene van Nederland geweest en heeft een tijdelijke verblijfplaats in Nederland
      Gegeven persoon 'Bert'
      * is ingeschreven als niet-ingezetene met een verblijfplaats in België
      * is ingeschreven met een tijdelijke verblijfplaats in Nederland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'Gezag is niet te bepalen omdat minderjarige nooit een vaste verblijfplaats in Nederland heeft gehad.'

  Regel: Een gerechtelijke uitspraak over het gezag voor een minderjarige blijft geldig wanneer de minderjarige een vaste verblijfplaats in het buitenland heeft of heeft gehad

    Voorbeeld: minderjarige is geïmmigreerd en daarna is er in een gerechtelijke uitspraak gezag toegewezen
      Gegeven persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      * is geboren in Duitsland
      En is op 29-11-2022 geïmmigreerd
      En er is 2 jaar geleden een gerechtelijke uitspraak over het gezag geweest waarbij het gezag over 'Bert' is toegewezen aan <toegewezen aan>
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' <gezag uitspraak>

      Voorbeelden:
        | toegewezen aan             | gezag uitspraak                                               |
        | 'Gerda'                    | eenhoofdig ouderlijk gezag met ouder 'Gerda'                  |
        | 'Aart'                     | eenhoofdig ouderlijk gezag met ouder 'Aart'                   |
        | beide ouders               | gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart' |
        | een voogdijinstelling      | voogdij                                                       |
        | ouder 'Gerda' en een derde | gezamenlijk gezag met ouder 'Gerda' en een onbekende derde    |
        | ouder 'Aart' en een derde  | gezamenlijk gezag met ouder 'Aart' en een onbekende derde     |

    Voorbeeld: Er is in een gerechtelijke uitspraak gezag toegewezen en daarna is de minderjarige geëmigreerd
      Gegeven persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      En er is 2 jaar geleden een gerechtelijke uitspraak over het gezag geweest waarbij het gezag over 'Bert' is toegewezen aan <toegewezen aan>
      En 'Bert' is 1 jaar geleden geëmigreerd naar België
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' <gezag uitspraak>

      Voorbeelden:
        | toegewezen aan             | gezag uitspraak                                               |
        | 'Gerda'                    | eenhoofdig ouderlijk gezag met ouder 'Gerda'                  |
        | 'Aart'                     | eenhoofdig ouderlijk gezag met ouder 'Aart'                   |
        | beide ouders               | gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart' |
        | een voogdijinstelling      | voogdij                                                       |
        | ouder 'Gerda' en een derde | gezamenlijk gezag met ouder 'Gerda' en een onbekende derde    |
        | ouder 'Aart' en een derde  | gezamenlijk gezag met ouder 'Aart' en een onbekende derde     |

    Voorbeeld: Er is een gerechtelijke uitspraak gezag toegewezen, daarna is de minderjarige geëmigreerd en vervolgens weer geïmmigreerd
      Gegeven persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      En er is 2 jaar geleden een gerechtelijke uitspraak over het gezag geweest waarbij het gezag over 'Bert' is toegewezen aan <toegewezen aan>
      En 'Bert' is 1 jaar geleden geëmigreerd naar België
      En 'Bert' is vorige maand geïmmigreerd naar Nederland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' <gezag uitspraak>

      Voorbeelden:
        | toegewezen aan             | gezag uitspraak                                               |
        | 'Gerda'                    | eenhoofdig ouderlijk gezag met ouder 'Gerda'                  |
        | 'Aart'                     | eenhoofdig ouderlijk gezag met ouder 'Aart'                   |
        | beide ouders               | gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart' |
        | een voogdijinstelling      | voogdij                                                       |
        | ouder 'Gerda' en een derde | gezamenlijk gezag met ouder 'Gerda' en een onbekende derde    |
        | ouder 'Aart' en een derde  | gezamenlijk gezag met ouder 'Aart' en een onbekende derde     |

  Regel: Het gezag kan worden bepaald voor een minderjarige die ooit Nederland als vaste verblijfplaats heeft gehad en gezamenlijk ouderlijk gezag heeft

    Voorbeeld: minderjarige is in het buitenland geboren en heeft twee ouders die met elkaar gehuwd zijn
      Gegeven 'Gerda' en 'Aart' zijn met elkaar gehuwd
      En persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      * is geboren in Duitsland
      * is op 30-11-2022 geïmmigreerd
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: minderjarige is in het buitenland geboren en heeft twee ouders die met elkaar gehuwd waren
      Gegeven 'Gerda' en 'Aart' zijn met elkaar gehuwd
      En 'Gerda' en 'Bert' zijn 12 jaar geleden gescheiden
      En persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      * is 15 jaar geleden geboren
      * is geboren in Duitsland
      * is op 30-11-2022 geïmmigreerd
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: minderjarige is geboren in het buitenland en in Nederland geadopteerd
      Gegeven persoon 'Bert'
      * is geboren op 14-10-2019
      * is geboren in Duitsland
      En is op 29-11-2019 geïmmigreerd
      En 'Bert' is op 30-11-2019 geadopteerd door 'Gerda' en 'Aart'
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: minderjarige heeft in het buitenland verbleven en heeft twee ouders die met elkaar gehuwd zijn
      Gegeven 'Gerda' en 'Aart' zijn met elkaar gehuwd
      En persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      * is geboren in Nederland
      En 'Bert' is 10 jaar geleden geëmigreerd naar Duitsland
      En is op 30-11-2022 geïmmigreerd
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: minderjarige is geëmigreerd naar het buitenland en heeft twee ouders die met elkaar gehuwd waren
      Gegeven 'Gerda' en 'Aart' zijn met elkaar gehuwd
      En 'Gerda' en 'Aart' zijn 12 jaar geleden gescheiden
      En persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      * is 15 jaar geleden geboren
      * is geboren in Nederland
      En 'Bert' is 10 jaar geleden geëmigreerd naar Duitsland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: ouders van minderjarige waren nooit met elkaar gehuwd en minderjarige is geboren na 1-1-2023 en daarna geëmigreerd
      Gegeven persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      * is geboren op 6-1-2023
      En 'Bert' is 1 jaar geleden geëmmigreerd naar Duitsland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: ouders van minderjarige waren nooit met elkaar gehuwd en minderjarige is erkend na 1-1-2023 en daarna geëmigreerd
      Gegeven persoon 'Bert'
      * heeft 'Gerda' als ouder
      * is geboren op 14-10-2019
      En 'Bert' is erkend door 'Aart' op 6-1-2023
      En 'Bert' is 1 jaar geleden geëmmigreerd naar Duitsland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: ouders van minderjarige waren nooit met elkaar gehuwd en minderjarige is in het buitenland geboren na 1-1-2023 en daarna geïmmigreerd
      Gegeven persoon 'Bert'
      * is geboren op 6-1-2023
      * is geboren in Duitsland
      * heeft 'Aart' en 'Gerda' als ouders
      En 'Bert' is 1 jaar geleden geëmmigreerd naar Duitsland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: ouders van minderjarige waren nooit met elkaar gehuwd en minderjarige is in het buitenland geboren voor 1-1-2023 en door vader erkend na 1-1-2023 en daarna geïmmigreerd
      Gegeven persoon 'Bert'
      * is geboren op 14-12-2022
      * heeft 'Gerda' als ouder vanaf de geboortedatum
      * heeft 'Aart' als ouder vanaf 3-1-2023
      * is geboren in Duitsland
      En 'Bert' is 1 jaar geleden geëmmigreerd naar Duitsland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: minderjarige is geëmigreerd en heeft twee ouders die gescheiden zijn en in het buitenland is het gezag toegewezen aan de moeder
      # wordt indicatie gezag wel bijgewerkt als de gerechtelijke uitspraak wel wordt ingeschreven in het gezagsregister wanneer de minderjarige in RNI staat?
      Gegeven 'Gerda' en 'Aart' zijn met elkaar gehuwd
      En persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      * is geboren in Nederland
      En 'Bert' is 10 jaar geleden geëmigreerd naar Duitsland
      En 'Gerda' is 10 jaar geleden geëmigreerd naar Duitsland
      En 'Gerda' en 'Aart' zijn 8 jaar geleden gescheiden
      En gezag is in het buitenland toegewezen aan 'Gerda' en dit is niet in het gezagsregister ingeschreven
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: minderjarige heeft in het buitenland verbleven en heeft twee ouders die gescheiden zijn en in het buitenland is het gezag toegewezen aan de moeder
      Gegeven 'Gerda' en 'Aart' zijn met elkaar gehuwd
      En persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      * is geboren in Nederland
      En 'Bert' is 10 jaar geleden geëmigreerd naar Duitsland
      En 'Gerda' is 10 jaar geleden geëmigreerd naar Duitsland
      En 'Aart' is 10 jaar geleden geëmigreerd naar Duitsland
      En 'Gerda' en 'Aart' zijn 8 jaar geleden gescheiden
      En gezag is in het buitenland toegewezen aan 'Gerda' en dit is niet in het gezagsregister ingeschreven
      En 'Bert' is vorige maand geïmmigreerd naar Nederland
      En 'Gerda' is vorige maand geïmmigreerd naar Nederland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  Regel: Het gezag kan worden bepaald voor een minderjarige die ooit Nederland als vaste verblijfplaats heeft gehad en gezamenlijk gezag heeft

    Voorbeeld: minderjarige is in het buitenland geboren en heeft één ouder die ten tijde van de geboorte van minderjarige gehuwd was
      Gegeven 'Gerda' en 'Zoe' zijn 20 jaar geleden gehuwd
      En persoon 'Bert'
      * heeft 'Gerda' als ouder
      * is geboren in Duitsland
      * is 3 jaar geleden geïmmigreerd
      En 'Gerda' en 'Zoe' zijn 2 jaar geleden gescheiden
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk gezag met ouder 'Gerda' en derde 'Zoe'

    Voorbeeld: minderjarige heeft één ouder die ten tijde van de geboorte van minderjarige gehuwd was en minderjarige is geëmigreerd
      Gegeven 'Gerda' en 'Zoe' zijn 20 jaar geleden gehuwd
      En persoon 'Bert'
      * heeft 'Gerda' als ouder
      * is geboren in Nederland
      En 'Bert' is 5 jaar geleden geëmmigreerd naar Duitsland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk gezag met ouder 'Gerda' en derde 'Zoe'

  Regel: Het gezag kan worden bepaald voor een minderjarige die ooit Nederland als vaste verblijfplaats heeft gehad en één ouder heeft

    Voorbeeld: minderjarige is in het buitenland geboren en heeft één ouder waarbij geen huwelijk bekend is
      Gegeven persoon 'Bert'
      * is geboren in Duitsland
      * heeft 'Gerda' als ouder
      En 'Bert' is 10 jaar geleden geïmmigreerd naar Nederland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: minderjarige is in het buitenland geboren en heeft één ouder waarbij geen huwelijk bekend is omdat ze zelf niet is ingeschreven in de BRP
      Gegeven persoon 'Bert'
      * is geboren in Duitsland
      * heeft 'Gertrud' als ouder die niet met burgerservicenummer is ingeschreven in de BRP
      En 'Bert' is 10 jaar geleden geïmmigreerd naar Nederland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gertrud'

    Voorbeeld: minderjarige heeft als vaste verblijfplaats een adres in het buitenland en heeft één ouder die ten tijde van de geboorte van minderjarige ongehuwd was
      Gegeven persoon 'Bert'
      * is geboren in Nederland
      * heeft 'Gerda' als ouder
      En 'Bert' is vorige maand geëmigreerd naar Duitsland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

  Regel: Het gezag kan niet worden bepaald voor een minderjarige die een vaste verblijfplaats in het buitenland heeft of heeft gehad en twee ouders heeft en waarvoor van rechtswege eenhoofdig ouderlijk gezag is bepaald

    Voorbeeld: minderjarige is geëmigreerd en van de ouders is geen huwelijk bekend
      Gegeven persoon 'Bert'
      * is geboren in Nederland
      * heeft 'Aart' en 'Gerda' als ouders
      En 'Bert' is 3 jaar geleden geëmigreerd naar Duitsland
      En 'Gerda' is 3 jaar geleden geëmigreerd naar Duitsland
      En 'Aart' is 3 jaar geleden geëmigreerd naar Duitsland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige niet in Nederland woont.'

    Voorbeeld: minderjarige is zonder ouders geïmmigreerd
      Gegeven persoon 'Bert'
      * is geboren op 14-10-2019
      * is geboren in Duitsland
      * heeft 'Günther' als ouder die niet met burgerservicenummer is ingeschreven in de BRP
      * heeft 'Gertrud' als ouder die niet met burgerservicenummer is ingeschreven in de BRP
      En 'Bert' is 1 jaar geleden geïmmigreerd naar Nederland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige niet in Nederland geboren is.'

    Voorbeeld: minderjarige is geboren in het buitenland en in het buitenland geadopteerd door ongehuwde ouders
      # Wordt nog niet herkend als adoptie, later oppakken als dit grote groep blijkt te zijn
      Gegeven persoon 'Bert'
      * is geboren op 14-10-2019
      * is geboren in Duitsland
      En is op 29-11-2019 geïmmigreerd
      En 'Bert' is in het buitenland geadopteerd door 'Gerda' en 'Aart' op 30-11-2019 met document 'ad akte 6029'
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige in het buitenland is geboren.'

    Voorbeeld: ouders van minderjarige waren nooit met elkaar gehuwd en minderjarige is erkend voor 1-1-2023 en geïmmigreerd na 1-1-2023
      Gegeven persoon 'Bert'
      * is geboren op 14-10-2019
      * heeft 'Gerda' als ouder
      En 'Bert' is erkend door 'Aart' op 30-11-2019
      * is geboren in Duitsland
      * is op 6-1-2023 geïmmigreerd
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige in het buitenland is geboren.'

    Voorbeeld: ouders van minderjarige waren nooit met elkaar gehuwd en minderjarige is erkend voor 1-1-2023 en is na 1-1-2023 geremigreerd naar Nederland
      Gegeven persoon 'Bert'
      * is geboren op 14-10-2019
      * heeft 'Gerda' als ouder
      En 'Bert' is erkend door 'Aart' op 30-11-2019
      En 'Bert' is 5 jaar geleden geëmmigreerd naar <land>
      En is op 6-11-2024 geïmmigreerd
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige in het buitenland heeft verbleven.'

      Voorbeelden:
        | land      | omschrijving land                                                                          |
        | Duitsland | een land waar volgens het recht van dat land geen gezamenlijk gezag ontstaat bij erkenning |
        | Spanje    | een waar door erkenning wel gezamenlijk gezag ontstaat                                     |
