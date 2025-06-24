#language: nl

@deprecated @gezag-api
Functionaliteit: Tg035 - Saasveld-Suijdema - Vanuit gezamenlijk gezag komt moeder te overlijden


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 77                 | 0518200000583569                           |
    
    # Lg01_185 - 1 ouder, moeder gehuwd,moeder alleen gezag, moeder overleden
    Gegeven de persoon 'Simone' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Simone   |
      | geslachtsnaam (02.40)           | Saasveld |
      | geboortedatum (03.10)           | 19981201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0202  |
      | ingangsdatum geldigheid (85.10) | 19981201 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde                         |
      | burgerservicenummer (01.20)     | 000000012                      |
      | voornamen (02.10)               | Simone                         |
      | geslachtsnaam (02.40)           | Saasveld                       |
      | geboortedatum (03.10)           | 19981201                       |
      | geboorteland (03.30)            | 6030                           |
      | geslachtsaanduiding (04.10)     | V                              |
      | beschrijving document (82.30)   | Melding Minister van Financien |
      | ingangsdatum geldigheid (85.10) | 19981212                       |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Sarina   |
      | geslachtsnaam (02.40)                              | Saasveld |
      | geboortedatum (03.10)                              | 19700201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | aktenummer (81.20)                                 | 1AA0202  |
      | ingangsdatum geldigheid (85.10)                    | 19981201 |
      | datum ingang familierechtelijke betrekking (62.10) | 19981201 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0202  |
      | ingangsdatum geldigheid (85.10) | 19981201 |
    En heeft een partner 'Saskia-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Saskia    |
      | geslachtsnaam (02.40)                                               | Suijdema  |
      | geboortedatum (03.10)                                               | 19890401  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0101   |
      | ingangsdatum geldigheid (85.10)                                     | 20170101  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20170101  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20200801 |
      | aktenummer (81.20)              | 2AA0100  |
      | ingangsdatum geldigheid (85.10) | 20200801 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20200801 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Sanne' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Sanne     |
      | geslachtsnaam (02.40)           | Saasveld  |
      | geboortedatum (03.10)           | 20181201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0110   |
      | ingangsdatum geldigheid (85.10) | 20181201  |
    
    # Lg01_186 - huwelijkspartner van vrouw, van rechtswege gezag
    Gegeven de persoon 'Saskia' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Saskia   |
      | geslachtsnaam (02.40)           | Suijdema |
      | geboortedatum (03.10)           | 19890401 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Suus     |
      | geslachtsnaam (02.40)                              | Suijdema |
      | geboortedatum (03.10)                              | 19650901 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En heeft een partner 'Simone-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Simone    |
      | geslachtsnaam (02.40)                                               | Saasveld  |
      | geboortedatum (03.10)                                               | 19981201  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0101   |
      | ingangsdatum geldigheid (85.10)                                     | 20170101  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20170101  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_187 - 1 ouder, moeder gehuwd, meemoeder geen ouder, moeder overleden
    Gegeven de persoon 'Sanne' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Sanne    |
      | geslachtsnaam (02.40)           | Saasveld |
      | geboortedatum (03.10)           | 20181201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0110  |
      | ingangsdatum geldigheid (85.10) | 20181201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Simone    |
      | geslachtsnaam (02.40)                              | Saasveld  |
      | geboortedatum (03.10)                              | 19981201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0110   |
      | ingangsdatum geldigheid (85.10)                    | 20181201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20181201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0110  |
      | ingangsdatum geldigheid (85.10) | 20181201 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20181201 |


  Scenario: Lg01_185 - 1 ouder, moeder gehuwd,moeder alleen gezag, moeder overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Simone'
    Dan heeft 'Simone' geen gezaghouder

  Scenario: Lg01_186 - huwelijkspartner van vrouw, van rechtswege gezag
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Saskia'
    Dan heeft 'Saskia' de volgende gezagsrelaties
    * is het gezag over 'Sanne' voogdij met derde 'Saskia'

  Scenario: Lg01_187 - 1 ouder, moeder gehuwd, meemoeder geen ouder, moeder overleden
    # Route: 43o1
    Als 'gezag' wordt gevraagd van 'Sanne'
    Dan is het gezag over 'Sanne' voogdij met derde 'Saskia'
