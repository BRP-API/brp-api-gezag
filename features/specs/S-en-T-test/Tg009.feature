#language: nl

@deprecated @gezag-api
Functionaliteit: Tg009 - Harmsen-Henegouwen-Hapert-Hanssen


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 15                 | 0518200000583536                           |
    Gegeven adres 'A2'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 17                 | 0518200000583537                           |
    
    # Lg01_041 - 2 ontbonden huwelijken, 1 ontbonden partnerschap, 1 actueel huwelijk. In eerste ontbonden huwelijk is in 2020 relatie gelegd waardoor deze 'bovenaan' ligt. Totaal 4 kinderen, waarvan 2 ouder dan 18 en 2 jonger dan 18
    Gegeven de persoon 'Hedwig' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Hedwig   |
      | geslachtsnaam (02.40)           | Harmsen  |
      | geboortedatum (03.10)           | 19700401 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Hendrika |
      | geslachtsnaam (02.40)                              | Holwerda |
      | geboortedatum (03.10)                              | 19501201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Herman   |
      | geslachtsnaam (02.40)                              | Harmsen  |
      | geboortedatum (03.10)                              | 19451201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Harald' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000073 |
      | voornamen (02.10)                                                   | Harald    |
      | geslachtsnaam (02.40)                                               | Hanssen   |
      | geboortedatum (03.10)                                               | 19640802  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 19950601  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 19950601  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Harald' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000073 |
      | voornamen (02.10)                                             | Harald    |
      | geslachtsnaam (02.40)                                         | Hanssen   |
      | geboortedatum (03.10)                                         | 19640802  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | M         |
      | aktenummer (81.20)                                            | 3AB0100   |
      | ingangsdatum geldigheid (85.10)                               | 19980601  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 19980601  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S         |
    En heeft een partner 'Hendrik' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000048 |
      | voornamen (02.10)                                                   | Hendrik   |
      | voorvoegsel (02.30)                                                 | van       |
      | geslachtsnaam (02.40)                                               | Hapert    |
      | geboortedatum (03.10)                                               | 19620702  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 5AA0010   |
      | ingangsdatum geldigheid (85.10)                                     | 20020701  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20020701  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Hendrik' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000048 |
      | voornamen (02.10)                                             | Hendrik   |
      | voorvoegsel (02.30)                                           | van       |
      | geslachtsnaam (02.40)                                         | Hapert    |
      | geboortedatum (03.10)                                         | 19620702  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | M         |
      | aktenummer (81.20)                                            | 5AB0010   |
      | ingangsdatum geldigheid (85.10)                               | 20110701  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20110701  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S         |
    En heeft een partner 'Hessel' met de volgende gegevens
      | naam                                                                | waarde     |
      | burgerservicenummer (01.20)                                         | 000000024  |
      | voornamen (02.10)                                                   | Hessel     |
      | voorvoegsel (02.30)                                                 | van        |
      | geslachtsnaam (02.40)                                               | Henegouwen |
      | geboortedatum (03.10)                                               | 19720602   |
      | geboorteland (03.30)                                                | 6030       |
      | geslachtsaanduiding (04.10)                                         | M          |
      | aktenummer (81.20)                                                  | 3AA0100    |
      | ingangsdatum geldigheid (85.10)                                     | 20120801   |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20120801   |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518       |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030       |
    En heeft een partner 'Hans' met de volgende gegevens
      | naam                                                                | waarde   |
      | voornamen (02.10)                                                   | Hans     |
      | geslachtsnaam (02.40)                                               | Hovink   |
      | geboortedatum (03.10)                                               | 19600502 |
      | geboorteland (03.30)                                                | 6030     |
      | geslachtsaanduiding (04.10)                                         | M        |
      | beschrijving document (82.30)                                       | PK       |
      | ingangsdatum geldigheid (85.10)                                     | 19910501 |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 19910501 |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518     |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030     |
    En partner 'Hans' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde   |
      | voornamen (02.10)                                             | Hans     |
      | geslachtsnaam (02.40)                                         | Hovink   |
      | geboortedatum (03.10)                                         | 19600502 |
      | geboorteland (03.30)                                          | 6030     |
      | geslachtsaanduiding (04.10)                                   | M        |
      | beschrijving document (82.30)                                 | PK       |
      | ingangsdatum geldigheid (85.10)                               | 19940501 |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 19940501 |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518     |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030     |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S        |
    En partner 'Hans' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde          |
      | burgerservicenummer (01.20)                                   | 999998730       |
      | voornamen (02.10)                                             | Hans            |
      | geslachtsnaam (02.40)                                         | Hovink          |
      | geboortedatum (03.10)                                         | 19600502        |
      | geboorteland (03.30)                                          | 6030            |
      | geslachtsaanduiding (04.10)                                   | M               |
      | beschrijving document (82.30)                                 | PL gerelateerde |
      | ingangsdatum geldigheid (85.10)                               | 20200202        |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 19940501        |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518            |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030            |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S               |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Helma' met de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Helma    |
      | geslachtsnaam (02.40)           | Hovink   |
      | geboortedatum (03.10)           | 19931201 |
      | geboorteland (03.30)            | 6030     |
      | beschrijving document (82.30)   | PK       |
      | ingangsdatum geldigheid (85.10) | 19931201 |
    En heeft een kind 'Helena' met de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Helena   |
      | geslachtsnaam (02.40)           | Hanssen  |
      | geboortedatum (03.10)           | 19971201 |
      | geboorteland (03.30)            | 6030     |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 19971201 |
    En kind 'Helena' is gewijzigd naar de volgende gegevens
      | naam                            | waarde          |
      | burgerservicenummer (01.20)     | 999998857       |
      | voornamen (02.10)               | Helena          |
      | geslachtsnaam (02.40)           | Hanssen         |
      | geboortedatum (03.10)           | 19971201        |
      | geboorteland (03.30)            | 6030            |
      | beschrijving document (82.30)   | PL gerelateerde |
      | ingangsdatum geldigheid (85.10) | 19971210        |
    En heeft een kind 'Hanna' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Hanna     |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Hapert    |
      | geboortedatum (03.10)           | 20101201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20101201  |
    En heeft een kind 'Hilde' met de volgende gegevens
      | naam                            | waarde     |
      | burgerservicenummer (01.20)     | 000000036  |
      | voornamen (02.10)               | Hilde      |
      | voorvoegsel (02.30)             | van        |
      | geslachtsnaam (02.40)           | Henegouwen |
      | geboortedatum (03.10)           | 20131201   |
      | geboorteland (03.30)            | 6030       |
      | aktenummer (81.20)              | 1AA0100    |
      | ingangsdatum geldigheid (85.10) | 20131201   |
    
    # Lg01_042 - gehuwd, 1 minderjarig kind
    Gegeven de persoon 'Hessel' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Hessel     |
      | voorvoegsel (02.30)             | van        |
      | geslachtsnaam (02.40)           | Henegouwen |
      | geboortedatum (03.10)           | 19720602   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | M          |
      | beschrijving document (82.30)   | PKA        |
      | ingangsdatum geldigheid (85.10) | 0          |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Hildegard |
      | geslachtsnaam (02.40)                              | Heesters  |
      | geboortedatum (03.10)                              | 19420301  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | voornamen (02.10)                                  | Hadrianus  |
      | voorvoegsel (02.30)                                | van        |
      | geslachtsnaam (02.40)                              | Henegouwen |
      | geboortedatum (03.10)                              | 19400501   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | M          |
      | beschrijving document (82.30)                      | PK         |
      | ingangsdatum geldigheid (85.10)                    | 0          |
      | datum ingang familierechtelijke betrekking (62.10) | 0          |
    En heeft een partner 'Hedwig' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Hedwig    |
      | geslachtsnaam (02.40)                                               | Harmsen   |
      | geboortedatum (03.10)                                               | 19700401  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20120801  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20120801  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Hilde' met de volgende gegevens
      | naam                            | waarde     |
      | burgerservicenummer (01.20)     | 000000036  |
      | voornamen (02.10)               | Hilde      |
      | voorvoegsel (02.30)             | van        |
      | geslachtsnaam (02.40)           | Henegouwen |
      | geboortedatum (03.10)           | 20131201   |
      | geboorteland (03.30)            | 6030       |
      | aktenummer (81.20)              | 1AA0100    |
      | ingangsdatum geldigheid (85.10) | 20131201   |
    
    # Lg01_043 - minderjarig kind uit gehuwde ouders (moeder meerdere ontbonden huwelijken)
    Gegeven de persoon 'Hilde' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Hilde      |
      | voorvoegsel (02.30)             | van        |
      | geslachtsnaam (02.40)           | Henegouwen |
      | geboortedatum (03.10)           | 20131201   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | V          |
      | aktenummer (81.20)              | 1AA0100    |
      | ingangsdatum geldigheid (85.10) | 20131201   |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Hedwig    |
      | geslachtsnaam (02.40)                              | Harmsen   |
      | geboortedatum (03.10)                              | 19700401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20131201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20131201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | burgerservicenummer (01.20)                        | 000000024  |
      | voornamen (02.10)                                  | Hessel     |
      | voorvoegsel (02.30)                                | van        |
      | geslachtsnaam (02.40)                              | Henegouwen |
      | geboortedatum (03.10)                              | 19720602   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | M          |
      | aktenummer (81.20)                                 | 1AA0100    |
      | ingangsdatum geldigheid (85.10)                    | 20131201   |
      | datum ingang familierechtelijke betrekking (62.10) | 20131201   |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20131201 |
    
    # Lg01_044 - ontbonden partnerschap, 1 minderjarig kind, emigratie
    Gegeven de persoon 'Hendrik' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Hendrik  |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Hapert   |
      | geboortedatum (03.10)           | 19620702 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Henriette |
      | geslachtsnaam (02.40)                              | Hazelhoff |
      | geboortedatum (03.10)                              | 19430301  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Hero     |
      | voorvoegsel (02.30)                                | van      |
      | geslachtsnaam (02.40)                              | Hapert   |
      | geboortedatum (03.10)                              | 19391201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Hedwig' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Hedwig    |
      | geslachtsnaam (02.40)                                               | Harmsen   |
      | geboortedatum (03.10)                                               | 19700401  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 5AA0010   |
      | ingangsdatum geldigheid (85.10)                                     | 20020701  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20020701  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Hedwig' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000012 |
      | voornamen (02.10)                                             | Hedwig    |
      | geslachtsnaam (02.40)                                         | Harmsen   |
      | geboortedatum (03.10)                                         | 19700401  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | V         |
      | aktenummer (81.20)                                            | 5AB0010   |
      | ingangsdatum geldigheid (85.10)                               | 20110701  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20110701  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S         |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20181201 |
      | reden opschorting bijhouding (67.20) | E        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op een buitenlands adres met de volgende gegevens
      | naam                                   | waarde   |
      | gemeente van inschrijving (09.10)      | 1999     |
      | land (13.10)                           | 6016     |
      | datum aanvang adres buitenland (13.20) | 20181201 |
      | ingangsdatum geldigheid (85.10)        | 20181201 |
    En heeft een kind 'Hanna' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Hanna     |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Hapert    |
      | geboortedatum (03.10)           | 20101201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20101201  |
    
    # Lg01_045 - minderjarige, emigratie
    Gegeven de persoon 'Hanna' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Hanna    |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Hapert   |
      | geboortedatum (03.10)           | 20121201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20101201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Hedwig    |
      | geslachtsnaam (02.40)                              | Harmsen   |
      | geboortedatum (03.10)                              | 19700401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20101201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20101201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000048 |
      | voornamen (02.10)                                  | Hendrik   |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Hapert    |
      | geboortedatum (03.10)                              | 19620702  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20101201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20101201  |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20181201 |
      | reden opschorting bijhouding (67.20) | E        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op een buitenlands adres met de volgende gegevens
      | naam                                   | waarde   |
      | gemeente van inschrijving (09.10)      | 1999     |
      | land (13.10)                           | 6016     |
      | datum aanvang adres buitenland (13.20) | 20181201 |
      | ingangsdatum geldigheid (85.10)        | 20181201 |
    
    # Lg01_046 - actueel gehuwd en gescheiden, 1 meerderjarig kind, 1 minderjarig erkend kind
    Gegeven de persoon 'Harald' met burgerservicenummer '000000073'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Harald   |
      | geslachtsnaam (02.40)           | Hanssen  |
      | geboortedatum (03.10)           | 19640802 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Hadewich  |
      | geslachtsnaam (02.40)                              | Heijliger |
      | geboortedatum (03.10)                              | 19321101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Helmut   |
      | geslachtsnaam (02.40)                              | Hansen   |
      | geboortedatum (03.10)                              | 19310901 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Hedwig' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Hedwig    |
      | geslachtsnaam (02.40)                                               | Harmsen   |
      | geboortedatum (03.10)                                               | 19700401  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 19950601  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 19950601  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Hedwig' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000012 |
      | voornamen (02.10)                                             | Hedwig    |
      | geslachtsnaam (02.40)                                         | Harmsen   |
      | geboortedatum (03.10)                                         | 19700401  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | V         |
      | aktenummer (81.20)                                            | 3AB0100   |
      | ingangsdatum geldigheid (85.10)                               | 19980601  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 19980601  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S         |
    En heeft een partner 'Irini' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000085 |
      | voornamen (02.10)                                                   | Irini     |
      | geslachtsnaam (02.40)                                               | Iakovida  |
      | geboortedatum (03.10)                                               | 19850801  |
      | geboorteland (03.30)                                                | 6003      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20130801  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20130801  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Helena' met de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Helena   |
      | geslachtsnaam (02.40)           | Hanssen  |
      | geboortedatum (03.10)           | 19971201 |
      | geboorteland (03.30)            | 6030     |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 19971201 |
    En kind 'Helena' is gewijzigd naar de volgende gegevens
      | naam                            | waarde          |
      | burgerservicenummer (01.20)     | 999998857       |
      | voornamen (02.10)               | Helena          |
      | geslachtsnaam (02.40)           | Hanssen         |
      | geboortedatum (03.10)           | 19971201        |
      | geboorteland (03.30)            | 6030            |
      | beschrijving document (82.30)   | PL gerelateerde |
      | ingangsdatum geldigheid (85.10) | 19971210        |
    En heeft een kind 'Ioanna' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Ioanna    |
      | geslachtsnaam (02.40)           | Hanssen   |
      | geboortedatum (03.10)           | 20130501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0100   |
      | ingangsdatum geldigheid (85.10) | 20131001  |
    
    # Lg01_047 - actueel gehuwd, 1 minderjarige kind met 2 vreemde nationaliteiten, 1 minderjarig erkend kind met Nederlandse nationaliteit door erkenning
    Gegeven de persoon 'Irini' met burgerservicenummer '000000085'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Irini    |
      | geslachtsnaam (02.40)           | Iakovida |
      | geboortedatum (03.10)           | 19850801 |
      | geboorteland (03.30)            | 6003     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | pas 6003 |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde |
      | geslachtsnaam (02.40)                              | .      |
      | beschrijving document (82.30)                      | .      |
      | ingangsdatum geldigheid (85.10)                    | 0      |
      | datum ingang familierechtelijke betrekking (62.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde |
      | geslachtsnaam (02.40)                              | .      |
      | beschrijving document (82.30)                      | .      |
      | ingangsdatum geldigheid (85.10)                    | 0      |
      | datum ingang familierechtelijke betrekking (62.10) | 0      |
    En heeft een partner 'Harald' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000073 |
      | voornamen (02.10)                                                   | Harald    |
      | geslachtsnaam (02.40)                                               | Hanssen   |
      | geboortedatum (03.10)                                               | 19640802  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20130801  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20130801  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                                 | waarde   |
      | gemeente van inschrijving (09.10)    | 518      |
      | land vanwaar ingeschreven (14.10)    | 6003     |
      | datum vestiging in Nederland (14.20) | 20130101 |
      | ingangsdatum geldigheid (85.10)      | 20130101 |
    En heeft een kind 'Isidoros' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000103 |
      | voornamen (02.10)               | Isidoros  |
      | geslachtsnaam (02.40)           | Iakovidis |
      | geboortedatum (03.10)           | 20110601  |
      | geboorteland (03.30)            | 6003      |
      | beschrijving document (82.30)   | PL kind   |
      | ingangsdatum geldigheid (85.10) | 20130101  |
    En heeft een kind 'Ioanna' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Ioanna    |
      | geslachtsnaam (02.40)           | Iakovida  |
      | geboortedatum (03.10)           | 20130501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20130501  |
    En kind 'Ioanna' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Ioanna    |
      | geslachtsnaam (02.40)           | Hanssen   |
      | geboortedatum (03.10)           | 20130501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AC0100   |
      | ingangsdatum geldigheid (85.10) | 20131001  |
    
    # Lg01_048 - minderjarige, erkend, vervolgens ouders gehuwd, 2 beëindigde vreemde nationaliteiten, Nederlandse nationaliteit vanaf geboorte
    Gegeven de persoon 'Ioanna' met burgerservicenummer '000000097'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Ioanna   |
      | geslachtsnaam (02.40)           | Iakovida |
      | geboortedatum (03.10)           | 20130501 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20130501 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Ioanna    |
      | geslachtsnaam (02.40)           | Hanssen   |
      | geboortedatum (03.10)           | 20130501  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AC0100   |
      | ingangsdatum geldigheid (85.10) | 20131001  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000085 |
      | voornamen (02.10)                                  | Irini     |
      | geslachtsnaam (02.40)                              | Iakovida  |
      | geboortedatum (03.10)                              | 19850801  |
      | geboorteland (03.30)                               | 6003      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20130501  |
      | datum ingang familierechtelijke betrekking (62.10) | 20130501  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20130501 |
    En ouder 2 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000073 |
      | voornamen (02.10)                                  | Harald    |
      | geslachtsnaam (02.40)                              | Hanssen   |
      | geboortedatum (03.10)                              | 19640802  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AC0100   |
      | ingangsdatum geldigheid (85.10)                    | 20131001  |
      | datum ingang familierechtelijke betrekking (62.10) | 20131001  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20130501 |
    
    # Lg01_049 - minderjarige, juridisch geen vader, 2 vreemde nationaliteiten
    Gegeven de persoon 'Isidoros' met burgerservicenummer '000000103'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Isidoros  |
      | geslachtsnaam (02.40)           | Iakovidis |
      | geboortedatum (03.10)           | 20110601  |
      | geboorteland (03.30)            | 6003      |
      | geslachtsaanduiding (04.10)     | M         |
      | beschrijving document (82.30)   | ga 6003   |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000085 |
      | voornamen (02.10)                                  | Irini     |
      | geslachtsnaam (02.40)                              | Iakovida  |
      | geboortedatum (03.10)                              | 19850801  |
      | geboorteland (03.30)                               | 6003      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | ga 6003   |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde  |
      | beschrijving document (82.30)   | ga 6003 |
      | ingangsdatum geldigheid (85.10) | 0       |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                                 | waarde   |
      | gemeente van inschrijving (09.10)    | 518      |
      | land vanwaar ingeschreven (14.10)    | 6003     |
      | datum vestiging in Nederland (14.20) | 20130101 |
      | ingangsdatum geldigheid (85.10)      | 20130101 |


  Scenario: Lg01_041 - 2 ontbonden huwelijken, 1 ontbonden partnerschap, 1 actueel huwelijk. In eerste ontbonden huwelijk is in 2020 relatie gelegd waardoor deze 'bovenaan' ligt. Totaal 4 kinderen, waarvan 2 ouder dan 18 en 2 jonger dan 18
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Hedwig'
    Dan is het gezag over 'Hilde' gezamenlijk ouderlijk gezag met ouder 'Hedwig' en ouder 'Hessel'

  Scenario: Lg01_042 - gehuwd, 1 minderjarig kind
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Hessel'
    Dan is het gezag over 'Hilde' gezamenlijk ouderlijk gezag met ouder 'Hedwig' en ouder 'Hessel'

  Scenario: Lg01_043 - minderjarig kind uit gehuwde ouders (moeder meerdere ontbonden huwelijken)
    # Route: 49
    Als 'gezag' wordt gevraagd van 'Hilde'
    Dan is het gezag over 'Hilde' gezamenlijk ouderlijk gezag met ouder 'Hedwig' en ouder 'Hessel'

  Scenario: Lg01_044 - ontbonden partnerschap, 1 minderjarig kind, emigratie
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Hendrik'
    Dan heeft 'Hendrik' geen gezaghouder

  Scenario: Lg01_045 - minderjarige, emigratie
    # Route: 1
    Als 'gezag' wordt gevraagd van 'Hanna'
    Dan is het gezag over 'Hanna' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat minderjarige niet in Nederland woont.'

  Scenario: Lg01_046 - actueel gehuwd en gescheiden, 1 meerderjarig kind, 1 minderjarig erkend kind
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Harald'
    Dan is het gezag over 'Ioanna' gezamenlijk ouderlijk gezag met ouder 'Irini' en ouder 'Harald'

  Scenario: Lg01_047 - actueel gehuwd, 1 minderjarige kind met 2 vreemde nationaliteiten, 1 minderjarig erkend kind met Nederlandse nationaliteit door erkenning
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Irini'
    Dan is het gezag over 'Ioanna' gezamenlijk ouderlijk gezag met ouder 'Irini' en ouder 'Harald'

  Scenario: Lg01_048 - minderjarige, erkend, vervolgens ouders gehuwd, 2 beëindigde vreemde nationaliteiten, Nederlandse nationaliteit vanaf geboorte
    # Route: 49
    Als 'gezag' wordt gevraagd van 'Ioanna'
    Dan is het gezag over 'Ioanna' gezamenlijk ouderlijk gezag met ouder 'Irini' en ouder 'Harald'

  Scenario: Lg01_049 - minderjarige, juridisch geen vader, 2 vreemde nationaliteiten
    # Route: 3a
    Als 'gezag' wordt gevraagd van 'Isidoros'
    Dan is het gezag over 'Isidoros' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat minderjarige in het buitenland is geboren.'
