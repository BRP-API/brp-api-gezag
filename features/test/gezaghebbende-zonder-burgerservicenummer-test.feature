# language: nl
Functionaliteit: het gezag kan worden bepaald voor een minderjarige waarvan een of beide gezaghebbenden niet staan ingeschreven in de BRP
    In dat geval weten we niet met zekerheid of er iets is veranderd in de situatie van deze ouder(s). Bijvoorbeeld of een ouder uit de ouderlijke macht is ontzet of de ouder is overleden.
    Het gezag wordt in dat geval bepaald op basis van de gegevens van de ouders zoals die bekend zijn. Daarbij wordt dan een toelichting geleverd waarin wordt aangegeven dat de persoon gewijzigd gezag kan laten opnemen in het gezagsregister.
    De situatie dat beide ouders niet in de BRP staan heeft altijd tot gevolg dat er voogdij wordt uitgesproken.

  Regel: als de minderjarige is erkend voor 1-1-2023 dan heeft de geboortemoeder het gezag

    Voorbeeld: vader staat niet ingeschreven in de BRP en heeft erkend voor 1-1-2023
      Gegeven de persoon 'Moeder' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Vader' zonder burgerservicenummer
      * is meerderjarig
      * is een man
      En de persoon 'Minderjarige' met burgerservicenummer '000000036'
      * is op 14-10-2022 geboren
      * is ingeschreven in een Nederlandse gemeente
      * heeft 'Moeder' en 'Vader' als ouders
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' eenhoofdig ouderlijk gezag met ouder 'Moeder'

    Voorbeeld: moeder staat niet ingeschreven in de BRP en vader heeft erkend voor 1-1-2023
      Gegeven de persoon 'Moeder' zonder burgerservicenummer
      * is meerderjarig
      * is een vrouw
      En de persoon 'Vader' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een man
      En de persoon 'Minderjarige' met burgerservicenummer '000000036'
      * is op 14-10-2022 geboren
      * is ingeschreven in een Nederlandse gemeente
      * heeft 'Moeder' en 'Vader' als ouders
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' eenhoofdig ouderlijk gezag met ouder 'Moeder'

  Regel: als de minderjarige is erkend na 1-1-2023 dan hebben beide ouders gezamenlijk gezag

    Voorbeeld: vader staat niet ingeschreven in de BRP en heeft erkend na 1-1-2023
      Gegeven de persoon 'Moeder' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Vader' zonder burgerservicenummer
      * is meerderjarig
      * is een man
      En de persoon 'Minderjarige' met burgerservicenummer '000000036'
      * is op 2-3-2023 geboren
      * is ingeschreven in een Nederlandse gemeente
      * heeft 'Moeder' en 'Vader' als ouders
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' gezamenlijk ouderlijk gezag met ouder 'Moeder' en ouder 'Vader'

    Voorbeeld: moeder staat niet ingeschreven in de BRP en vader heeft erkend na 1-1-2023
      Gegeven de persoon 'Moeder' zonder burgerservicenummer
      * is meerderjarig
      * is een vrouw
      En de persoon 'Vader' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een man
      En de persoon 'Minderjarige' met burgerservicenummer '000000036'
      * is op 14-10-2022 geboren
      * is ingeschreven in een Nederlandse gemeente
      * heeft 'Moeder' en 'Vader' als ouders
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' gezamenlijk ouderlijk gezag met ouder 'Moeder' en ouder 'Vader'

  Regel: als een ouder geen burgerservicenummer heeft en de partner van de andere ouder heeft ook geen burgerservicenummer dan wordt bepaald of de ouders gehuwd zijn door geslachtsnaam en geboortedatum te vergelijken
    De ouder die niet in de BRP staat, staat dan wel als ouder op de persoonslijst van de minderjarige en als partner op de persoonslijst van de andere ouder.

    Voorbeeld: vader staat niet ingeschreven in de BRP en moeder is gehuwd met vader
      Gegeven de persoon 'Moeder' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Vader' zonder burgerservicenummer
      * heeft de volgende gegevens
        | naam                  | waarde |
        | voornamen (02.10)     | Aart   |
        | geslachtsnaam (02.40) | Vader  |
      * is meerderjarig
      * is een man
      En 'Moeder' en 'Vader' zijn 25 jaar geleden gehuwd
      En de persoon 'Minderjarige' met burgerservicenummer '000000036'
      * is op 14-10-2022 geboren
      * is ingeschreven in een Nederlandse gemeente
      * heeft 'Moeder' en 'Vader' als ouders
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' gezamenlijk ouderlijk gezag met ouder 'Moeder' en ouder 'Vader'

    Voorbeeld: vader staat niet ingeschreven in de BRP en moeder is gehuwd met een andere persoon die niet in de BRP staat ingeschreven
      Gegeven de persoon 'Moeder' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Vader' zonder burgerservicenummer
      * heeft de volgende gegevens
        | naam                  | waarde |
        | voornamen (02.10)     | Aart   |
        | geslachtsnaam (02.40) | Vader  |
      * is op 30-07-1983 geboren
      * is een man
      En de persoon 'Partner' zonder burgerservicenummer
      * heeft de volgende gegevens
        | naam                  | waarde          |
        | voornamen (02.10)     | Aart            |
        | geslachtsnaam (02.40) | <geslachtsnaam> |
      * is op <geboortedatum> geboren
      * is een man
      En 'Moeder' en 'Partner' zijn met elkaar gehuwd
      En de persoon 'Minderjarige' met burgerservicenummer '000000036'
      * is op 14-10-2022 geboren
      * is ingeschreven in een Nederlandse gemeente
      * heeft 'Moeder' en 'Vader' als ouders
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' eenhoofdig ouderlijk gezag met ouder 'Moeder'

      Voorbeelden:
        | geslachtsnaam | geboortedatum | omschrijving                                        |
        | Partner       |    30-07-1983 | andere geslachtsnaam dan de vader                   |
        | Vader         |    31-07-1983 | andere geboortedatum dan de vader                   |
        | Aart Vader    |    30-07-1983 | voornaam en achternaam van de partner als naamketen |
        | Vader Partner |    30-07-1983 | achternaam van de partner is langer                 |
        | Vade          |    30-07-1983 | achternaam van de partner is korter                 |
        | .             |    30-07-1983 | geslachtsnaam van de partner heeft standaardwaarde  |
        | Vader         |    00-00-0000 | geboortedatum van de partner is onbekend            |

    Voorbeeld: vader staat niet ingeschreven in de BRP en moeder was gehuwd met vader
      Gegeven de persoon 'Moeder' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Vader' zonder burgerservicenummer
      * heeft de volgende gegevens
        | naam                  | waarde |
        | voornamen (02.10)     | Aart   |
        | geslachtsnaam (02.40) | Vader  |
      * is meerderjarig
      * is een man
      En 'Moeder' en 'Vader' zijn 25 jaar geleden gehuwd
      En 'Moeder' en 'Vader' zijn 3 jaar geleden gescheiden
      En de persoon 'Minderjarige' met burgerservicenummer '000000036'
      * is op 14-10-2019 geboren
      * is ingeschreven in een Nederlandse gemeente
      * heeft 'Moeder' en 'Vader' als ouders
      En de persoon 'Partner' met burgerservicenummer '000000048'
      En 'Moeder' en 'Partner' zijn 1 jaar geleden gehuwd
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' gezamenlijk ouderlijk gezag met ouder 'Moeder' en ouder 'Vader'

  Regel: minderjarige is staande huwelijk geboren dan hebben geboortemoeder en haar partner het gezag

    Voorbeeld: minderjarige heeft één ouder en is staande huwelijk geboren en partner van moeder staat niet ingeschreven in de BRP
      Gegeven de persoon 'Moeder' met burgerservicenummer '000000012'
      * is meerderjarig
      * is een vrouw
      En de persoon 'Partner' zonder burgerservicenummer
      * is meerderjarig
      * is een vrouw
      En 'Moeder' en 'Partner' zijn met elkaar gehuwd
      En de persoon 'Minderjarige' met burgerservicenummer '000000036'
      * is op 14-10-2022 geboren
      * is ingeschreven in een Nederlandse gemeente
      * heeft 'Moeder' als ouder
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' gezamenlijk gezag met ouder 'Moeder' en derde 'Partner'
