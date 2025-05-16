#language: nl

Functionaliteit: Tg037 - Reijmersma-Rozenburg - Ouders met een vernietigd huwelijk en 1 kind geboren binnen dit huwelijk


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 75                 | 0518200000583568                           |
    
    # Lg01_200 - gehuwd, kind geboren tijdens huwelijk, huwelijk nadien nietig (gecorrigeerd), kind eveneens gecorrigeerd
    Gegeven de persoon 'Richard' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Richard    |
      | geslachtsnaam (02.40)           | Reijmersma |
      | geboortedatum (03.10)           | 19800901   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | M          |
      | beschrijving document (82.30)   | PKA        |
      | ingangsdatum geldigheid (85.10) | 0          |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Roeltje  |
      | voorvoegsel (02.30)                                | van      |
      | geslachtsnaam (02.40)                              | Rooijen  |
      | geboortedatum (03.10)                              | 19580301 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Reijer    |
      | geslachtsnaam (02.40)                              | Reimersma |
      | geboortedatum (03.10)                              | 19520901  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Ria' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Ria       |
      | geslachtsnaam (02.40)                                               | Rozenburg |
      | geboortedatum (03.10)                                               | 19781201  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20081201  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20081201  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Ria' is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde          |
      | beschrijving document (82.30)   | nietig huwelijk |
      | ingangsdatum geldigheid (85.10) | 20081201        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Ronny' met de volgende gegevens
      | naam                            | waarde     |
      | burgerservicenummer (01.20)     | 000000036  |
      | voornamen (02.10)               | Ronny      |
      | geslachtsnaam (02.40)           | Reijmersma |
      | geboortedatum (03.10)           | 20090801   |
      | geboorteland (03.30)            | 6030       |
      | aktenummer (81.20)              | 1AA0150    |
      | ingangsdatum geldigheid (85.10) | 20090801   |
    En kind 'Ronny' is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0150  |
      | ingangsdatum geldigheid (85.10) | 20090801 |
    
    # Lg01_201 - gehuwd, kind geboren tijdens huwelijk, huwelijk nadien nietig (gecorrigeerd)
    Gegeven de persoon 'Ria' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Ria       |
      | geslachtsnaam (02.40)           | Rozenburg |
      | geboortedatum (03.10)           | 19781201  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Raghnild |
      | voorvoegsel (02.30)                                | de       |
      | geslachtsnaam (02.40)                              | Roo      |
      | geboortedatum (03.10)                              | 19560401 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Rollo     |
      | geslachtsnaam (02.40)                              | Rozenburg |
      | geboortedatum (03.10)                              | 19510201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Richard' met de volgende gegevens
      | naam                                                                | waarde     |
      | burgerservicenummer (01.20)                                         | 000000012  |
      | voornamen (02.10)                                                   | Richard    |
      | geslachtsnaam (02.40)                                               | Reijmersma |
      | geboortedatum (03.10)                                               | 19800901   |
      | geboorteland (03.30)                                                | 6030       |
      | geslachtsaanduiding (04.10)                                         | M          |
      | aktenummer (81.20)                                                  | 3AA0100    |
      | ingangsdatum geldigheid (85.10)                                     | 20081201   |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20081201   |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518       |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030       |
    En partner 'Richard' is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde          |
      | beschrijving document (82.30)   | nietig huwelijk |
      | ingangsdatum geldigheid (85.10) | 20081201        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Ronny' met de volgende gegevens
      | naam                            | waarde     |
      | burgerservicenummer (01.20)     | 000000036  |
      | voornamen (02.10)               | Ronny      |
      | geslachtsnaam (02.40)           | Reijmersma |
      | geboortedatum (03.10)           | 20090801   |
      | geboorteland (03.30)            | 6030       |
      | aktenummer (81.20)              | 1AA0150    |
      | ingangsdatum geldigheid (85.10) | 20090801   |
    En kind 'Ronny' is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Ronny     |
      | geslachtsnaam (02.40)           | Rozenburg |
      | geboortedatum (03.10)           | 20090801  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0150   |
      | ingangsdatum geldigheid (85.10) | 20090801  |
    
    # Lg01_202 - geboren tijdens huwelijk ouders, huwelijk ouders nietig, categorie 03 aangepast in juridisch geen ouder
    Gegeven de persoon 'Ronny' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde     |
      | voornamen (02.10)               | Ronny      |
      | geslachtsnaam (02.40)           | Reijmersma |
      | geboortedatum (03.10)           | 20090801   |
      | geboorteland (03.30)            | 6030       |
      | geslachtsaanduiding (04.10)     | M          |
      | aktenummer (81.20)              | 1AA0150    |
      | ingangsdatum geldigheid (85.10) | 20090801   |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Ronny     |
      | geslachtsnaam (02.40)           | Rozenburg |
      | geboortedatum (03.10)           | 20090801  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AA0150   |
      | ingangsdatum geldigheid (85.10) | 20090801  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Ria       |
      | geslachtsnaam (02.40)                              | Rozenburg |
      | geboortedatum (03.10)                              | 19781201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0150   |
      | ingangsdatum geldigheid (85.10)                    | 20090801  |
      | datum ingang familierechtelijke betrekking (62.10) | 20090801  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde     |
      | burgerservicenummer (01.20)                        | 000000012  |
      | voornamen (02.10)                                  | Richard    |
      | geslachtsnaam (02.40)                              | Reijmersma |
      | geboortedatum (03.10)                              | 19800901   |
      | geboorteland (03.30)                               | 6030       |
      | geslachtsaanduiding (04.10)                        | M          |
      | aktenummer (81.20)                                 | 1AA0150    |
      | ingangsdatum geldigheid (85.10)                    | 20090801   |
      | datum ingang familierechtelijke betrekking (62.10) | 20090801   |
    En ouder 2 is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0150  |
      | ingangsdatum geldigheid (85.10) | 20090801 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |


  Scenario: Lg01_200 - gehuwd, kind geboren tijdens huwelijk, huwelijk nadien nietig (gecorrigeerd), kind eveneens gecorrigeerd
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Richard'
    Dan heeft 'Richard' geen gezaghouder

  Scenario: Lg01_201 - gehuwd, kind geboren tijdens huwelijk, huwelijk nadien nietig (gecorrigeerd)
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Ria'
    Dan is het gezag over 'Ronny' eenhoofdig ouderlijk gezag met ouder 'Ria'

  Scenario: Lg01_202 - geboren tijdens huwelijk ouders, huwelijk ouders nietig, categorie 03 aangepast in juridisch geen ouder
    # Route: 40o1
    Als 'gezag' wordt gevraagd van 'Ronny'
    Dan is het gezag over 'Ronny' eenhoofdig ouderlijk gezag met ouder 'Ria'
