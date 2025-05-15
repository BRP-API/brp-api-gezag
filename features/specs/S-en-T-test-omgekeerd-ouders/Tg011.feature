#language: nl

Functionaliteit: Tg011 - Kornelissen-Krabben-Krelissen


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 21                 | 0518200000583539                           |
    Gegeven adres 'A2'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | huisletter (11.30) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 21                 | a                  | 0518200000583540                           |
    
    # Lg01_055 - 3x gehuwd (1x reparatiehuwelijk), 2x gescheiden, 5 minderjarige kinderen
    Gegeven de persoon 'Karel' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde      |
      | voornamen (02.10)               | Karel       |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 19800401    |
      | geboorteland (03.30)            | 6030        |
      | geslachtsaanduiding (04.10)     | M           |
      | beschrijving document (82.30)   | PKA         |
      | ingangsdatum geldigheid (85.10) | 0           |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde      |
      | voornamen (02.10)                                  | Kees        |
      | geslachtsnaam (02.40)                              | Kornelissen |
      | geboortedatum (03.10)                              | 19530401    |
      | geboorteland (03.30)                               | 6030        |
      | geslachtsaanduiding (04.10)                        | M           |
      | beschrijving document (82.30)                      | PK          |
      | ingangsdatum geldigheid (85.10)                    | 0           |
      | datum ingang familierechtelijke betrekking (62.10) | 0           |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Klazien  |
      | geslachtsnaam (02.40)                              | Kraan    |
      | geboortedatum (03.10)                              | 19550401 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Koosje' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Koosje    |
      | voorvoegsel (02.30)                                                 | van       |
      | geslachtsnaam (02.40)                                               | Krabben   |
      | geboortedatum (03.10)                                               | 19820401  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20110401  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20110401  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Koosje' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000024 |
      | voornamen (02.10)                                             | Koosje    |
      | voorvoegsel (02.30)                                           | van       |
      | geslachtsnaam (02.40)                                         | Krabben   |
      | geboortedatum (03.10)                                         | 19820401  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | V         |
      | aktenummer (81.20)                                            | 3AB0100   |
      | ingangsdatum geldigheid (85.10)                               | 20170401  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20170401  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S         |
    En heeft een partner 'Karolien' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000103 |
      | voornamen (02.10)                                                   | Karolien  |
      | geslachtsnaam (02.40)                                               | Kozijn    |
      | geboortedatum (03.10)                                               | 19880401  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20180401  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20180401  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Karolien' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000103 |
      | voornamen (02.10)                                             | Karolien  |
      | geslachtsnaam (02.40)                                         | Kozijn    |
      | geboortedatum (03.10)                                         | 19880401  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | V         |
      | aktenummer (81.20)                                            | 3AB0100   |
      | ingangsdatum geldigheid (85.10)                               | 20200401  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20200401  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S         |
    En heeft een partner 'Koosje' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Koosje    |
      | voorvoegsel (02.30)                                                 | van       |
      | geslachtsnaam (02.40)                                               | Krabben   |
      | geboortedatum (03.10)                                               | 19820401  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0101   |
      | ingangsdatum geldigheid (85.10)                                     | 20210401  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20210401  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Kerwin' met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000036   |
      | voornamen (02.10)               | Kerwin      |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20120401    |
      | geboorteland (03.30)            | 6030        |
      | beschrijving document (82.30)   | PL kind     |
      | ingangsdatum geldigheid (85.10) | 20120401    |
    En heeft een kind 'Kevin' met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000048   |
      | voornamen (02.10)               | Kevin       |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20130401    |
      | geboorteland (03.30)            | 6030        |
      | beschrijving document (82.30)   | PL kind     |
      | ingangsdatum geldigheid (85.10) | 20130401    |
    En heeft een kind 'Kelvin' met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000061   |
      | voornamen (02.10)               | Kelvin      |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20140401    |
      | geboorteland (03.30)            | 6030        |
      | beschrijving document (82.30)   | PL kind     |
      | ingangsdatum geldigheid (85.10) | 20140401    |
    En heeft een kind 'Kylian' met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000073   |
      | voornamen (02.10)               | Kylian      |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20150401    |
      | geboorteland (03.30)            | 6030        |
      | beschrijving document (82.30)   | PL kind     |
      | ingangsdatum geldigheid (85.10) | 20150401    |
    En heeft een kind 'Kyona' met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000115   |
      | voornamen (02.10)               | Kyona       |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20190401    |
      | geboorteland (03.30)            | 6030        |
      | aktenummer (81.20)              | 1AA0100     |
      | ingangsdatum geldigheid (85.10) | 20190401    |
    
    # Lg01_056 - 2x gehuwd (1x reparatiehuwelijk), 1x partnerschap. 1x gescheiden, 1x weduwe, 7 minderjarige kinderen waarvan 2 geboren buiten de huwelijken om
    Gegeven de persoon 'Koosje' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Koosje   |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Krabben  |
      | geboortedatum (03.10)           | 19820401 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Koert    |
      | voorvoegsel (02.30)                                | van      |
      | geslachtsnaam (02.40)                              | Krabben  |
      | geboortedatum (03.10)                              | 19530401 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Karolien |
      | geslachtsnaam (02.40)                              | Klaassen |
      | geboortedatum (03.10)                              | 19550401 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Karel' met de volgende gegevens
      | naam                                                                | waarde      |
      | burgerservicenummer (01.20)                                         | 000000012   |
      | voornamen (02.10)                                                   | Karel       |
      | geslachtsnaam (02.40)                                               | Kornelissen |
      | geboortedatum (03.10)                                               | 19800401    |
      | geboorteland (03.30)                                                | 6030        |
      | geslachtsaanduiding (04.10)                                         | M           |
      | aktenummer (81.20)                                                  | 3AA0100     |
      | ingangsdatum geldigheid (85.10)                                     | 20110401    |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20110401    |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518        |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030        |
    En partner 'Karel' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde      |
      | burgerservicenummer (01.20)                                   | 000000012   |
      | voornamen (02.10)                                             | Karel       |
      | geslachtsnaam (02.40)                                         | Kornelissen |
      | geboortedatum (03.10)                                         | 19800401    |
      | geboorteland (03.30)                                          | 6030        |
      | geslachtsaanduiding (04.10)                                   | M           |
      | aktenummer (81.20)                                            | 3AB0100     |
      | ingangsdatum geldigheid (85.10)                               | 20170401    |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20170401    |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518        |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030        |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S           |
    En heeft een partner 'Kobus' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000085 |
      | voornamen (02.10)                                                   | Kobus     |
      | geslachtsnaam (02.40)                                               | Krelissen |
      | geboortedatum (03.10)                                               | 19700401  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 5AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20190401  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20190401  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Kobus' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000085 |
      | voornamen (02.10)                                             | Kobus     |
      | geslachtsnaam (02.40)                                         | Krelissen |
      | geboortedatum (03.10)                                         | 19700401  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | M         |
      | aktenummer (81.20)                                            | 2AA0100   |
      | ingangsdatum geldigheid (85.10)                               | 20200401  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20200401  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | O         |
    En heeft een partner 'Karel' met de volgende gegevens
      | naam                                                                | waarde      |
      | burgerservicenummer (01.20)                                         | 000000012   |
      | voornamen (02.10)                                                   | Karel       |
      | geslachtsnaam (02.40)                                               | Kornelissen |
      | geboortedatum (03.10)                                               | 19800401    |
      | geboorteland (03.30)                                                | 6030        |
      | geslachtsaanduiding (04.10)                                         | M           |
      | aktenummer (81.20)                                                  | 3AA0101     |
      | ingangsdatum geldigheid (85.10)                                     | 20210401    |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20210401    |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518        |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Kerwin' met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000036   |
      | voornamen (02.10)               | Kerwin      |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20120401    |
      | geboorteland (03.30)            | 6030        |
      | beschrijving document (82.30)   | PL kind     |
      | ingangsdatum geldigheid (85.10) | 20120401    |
    En heeft een kind 'Kevin' met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000048   |
      | voornamen (02.10)               | Kevin       |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20130401    |
      | geboorteland (03.30)            | 6030        |
      | beschrijving document (82.30)   | PL kind     |
      | ingangsdatum geldigheid (85.10) | 20130401    |
    En heeft een kind 'Kelvin' met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000061   |
      | voornamen (02.10)               | Kelvin      |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20140401    |
      | geboorteland (03.30)            | 6030        |
      | beschrijving document (82.30)   | PL kind     |
      | ingangsdatum geldigheid (85.10) | 20140401    |
    En heeft een kind 'Kylian' met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000073   |
      | voornamen (02.10)               | Kylian      |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20150401    |
      | geboorteland (03.30)            | 6030        |
      | beschrijving document (82.30)   | PL kind     |
      | ingangsdatum geldigheid (85.10) | 20150401    |
    En heeft een kind 'Kaylee' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000139 |
      | voornamen (02.10)               | Kaylee    |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Krabben   |
      | geboortedatum (03.10)           | 20180401  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0199   |
      | ingangsdatum geldigheid (85.10) | 20180401  |
    En heeft een kind 'Kyra' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Kyra      |
      | geslachtsnaam (02.40)           | Krelissen |
      | geboortedatum (03.10)           | 20200301  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20200301  |
    En heeft een kind 'Karina' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000127 |
      | voornamen (02.10)               | Karina    |
      | voorvoegsel (02.30)             | van       |
      | geslachtsnaam (02.40)           | Krabben   |
      | geboortedatum (03.10)           | 20210201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0200   |
      | ingangsdatum geldigheid (85.10) | 20210201  |
    
    # Lg01_057 - onder gezag derde, geldigheid vóór scheiding ouders
    Gegeven de persoon 'Kerwin' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde      |
      | voornamen (02.10)               | Kerwin      |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20120401    |
      | geboorteland (03.30)            | 6030        |
      | geslachtsaanduiding (04.10)     | M           |
      | aktenummer (81.20)              | 1AA0100     |
      | ingangsdatum geldigheid (85.10) | 20120401    |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde      |
      | burgerservicenummer (01.20)                        | 000000012   |
      | voornamen (02.10)                                  | Karel       |
      | geslachtsnaam (02.40)                              | Kornelissen |
      | geboortedatum (03.10)                              | 19800401    |
      | geboorteland (03.30)                               | 6030        |
      | geslachtsaanduiding (04.10)                        | M           |
      | aktenummer (81.20)                                 | 1AA0100     |
      | ingangsdatum geldigheid (85.10)                    | 20120401    |
      | datum ingang familierechtelijke betrekking (62.10) | 20120401    |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Koosje    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Krabben   |
      | geboortedatum (03.10)                              | 19820401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20120401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20120401  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20120401 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | D                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20180101                    |
    
    # Lg01_058 - gezag ouder1, datum geldigheid standaardwaarde
    Gegeven de persoon 'Kevin' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde      |
      | voornamen (02.10)               | Kevin       |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20130401    |
      | geboorteland (03.30)            | 6030        |
      | geslachtsaanduiding (04.10)     | M           |
      | aktenummer (81.20)              | 1AA0101     |
      | ingangsdatum geldigheid (85.10) | 20130401    |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde      |
      | burgerservicenummer (01.20)                        | 000000012   |
      | voornamen (02.10)                                  | Karel       |
      | geslachtsnaam (02.40)                              | Kornelissen |
      | geboortedatum (03.10)                              | 19800401    |
      | geboorteland (03.30)                               | 6030        |
      | geslachtsaanduiding (04.10)                        | M           |
      | aktenummer (81.20)                                 | 1AA0101     |
      | ingangsdatum geldigheid (85.10)                    | 20130401    |
      | datum ingang familierechtelijke betrekking (62.10) | 20130401    |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Koosje    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Krabben   |
      | geboortedatum (03.10)                              | 19820401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0101   |
      | ingangsdatum geldigheid (85.10)                    | 20130401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20130401  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20130401 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 2                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 0                           |
    
    # Lg01_059 - gezag ouder2, geldigheid ná datum reparatiehuwelijk
    Gegeven de persoon 'Kelvin' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde      |
      | voornamen (02.10)               | Kelvin      |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20140401    |
      | geboorteland (03.30)            | 6030        |
      | geslachtsaanduiding (04.10)     | M           |
      | aktenummer (81.20)              | 1AA0102     |
      | ingangsdatum geldigheid (85.10) | 20140401    |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Koosje    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Krabben   |
      | geboortedatum (03.10)                              | 19820401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0102   |
      | ingangsdatum geldigheid (85.10)                    | 20140401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20140401  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde      |
      | burgerservicenummer (01.20)                        | 000000012   |
      | voornamen (02.10)                                  | Karel       |
      | geslachtsnaam (02.40)                              | Kornelissen |
      | geboortedatum (03.10)                              | 19800401    |
      | geboorteland (03.30)                               | 6030        |
      | geslachtsaanduiding (04.10)                        | M           |
      | aktenummer (81.20)                                 | 1AA0102     |
      | ingangsdatum geldigheid (85.10)                    | 20140401    |
      | datum ingang familierechtelijke betrekking (62.10) | 20140401    |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20140401 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 2                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20180101                    |
    En gezagsverhouding is gewijzigd naar de volgende gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 1                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20210420                    |
    
    # Lg01_060 - gezag ouder1, datum geldigheid vóór reparatiehuwelijk
    Gegeven de persoon 'Kylian' met burgerservicenummer '000000073'
    * heeft de volgende gegevens
      | naam                            | waarde      |
      | voornamen (02.10)               | Kylian      |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20150401    |
      | geboorteland (03.30)            | 6030        |
      | geslachtsaanduiding (04.10)     | M           |
      | aktenummer (81.20)              | 1AA0103     |
      | ingangsdatum geldigheid (85.10) | 20150401    |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Koosje    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Krabben   |
      | geboortedatum (03.10)                              | 19820401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0103   |
      | ingangsdatum geldigheid (85.10)                    | 20150401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20150401  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde      |
      | burgerservicenummer (01.20)                        | 000000012   |
      | voornamen (02.10)                                  | Karel       |
      | geslachtsnaam (02.40)                              | Kornelissen |
      | geboortedatum (03.10)                              | 19800401    |
      | geboorteland (03.30)                               | 6030        |
      | geslachtsaanduiding (04.10)                        | M           |
      | aktenummer (81.20)                                 | 1AA0103     |
      | ingangsdatum geldigheid (85.10)                    | 20150401    |
      | datum ingang familierechtelijke betrekking (62.10) | 20150401    |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20150401 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 2                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20180101                    |
    
    # Lg01_061 - partnerschap, overleden, 1 minderjarig kind
    Gegeven de persoon 'Kobus' met burgerservicenummer '000000085'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Kobus     |
      | geslachtsnaam (02.40)           | Krelissen |
      | geboortedatum (03.10)           | 19700401  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Koba      |
      | geslachtsnaam (02.40)                              | Krelissen |
      | geboortedatum (03.10)                              | 19401201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Koosje' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Koosje    |
      | voorvoegsel (02.30)                                                 | van       |
      | geslachtsnaam (02.40)                                               | Krabben   |
      | geboortedatum (03.10)                                               | 19820401  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 5AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20190401  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20190401  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20200401 |
      | aktenummer (81.20)              | 2AA0100  |
      | ingangsdatum geldigheid (85.10) | 20200401 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20200401 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Kyra' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000097 |
      | voornamen (02.10)               | Kyra      |
      | geslachtsnaam (02.40)           | Krelissen |
      | geboortedatum (03.10)           | 20200301  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20200301  |
    
    # Lg01_062 - vader overleden, moeder gezag van rechtswege
    Gegeven de persoon 'Kyra' met burgerservicenummer '000000097'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Kyra      |
      | geslachtsnaam (02.40)           | Krelissen |
      | geboortedatum (03.10)           | 20200301  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20200301  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Koosje    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Krabben   |
      | geboortedatum (03.10)                              | 19820401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20200301  |
      | datum ingang familierechtelijke betrekking (62.10) | 20200301  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000085 |
      | voornamen (02.10)                                  | Kobus     |
      | geslachtsnaam (02.40)                              | Krelissen |
      | geboortedatum (03.10)                              | 19700401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20200301  |
      | datum ingang familierechtelijke betrekking (62.10) | 20200301  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20200301 |
    
    # Lg01_063 - gescheiden, 1 minderjarig kind
    Gegeven de persoon 'Karolien' met burgerservicenummer '000000103'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Karolien |
      | geslachtsnaam (02.40)           | Kozijn   |
      | geboortedatum (03.10)           | 19880401 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Kaat     |
      | geslachtsnaam (02.40)                              | Kozijn   |
      | geboortedatum (03.10)                              | 19600401 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een partner 'Karel' met de volgende gegevens
      | naam                                                                | waarde      |
      | burgerservicenummer (01.20)                                         | 000000012   |
      | voornamen (02.10)                                                   | Karel       |
      | geslachtsnaam (02.40)                                               | Kornelissen |
      | geboortedatum (03.10)                                               | 19800401    |
      | geboorteland (03.30)                                                | 6030        |
      | geslachtsaanduiding (04.10)                                         | M           |
      | aktenummer (81.20)                                                  | 3AA0100     |
      | ingangsdatum geldigheid (85.10)                                     | 20180401    |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20180401    |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518        |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030        |
    En partner 'Karel' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde      |
      | burgerservicenummer (01.20)                                   | 000000012   |
      | voornamen (02.10)                                             | Karel       |
      | geslachtsnaam (02.40)                                         | Kornelissen |
      | geboortedatum (03.10)                                         | 19800401    |
      | geboorteland (03.30)                                          | 6030        |
      | geslachtsaanduiding (04.10)                                   | M           |
      | aktenummer (81.20)                                            | 3AB0100     |
      | ingangsdatum geldigheid (85.10)                               | 20200401    |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20200401    |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518        |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030        |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | S           |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Kyona' met de volgende gegevens
      | naam                            | waarde      |
      | burgerservicenummer (01.20)     | 000000115   |
      | voornamen (02.10)               | Kyona       |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20190401    |
      | geboorteland (03.30)            | 6030        |
      | aktenummer (81.20)              | 1AA0100     |
      | ingangsdatum geldigheid (85.10) | 20190401    |
    
    # Lg01_064 - ouders gescheiden, moeder gezag vóór scheiding
    Gegeven de persoon 'Kyona' met burgerservicenummer '000000115'
    * heeft de volgende gegevens
      | naam                            | waarde      |
      | voornamen (02.10)               | Kyona       |
      | geslachtsnaam (02.40)           | Kornelissen |
      | geboortedatum (03.10)           | 20190401    |
      | geboorteland (03.30)            | 6030        |
      | geslachtsaanduiding (04.10)     | V           |
      | aktenummer (81.20)              | 1AA0100     |
      | ingangsdatum geldigheid (85.10) | 20190401    |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000103 |
      | voornamen (02.10)                                  | Karolien  |
      | geslachtsnaam (02.40)                              | Kozijn    |
      | geboortedatum (03.10)                              | 19880401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20190401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20190401  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde      |
      | burgerservicenummer (01.20)                        | 000000012   |
      | voornamen (02.10)                                  | Karel       |
      | geslachtsnaam (02.40)                              | Kornelissen |
      | geboortedatum (03.10)                              | 19800401    |
      | geboorteland (03.30)                               | 6030        |
      | geslachtsaanduiding (04.10)                        | M           |
      | aktenummer (81.20)                                 | 1AA0100     |
      | ingangsdatum geldigheid (85.10)                    | 20190401    |
      | datum ingang familierechtelijke betrekking (62.10) | 20190401    |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20190401 |
    En heeft gezagsverhouding met de volgende gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 1                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20191201                    |
    
    # Lg01_207 - geboren tussen verschillende (ontbonden) huwelijken moeder, juridisch 1 ouder. Moeder in categorie 02
    Gegeven de persoon 'Karina' met burgerservicenummer '000000127'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Karina   |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Krabben  |
      | geboortedatum (03.10)           | 20210201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0200  |
      | ingangsdatum geldigheid (85.10) | 20210201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0200  |
      | ingangsdatum geldigheid (85.10) | 20210201 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Koosje    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Krabben   |
      | geboortedatum (03.10)                              | 19820401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0200   |
      | ingangsdatum geldigheid (85.10)                    | 20210201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20210201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20210201 |
    
    # Lg01_208 - geboren tussen verschillende (ontbonden) huwelijken moeder, juridisch 1 ouder. Moeder in categorie 03
    Gegeven de persoon 'Kaylee' met burgerservicenummer '000000139'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Kaylee   |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Krabben  |
      | geboortedatum (03.10)           | 20180401 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0199  |
      | ingangsdatum geldigheid (85.10) | 20180401 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Koosje    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Krabben   |
      | geboortedatum (03.10)                              | 19820401  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0199   |
      | ingangsdatum geldigheid (85.10)                    | 20180401  |
      | datum ingang familierechtelijke betrekking (62.10) | 20180401  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0199  |
      | ingangsdatum geldigheid (85.10) | 20180401 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20180401 |


  Scenario: Lg01_055 - 3x gehuwd (1x reparatiehuwelijk), 2x gescheiden, 5 minderjarige kinderen
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Karel'
    Dan is het gezag over 'Kylian' gezamenlijk ouderlijk gezag met ouder 'Koosje' en ouder 'Karel'

  Scenario: Lg01_056 - 2x gehuwd (1x reparatiehuwelijk), 1x partnerschap. 1x gescheiden, 1x weduwe, 7 minderjarige kinderen waarvan 2 geboren buiten de huwelijken om
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Koosje'
    Dan is het gezag over 'Kelvin' eenhoofdig ouderlijk gezag met ouder 'Koosje'
    Dan is het gezag over 'Kylian' gezamenlijk ouderlijk gezag met ouder 'Koosje' en ouder 'Karel'
    Dan is het gezag over 'Kyra' eenhoofdig ouderlijk gezag met ouder 'Koosje'
    Dan is het gezag over 'Karina' eenhoofdig ouderlijk gezag met ouder 'Koosje'
    Dan is het gezag over 'Kaylee' eenhoofdig ouderlijk gezag met ouder 'Koosje'

  Scenario: Lg01_057 - onder gezag derde, geldigheid vóór scheiding ouders
    # Route: 6
    Als 'gezag' wordt gevraagd van 'Kerwin'
    Dan is het gezag over 'Kerwin' voogdij

  Scenario: Lg01_058 - gezag ouder1, datum geldigheid standaardwaarde
    # Route: 4ee
    Als 'gezag' wordt gevraagd van 'Kevin'
    Dan is het gezag over 'Kevin' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat relevante gegevens ontbreken. Het gaat om de volgende gegevens: ingangsdatum geldigheid van gezagsverhouding'

  Scenario: Lg01_059 - gezag ouder2, geldigheid ná datum reparatiehuwelijk
    # Route: 13
    Als 'gezag' wordt gevraagd van 'Kelvin'
    Dan is het gezag over 'Kelvin' eenhoofdig ouderlijk gezag met ouder 'Koosje'

  Scenario: Lg01_060 - gezag ouder1, datum geldigheid vóór reparatiehuwelijk
    # Route: 27
    Als 'gezag' wordt gevraagd van 'Kylian'
    Dan is het gezag over 'Kylian' gezamenlijk ouderlijk gezag met ouder 'Koosje' en ouder 'Karel'

  Scenario: Lg01_061 - partnerschap, overleden, 1 minderjarig kind
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Kobus'
    Dan heeft 'Kobus' geen gezaghouder

  Scenario: Lg01_062 - vader overleden, moeder gezag van rechtswege
    # Route: 46
    Als 'gezag' wordt gevraagd van 'Kyra'
    Dan is het gezag over 'Kyra' eenhoofdig ouderlijk gezag met ouder 'Koosje'

  Scenario: Lg01_063 - gescheiden, 1 minderjarig kind
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Karolien'
    Dan is het gezag over 'Kyona' eenhoofdig ouderlijk gezag met ouder 'Karolien'

  Scenario: Lg01_064 - ouders gescheiden, moeder gezag vóór scheiding
    # Route: 13
    Als 'gezag' wordt gevraagd van 'Kyona'
    Dan is het gezag over 'Kyona' eenhoofdig ouderlijk gezag met ouder 'Karolien'

  Scenario: Lg01_207 - geboren tussen verschillende (ontbonden) huwelijken moeder, juridisch 1 ouder. Moeder in categorie 02
    # Route: 40o1
    Als 'gezag' wordt gevraagd van 'Karina'
    Dan is het gezag over 'Karina' eenhoofdig ouderlijk gezag met ouder 'Koosje'

  Scenario: Lg01_208 - geboren tussen verschillende (ontbonden) huwelijken moeder, juridisch 1 ouder. Moeder in categorie 03
    # Route: 40o2
    Als 'gezag' wordt gevraagd van 'Kaylee'
    Dan is het gezag over 'Kaylee' eenhoofdig ouderlijk gezag met ouder 'Koosje'
