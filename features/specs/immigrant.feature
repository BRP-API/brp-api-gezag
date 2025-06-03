# language: nl
Functionaliteit: Gezag bepalen voor personen die in het buitenland verbleven hebben
  Wanneer een minderjarige een tijd een gewone verblijfplaats in het buitenland heeft gehad, kan het gezag onder de toepassing van buitenlands recht wijzigen.
  In sommige situaties is het daardoor niet te bepalen wat het gezag is.

  We hanteren hierbij de volgende principes:
  - de gewone verblijfplaats van de minderjarige bepaalt met welk toepasselijk recht het gezag bepaald wordt. Het land waar de ouders verblijven is niet relevant
  - eens gegeven, altijd gegeven: iemand kan niet van rechtswege het gezag verliezen door vestiging van de minderjarige in een ander land (HKV96)
     - gezag verkregen in Nederland kan je niet verliezen door te emigreren naar een ander land
     - gezag verkregen in een ander land kan je niet verliezen door te immigreren naar Nederland
  - een gerechtelijke uitspraak over gezag blijft geldig na vestiging in een ander land
  - een adoptie blijft geldig na vestiging in een ander land

  Bij het bepalen van gezag wordt gekeken naar waar de persoon de "gewone" verblijfplaats heeft. Bij tijdelijk verblijf in het buitenland, bijvoorbeeld voor vakantie of een stage is de gewone verblijfplaats nog in Nederland.
  In de API beschouwen we de gemeente van inschrijving van een persoon bepalend voor de gewone verblijfplaats. Is de persoon ingeschreven in een Nederlandse gemeente, dan heeft de persoon een Nederlands adres als gewone verblijfplaats.
  

  Nog niet uitgewerkt in deze versie:
  - Verkrijgen van Gezamenlijk ouderlijk gezag bij ongehuwde ouders na verblijf van minderjarige in specifieke landen (België, Spanje, Polen, ...)
  - Bepalen dat er sprake is van buitenlandse adoptie wanneer deze niet in Nederland is erkend (wanneer de buitenlandse akte nog niet is omgezet naar een Nederlandse akte bij Landelijke taken)

  Achtergrond:
    Gegeven de meerderjarige vrouw 'Gerda'
    En de meerderjarige man 'Aart'
    En de meerderjarige vrouw 'Zoe'
    En de meerderjarige man 'Giovanni' zonder burgerservicenummer
    En de meerderjarige vrouw 'Ariana' zonder burgerservicenummer

  @to-do @skip-verify
  Regel: Het gezag kan (nog) niet worden bepaald voor een minderjarige die een gewone verblijfplaats in het buitenland heeft gehad, met twee ouders en waarbij volgens de gegevens in de BRP van rechtswege eenhoofdig ouderlijk gezag zou worden bepaald
    Het gezag is niet te bepalen omdat:
    - We weten (nog) niet of beide ouders in het buitenland gezamenlijk ouderlijk gezag hebben gekregen. In sommige landen (België, Spanje, ...) krijgt de vader ook gezag wanneer ouders niet gehuwd zijn. De lijst met landen waar dit het geval is, is nog niet bekend.
    - We weten niet of er sprake is van buitenlandse adoptie waardoor beide (adoptie) ouders gezag krijgen. De regels hiervoor zijn nog niet uitgewerkt.

    Voorbeeld: minderjarige is geboren in het buitenland en in het buitenland geadopteerd door ongehuwde ouders en de buitenlandse adoptieakte is (nog) niet omgezet naar een Nederlandse akte
      # Wordt nog niet door de API herkend als adoptie, later oppakken als dit grote groep blijkt te zijn
      Gegeven de minderjarige persoon 'Bert' geboren in het buitenland met niet-ingezeten ouders 'Ariana' en 'Giovanni'
      En 'Bert' is in het buitenland geadopteerd door 'Gerda' en 'Aart' op 28-11-2019 met document 'ad akte 6029'
      En is op 29-11-2019 geïmmigreerd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige in het buitenland heeft verbleven en onbekend is of de andere ouder dan de geboortemoeder daar gezag heeft gekregen.'

    Voorbeeld: ouders van minderjarige waren nooit met elkaar gehuwd en minderjarige is erkend voor 1-1-2023 en geïmmigreerd na 1-1-2023
      Gegeven de op 14-10-2019 geboren persoon 'Bert' met één ouder 'Gerda'
      * is geboren in Duitsland
      En 'Bert' is erkend door 'Aart' op 30-11-2019
      En is op 6-1-2023 geïmmigreerd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige in het buitenland heeft verbleven en onbekend is of de andere ouder dan de geboortemoeder daar gezag heeft gekregen.'

    Voorbeeld: ouders van minderjarige waren nooit met elkaar gehuwd en minderjarige is erkend voor 1-1-2023 en is na 1-1-2023 geremigreerd naar Nederland
      Gegeven de op 14-10-2019 geboren persoon 'Bert' met één ouder 'Gerda'
      En 'Bert' is erkend door 'Aart' op 30-11-2019
      En 'Bert' is 5 jaar geleden geëmigreerd naar <land>
      En is op 6-11-2024 geïmmigreerd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' niet te bepalen met de toelichting 'gezag is niet te bepalen omdat minderjarige in het buitenland heeft verbleven en onbekend is of de andere ouder dan de geboortemoeder daar gezag heeft gekregen.'

      Voorbeelden:
        | land      | omschrijving land                                                                          |
        | Duitsland | een land waar volgens het recht van dat land geen gezamenlijk gezag ontstaat bij erkenning |
        | Spanje    | een waar door erkenning wel gezamenlijk gezag ontstaat                                     |

  @to-do @skip-verify
  Regel: Een gerechtelijke uitspraak over het gezag voor een minderjarige blijft geldig wanneer de minderjarige een gewone verblijfplaats in het buitenland heeft gehad

    Voorbeeld: minderjarige is geïmmigreerd en daarna is er in een gerechtelijke uitspraak gezag toegewezen
      Gegeven de minderjarige persoon 'Bert' geboren in het buitenland met twee gehuwde ouders 'Gerda' en 'Aart'
      En is op 29-11-2022 geïmmigreerd
      En op 27-03-2024 is in een gerechtelijke uitspraak het gezag toegewezen aan <toegewezen aan>
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' <gezag uitspraak>

      Voorbeelden:
        | toegewezen aan             | gezag uitspraak                                               |
        | 'Aart'                     | eenhoofdig ouderlijk gezag met ouder 'Aart'                   |
        | 'Gerda'                    | eenhoofdig ouderlijk gezag met ouder 'Gerda'                  |
        | beide ouders               | gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart' |
        | een voogdijinstelling      | voogdij                                                       |
        | ouder 'Aart' en een derde  | gezamenlijk gezag met ouder 'Aart' en een onbekende derde     |
        | ouder 'Gerda' en een derde | gezamenlijk gezag met ouder 'Gerda' en een onbekende derde    |

    Voorbeeld: Er is een gerechtelijke uitspraak gezag toegewezen, daarna is de minderjarige geëmigreerd en vervolgens weer geïmmigreerd
      Gegeven de minderjarige persoon 'Bert' met twee gehuwde ouders 'Gerda' en 'Aart'
      En 2 jaar geleden is in een gerechtelijke uitspraak het gezag toegewezen aan <toegewezen aan>
      En 'Bert' is 1 jaar geleden geëmigreerd naar België
      En 'Bert' is vorige maand geïmmigreerd naar Nederland
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' <gezag uitspraak>

      Voorbeelden:
        | toegewezen aan             | gezag uitspraak                                               |
        | 'Aart'                     | eenhoofdig ouderlijk gezag met ouder 'Aart'                   |
        | 'Gerda'                    | eenhoofdig ouderlijk gezag met ouder 'Gerda'                  |
        | beide ouders               | gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart' |
        | een voogdijinstelling      | voogdij                                                       |
        | ouder 'Aart' en een derde  | gezamenlijk gezag met ouder 'Aart' en een onbekende derde     |
        | ouder 'Gerda' en een derde | gezamenlijk gezag met ouder 'Gerda' en een onbekende derde    |

  Regel: Het gezag kan worden bepaald voor een minderjarige die een gewone verblijfplaats in het buitenland heeft gehad en gezamenlijk ouderlijk gezag heeft

    @nieuw
    Voorbeeld: minderjarige is in het buitenland geboren en heeft twee ouders die met elkaar gehuwd zijn
      Gegeven de minderjarige persoon 'Bert' geboren in het buitenland met twee gehuwde ouders 'Gerda' en 'Aart'
      * is op 30-11-2022 geïmmigreerd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    Voorbeeld: minderjarige is geboren in het buitenland en in Nederland geadopteerd
      Gegeven de minderjarige persoon 'Bert' geboren in het buitenland met niet-ingezeten ouders 'Ariana' en 'Giovanni'
      * is op 29-11-2019 geïmmigreerd
      En 'Bert' is op 30-11-2019 geadopteerd door 'Gerda' en 'Aart'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

    @nieuw
    Voorbeeld: minderjarige heeft zijn gewone verblijfplaats in het buitenland gehad en heeft twee ouders die met elkaar gehuwd zijn
      Gegeven de minderjarige persoon 'Bert' met twee gehuwde ouders 'Gerda' en 'Aart'
      * is geboren in Nederland
      En 'Bert' is 10 jaar geleden geëmigreerd naar Duitsland
      En is op 30-11-2022 geïmmigreerd
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Aart'

  @to-do @skip-verify
  Regel: Het gezag kan worden bepaald voor een minderjarige die een gewone verblijfplaats in het buitenland heeft gehad en gezamenlijk gezag heeft
    Nederland erkent ook huwelijk van homoparen in het buitenland. Een buitenlands huwelijk heeft dus voor het bepalen van gezag dezelfde status als een huwelijk in Nederland (1:253sa BW).

    Voorbeeld: minderjarige is in het buitenland geboren en heeft één ouder die ten tijde van de geboorte van minderjarige gehuwd was
      Gegeven 'Gerda' en 'Zoe' zijn 19 jaar geleden gehuwd
      En de minderjarige persoon 'Bert' geboren in het buitenland met één ouder 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk gezag met ouder 'Gerda' en derde 'Zoe'

  @to-do @skip-verify
  Regel: Het gezag kan worden bepaald voor een minderjarige die een gewone verblijfplaats in het buitenland heeft gehad en één ouder heeft

    Voorbeeld: minderjarige is in het buitenland geboren en heeft één ouder waarbij geen huwelijk bekend is
      Gegeven de minderjarige persoon 'Bert' geboren in het buitenland met één ouder 'Gerda'
      En 'Bert' is 10 jaar geleden geïmmigreerd naar Nederland
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

  @nieuw
  Regel: het gezag kan worden bepaald voor een minderjarige waarvan een of beide gezaghebbenden niet staan ingeschreven in de BRP
    In dat geval weten we niet met zekerheid of er iets is veranderd in de situatie van deze ouder(s). Bijvoorbeeld of een ouder uit de ouderlijke macht is ontzet of de ouder is overleden.
    Het gezag wordt in dat geval bepaald op basis van de gegevens van de ouders zoals die bekend zijn. Daarbij wordt dan een toelichting geleverd waarin wordt aangegeven dat de persoon gewijzigd gezag kan laten opnemen in het gezagsregister.
    De situatie dat beide ouders niet in de BRP staan heeft altijd tot gevolg dat er voogdij wordt uitgesproken.

    Voorbeeld: minderjarige is in Nederland geboren en een van de ouders is niet ingeschreven in de BRP
      Gegeven de 1 jaar geleden geboren persoon 'Bert' met twee ouders 'Gerda' en 'Giovanni' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Giovanni'

    @to-do @skip-verify
    Voorbeeld: minderjarige is in Nederland geboren en een van de ouders is niet ingeschreven in de BRP
      Gegeven de 1 jaar geleden geboren persoon 'Bert' met twee ouders 'Gerda' en 'Giovanni' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Giovanni' met de toelichting 'gezag is bepaald op basis van onvolledige gegevens van Giovanni. Feiten die bepalend zijn voor het gezag van Giovanni kunnen betrokkenen in het gezagsregister dan wel bij je woongemeente laten inschrijven, zodat zij worden meegenomen in de gezagsbepaling van minderjarige.'

    Voorbeeld: minderjarige is voor 1 januari 2023 in Nederland geboren en een van de ouders is niet ingeschreven in de BRP
      Gegeven de 16 jaar geleden geboren persoon 'Bert' met twee ouders 'Gerda' en 'Giovanni' die ten tijde van de geboorte van de minderjarige niet met elkaar gehuwd waren
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' eenhoofdig ouderlijk gezag met ouder 'Gerda'

    Voorbeeld: minderjarige is in Nederland geboren en een van de ouders is niet ingeschreven in de BRP en de ouders zijn met elkaar gehuwd
      Gegeven de minderjarige persoon 'Bert' met twee gehuwde ouders 'Gerda' en 'Giovanni'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Giovanni'

    @to-do @skip-verify
    Voorbeeld: minderjarige is in Nederland geboren en een van de ouders is niet ingeschreven in de BRP en de ouders zijn met elkaar gehuwd
      Gegeven de minderjarige persoon 'Bert' met twee gehuwde ouders 'Gerda' en 'Giovanni'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk ouderlijk gezag met ouder 'Gerda' en ouder 'Giovanni' met de toelichting 'gezag is bepaald op basis van onvolledige gegevens van Giovanni. Feiten die bepalend zijn voor het gezag van Giovanni kunnen betrokkenen in het gezagsregister dan wel bij je woongemeente laten inschrijven, zodat zij worden meegenomen in de gezagsbepaling van minderjarige.'

    Voorbeeld: minderjarige is in Nederland geboren en de ouder was op het moment van geboorte gehuwd en partner is niet ingeschreven in de BRP
      Gegeven 'Gerda' en 'Ariana' zijn 12 jaar geleden gehuwd
      En de 10 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk gezag met ouder 'Gerda' en een onbekende derde

    @to-do @skip-verify
    Voorbeeld: minderjarige is in Nederland geboren en de ouder was op het moment van geboorte gehuwd en partner is niet ingeschreven in de BRP
      Gegeven 'Gerda' en 'Ariana' zijn 12 jaar geleden gehuwd
      En de 10 jaar geleden geboren persoon 'Bert' met één ouder 'Gerda'
      Als 'gezag' wordt gevraagd van 'Bert'
      Dan is het gezag over 'Bert' gezamenlijk gezag met ouder 'Gerda' en derde 'Ariana' met de toelichting 'gezag is bepaald op basis van onvolledige gegevens van Ariana. Feiten die bepalend zijn voor het gezag van Ariana kunnen betrokkenen in het gezagsregister dan wel bij je woongemeente laten inschrijven, zodat zij worden meegenomen in de gezagsbepaling van minderjarige.'
