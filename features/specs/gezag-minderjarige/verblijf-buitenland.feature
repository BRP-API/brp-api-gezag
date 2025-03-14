# language: nl
Functionaliteit: Gezag bepalen voor personen die in het buitenland verbleven hebben
  Wanneer een minderjarige een tijd een vaste verblijfplaats in het buitenland heeft gehad, kan het gezag onder buitenlands recht wijzigen.
  In sommige situaties is het daardoor niet te bepalen wat het gezag is.

  We hanteren hierbij de volgende principes:
  - de vaste verblijfplaats van de minderjarige bepaalt onder welk recht het gezag bepaald wordt. Het land waar de ouders verblijven is niet relevant
  - eens gegeven, altijd gegeven: iemand kan niet het gezag verliezen door vestiging van de minderjarige in een ander land (HKV96)
     - gezag verkregen in Nederland kan je niet verliezen door te emigreren naar een ander land
     - gezag verkregen in een ander land kan je niet verliezen door te immigreren naar Nederland
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


  Regel: Het gezag kan (nog) niet worden bepaald voor een minderjarige die een vaste verblijfplaats in het buitenland heeft gehad, met twee ouders en waarbij volgens de gegevens in de BRP van rechtswege eenhoofdig ouderlijk gezag zou worden bepaald
    Het gezag is niet te bepalen omdat:
    - We weten (nog) niet of beide ouders in het buitenland gezamenlijk ouderlijk gezag hebben gekregen. In sommige landen (België, Spanje, ...) krijgt de vader gezag ook gezag wanneer ouders niet gehuwd zijn. De lijst met landen waar dit het geval is, is nog niet bekend.
    - We weten niet of er sprake is van buitenlandse adoptie waardoor beide (adoptie) ouders gezag krijgen. De regels hiervoor zijn nog niet uitgewerkt.

    Vraag: geldt deze lijst van landen waar de niet-geboortemoeder ook gezag krijgt alleen voor vaders (ouder is man) of ook voor meemoeders (ouder is vrouw)?

    Voorbeeld: minderjarige is geboren in het buitenland en in het buitenland geadopteerd door ongehuwde ouders
      # Wordt nog niet herkend als adoptie, later oppakken als dit grote groep blijkt te zijn
      Gegeven persoon 'Bert'
      * is geboren op 14-10-2019
      * is geboren in Duitsland
      En is op 29-11-2019 geïmmigreerd
      En 'Bert' is in het buitenland geadopteerd door 'Gerda' en 'Aart' op 30-11-2019 met document 'ad akte 6029'
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige in het buitenland heeft verbleven en onbekend is of de andere ouder dan de geboortemoeder daar gezag heeft gekregen.'

    Voorbeeld: ouders van minderjarige waren nooit met elkaar gehuwd en minderjarige is erkend voor 1-1-2023 en geïmmigreerd na 1-1-2023
      Gegeven persoon 'Bert'
      * is geboren op 14-10-2019
      * heeft 'Gerda' als ouder
      En 'Bert' is erkend door 'Aart' op 30-11-2019
      * is geboren in Duitsland
      * is op 6-1-2023 geïmmigreerd
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige in het buitenland heeft verbleven en onbekend is of de andere ouder dan de geboortemoeder daar gezag heeft gekregen.'

    Voorbeeld: ouders van minderjarige waren nooit met elkaar gehuwd en minderjarige is erkend voor 1-1-2023 en is na 1-1-2023 geremigreerd naar Nederland
      Gegeven persoon 'Bert'
      * is geboren op 14-10-2019
      * heeft 'Gerda' als ouder
      En 'Bert' is erkend door 'Aart' op 30-11-2019
      En 'Bert' is 5 jaar geleden geëmigreerd naar <land>
      En is op 6-11-2024 geïmmigreerd
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige in het buitenland heeft verbleven en onbekend is of de andere ouder dan de geboortemoeder daar gezag heeft gekregen.'

      Voorbeelden:
        | land      | omschrijving land                                                                          |
        | Duitsland | een land waar volgens het recht van dat land geen gezamenlijk gezag ontstaat bij erkenning |
        | Spanje    | een waar door erkenning wel gezamenlijk gezag ontstaat                                     |

  Regel: Een gerechtelijke uitspraak over het gezag voor een minderjarige blijft geldig wanneer de minderjarige een vaste verblijfplaats in het buitenland heeft gehad

    Voorbeeld: minderjarige is geïmmigreerd en daarna is er in een gerechtelijke uitspraak gezag toegewezen
      Gegeven persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
      * is geboren in Duitsland
      En is op 29-11-2022 geïmmigreerd
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toegewezen aan>
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
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toegewezen aan>
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

  Regel: Het gezag kan worden bepaald voor een minderjarige die een vaste verblijfplaats in het buitenland heeft gehad en gezamenlijk ouderlijk gezag heeft

    Voorbeeld: minderjarige is in het buitenland geboren en heeft twee ouders die met elkaar gehuwd zijn
      Gegeven 'Gerda' en 'Aart' zijn met elkaar gehuwd
      En persoon 'Bert'
      * heeft 'Aart' en 'Gerda' als ouders
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

  Regel: Het gezag kan worden bepaald voor een minderjarige die een vaste verblijfplaats in het buitenland heeft gehad en gezamenlijk gezag heeft

    Voorbeeld: minderjarige is in het buitenland geboren en heeft één ouder die ten tijde van de geboorte van minderjarige gehuwd was
      Gegeven 'Gerda' en 'Zoe' zijn 20 jaar geleden gehuwd
      En persoon 'Bert'
      * heeft 'Gerda' als ouder
      * is geboren in Duitsland
      * is 3 jaar geleden geïmmigreerd
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk gezag met ouder 'Gerda' en derde 'Zoe'

  Regel: Het gezag kan worden bepaald voor een minderjarige die een vaste verblijfplaats in het buitenland heeft gehad en één ouder heeft

    Voorbeeld: minderjarige is in het buitenland geboren en heeft één ouder waarbij geen huwelijk bekend is
      Gegeven persoon 'Bert'
      * is geboren in Duitsland
      * heeft 'Gerda' als ouder
      En 'Bert' is 10 jaar geleden geïmmigreerd naar Nederland
      Als gezag wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'
