# language: nl
Functionaliteit: het gezag kan worden bepaald voor een minderjarige waarvan een of beide gezaghebbenden niet staan ingeschreven in de BRP
    In dat geval weten we niet met zekerheid of er iets is veranderd in de situatie van deze ouder(s). Bijvoorbeeld of een ouder uit de ouderlijke macht is ontzet of de ouder is overleden.
    Het gezag wordt in dat geval bepaald op basis van de gegevens van de ouders zoals die bekend zijn. Daarbij wordt dan een toelichting geleverd waarin wordt aangegeven dat de persoon gewijzigd gezag kan laten opnemen in het gezagsregister.
    De situatie dat beide ouders niet in de BRP staan heeft altijd tot gevolg dat er voogdij wordt uitgesproken.

    Relevante situaties:
    - er zijn 2 ouders en 1 van de ouders heeft geen burgerservicenummer, de ouder met burgerservicenummer was bij geboorte minderjarige niet gehuwd, erkend voor 1-1-2023 --> eenhoofdig ouderlijk gezag
    - er zijn 2 ouders en 1 van de ouders heeft geen burgerservicenummer, de ouder met burgerservicenummer was bij geboorte minderjarige niet gehuwd, erkend na 1-1-2023 --> gezamenlijk ouderlijk gezag
    - er zijn 2 ouders en 1 van de ouders heeft geen burgerservicenummer, de ouder met burgerservicenummer heeft minderjarige geadopteerd --> gezamenlijk ouderlijk gezag
    - er zijn 2 ouders en 1 van de ouders heeft geen burgerservicenummer, gerechtelijke uitspraak gezag beide ouders --> gezamenlijk ouderlijk gezag
    - er zijn 2 ouders en 1 van de ouders heeft geen burgerservicenummer, de ouder met burgerservicenummer was bij geboorte minderjarige wel gehuwd, partnergegevens gelijk aan andere ouder --> gezamenlijk ouderlijk gezag
    - er zijn 2 ouders en 1 van de ouders heeft geen burgerservicenummer, de ouder met burgerservicenummer was bij geboorte minderjarige wel gehuwd, partnergegevens ongelijk aan andere ouder --> eenhoofdig ouderlijk gezag
    - er is 1 ouder en die ouder heeft/had bij geboorte minderjarige een partner zonder burgerservicenummer --> gezamenlijk gezag

  Regel: een ouder zonder burgerservicenummer kan gezag krijgen op basis van gegevens van de minderjarige en van de ouder die wel in de BRP een persoonslijst heeft

    Voorbeeld: twee ouders, moeder is ongehuwd, vader staat niet ingeschreven in de BRP en heeft erkend voor 1-1-2023
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

    Voorbeeld: twee ouders, vader is ongehuwd, moeder staat niet ingeschreven in de BRP en vader heeft erkend voor 1-1-2023
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

    Voorbeeld: moeder staat niet ingeschreven in de BRP en vader heeft geadopteerd
      Gegeven de persoon 'Moeder' zonder burgerservicenummer
      * is meerderjarig
      * is een vrouw
      En de persoon 'Adoptievader' met burgerservicenummer '000000024'
      * is meerderjarig
      * is een man
      En de persoon 'Minderjarige' met burgerservicenummer '000000036'
      * is 15 jaar geleden geboren
      * is ingeschreven in een Nederlandse gemeente
      * heeft 'Moeder' als ouder
      En 'Minderjarige' is morgen 14 jaar geleden geadopteerd door 'Adoptievader'
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' gezamenlijk ouderlijk gezag met ouder 'Moeder' en ouder 'Adoptievader'

    Voorbeeld: twee ouders en in gerechtelijke uitspraak is het gezag toegewezen aan beide ouders
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
      En in een gerechtelijke uitspraak is het gezag toegewezen aan <gerechtelijke uitspraak>
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'Minderjarige' <gezag>

      Voorbeelden:
        | gerechtelijke uitspraak | gezag                                                           |
        | beide ouders            | gezamenlijk ouderlijk gezag met ouder 'Moeder' en ouder 'Vader' |
        | 'Moeder'                | eenhoofdig ouderlijk gezag met ouder 'Moeder'                   |
        | 'Vader'                 | eenhoofdig ouderlijk gezag met ouder 'Vader'                    |
        | een derde               | voogdij                                                         |
        | 'Moeder' en een derde   | gezamenlijk gezag met ouder 'Moeder' en een onbekende derde     |
        | 'Vader' en een derde    | gezamenlijk gezag met ouder 'Vader' en een onbekende derde      |

  Regel: als een ouder geen burgerservicenummer heeft en de partner van de andere ouder heeft ook geen burgerservicenummer dan wordt bepaald of de ouders gehuwd zijn door geslachtsnaam en geboortedatum te vergelijken
    De ouder die niet in de BRP staat, staat dan zowel als ouder op de persoonslijst van de minderjarige en als partner op de persoonslijst van de andere ouder.

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

    Voorbeeld: vader staat niet ingeschreven in de BRP en moeder is gehuwd met een andere persoon en vader heeft erkend na 1-1-2023 (dus huwelijk ouders is niet relevant)
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
      En de persoon 'Partner' met burgerservicenummer '000000048'
      * heeft de volgende gegevens
        | naam                  | waarde  |
        | voornamen (02.10)     | Pino    |
        | geslachtsnaam (02.40) | Partner |
      * is op 04-03-1992 geboren
      * is een man
      En 'Moeder' en 'Partner' zijn met elkaar gehuwd
      En de persoon 'Minderjarige' met burgerservicenummer '000000036'
      * is op 2-3-2023 geboren
      * is ingeschreven in een Nederlandse gemeente
      * heeft 'Moeder' en 'Vader' als ouders
      Als 'gezag' wordt gevraagd van 'Minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'Vader'

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

  Regel: als minderjarige één ouder heeft en staande huwelijk is geboren, dan hebben geboortemoeder en haar partner het gezag

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
