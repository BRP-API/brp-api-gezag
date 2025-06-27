#language: nl

@deprecated @gezag-api
Functionaliteit: Tg034 - Ruijgrok-Rademaker – Twee gehuwde vrouwen met 2 kinderen, moeder onder curatele


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 75                 | 0518200000583568                           |
    
    # Lg01_181 - vrouw gehuwd met vrouw, 1 kind (bekende donor) huwelijkspartner geen meemoeder kind, onder curatele
    Gegeven de persoon 'Ria' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Ria      |
      | geslachtsnaam (02.40)           | Ruijgrok |
      | geboortedatum (03.10)           | 19981201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0201  |
      | ingangsdatum geldigheid (85.10) | 19981291 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde                         |
      | burgerservicenummer (01.20)     | 000000012                      |
      | voornamen (02.10)               | Ria                            |
      | geslachtsnaam (02.40)           | Ruijgrok                       |
      | geboortedatum (03.10)           | 19981201                       |
      | geboorteland (03.30)            | 6030                           |
      | geslachtsaanduiding (04.10)     | V                              |
      | beschrijving document (82.30)   | Melding Minister van Financien |
      | ingangsdatum geldigheid (85.10) | 19981212                       |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0201  |
      | ingangsdatum geldigheid (85.10) | 19981201 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Rhena    |
      | geslachtsnaam (02.40)                              | Ruijgrok |
      | geboortedatum (03.10)                              | 19700201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | aktenummer (81.20)                                 | 1AA0201  |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 19981201 |
      | datum ingang familierechtelijke betrekking (62.10) | 19981201 |
    En heeft een partner 'Rowena-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000024 |
      | voornamen (02.10)                                                   | Rowena    |
      | geslachtsnaam (02.40)                                               | Rademaker |
      | geboortedatum (03.10)                                               | 19890401  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 5AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20170101  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20170101  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Rex' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Rex       |
      | geslachtsnaam (02.40)           | Ruijgrok  |
      | geboortedatum (03.10)           | 20181201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0101   |
      | ingangsdatum geldigheid (85.10) | 20181201  |
    En heeft een kind 'Rollo' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Rollo     |
      | geslachtsnaam (02.40)           | Ruijgrok  |
      | geboortedatum (03.10)           | 20181201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20181201  |
    En heeft de volgende gezagsverhouding gegevens
      | naam                               | waarde                        |
      | indicatie curateleregister (33.10) | 1                             |
      | beschrijving document (82.30)      | kennisgeving curateleregister |
      | ingangsdatum geldigheid (85.10)    | 20200202                      |
    
    # Lg01_182 - huwelijkspartner van vrouw geen meemoeder van kind, eenhoofdig gezag (moeder onder curatele)
    Gegeven de persoon 'Rowena' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Rowena    |
      | geslachtsnaam (02.40)           | Rademaker |
      | geboortedatum (03.10)           | 19890401  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | V         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde |
      | beschrijving document (82.30)   | PK     |
      | ingangsdatum geldigheid (85.10) | 0      |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Roeltje   |
      | geslachtsnaam (02.40)                              | Rademaker |
      | geboortedatum (03.10)                              | 19650901  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Ria-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000012 |
      | voornamen (02.10)                                                   | Ria       |
      | geslachtsnaam (02.40)                                               | Ruijgrok  |
      | geboortedatum (03.10)                                               | 19981201  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 5AA0100   |
      | ingangsdatum geldigheid (85.10)                                     | 20170101  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20170101  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    
    # Lg01_183 - 1 ouder, moeder gehuwd, huwelijkspartner moeder alleen gezag (moeder onder curatele)
    Gegeven de persoon 'Rollo' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Rollo    |
      | geslachtsnaam (02.40)           | Ruijgrok |
      | geboortedatum (03.10)           | 20181201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20181201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20181201 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Ria       |
      | geslachtsnaam (02.40)                              | Ruijgrok  |
      | geboortedatum (03.10)                              | 19981201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20181201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20181201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20181201 |
    
    # Lg01_184 - 1 ouder, moeder gehuwd, huwelijkspartner moeder geen gezag (moeder onder curatele, indicatie gezag 1
    Gegeven de persoon 'Rex' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Rex      |
      | geslachtsnaam (02.40)           | Ruijgrok |
      | geboortedatum (03.10)           | 20181201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0101  |
      | ingangsdatum geldigheid (85.10) | 20181201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0101  |
      | ingangsdatum geldigheid (85.10) | 20181201 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Ria       |
      | geslachtsnaam (02.40)                              | Ruijgrok  |
      | geboortedatum (03.10)                              | 19981201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0101   |
      | ingangsdatum geldigheid (85.10)                    | 20181201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20181201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20181201 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 2D                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20190101                    |
    En gezagsverhouding is gewijzigd naar de volgende gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 2                           |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20190202                    |


  Scenario: Lg01_181 - vrouw gehuwd met vrouw, 1 kind (bekende donor) huwelijkspartner geen meemoeder kind, onder curatele
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Ria'
    Dan heeft 'Ria' geen gezaghouder

  Scenario: Lg01_182 - huwelijkspartner van vrouw geen meemoeder van kind, eenhoofdig gezag (moeder onder curatele)
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Rowena'
    Dan heeft 'Rowena' de volgende gezagsrelaties
    * is het gezag over 'Rollo' voogdij met derde 'Rowena'

  Scenario: Lg01_183 - 1 ouder, moeder gehuwd, huwelijkspartner moeder alleen gezag (moeder onder curatele)
    # Route: 43o1
    Als 'gezag' wordt gevraagd van 'Rollo'
    Dan is het gezag over 'Rollo' voogdij met derde 'Rowena'

  Scenario: Lg01_184 - 1 ouder, moeder gehuwd, huwelijkspartner moeder geen gezag (moeder onder curatele, indicatie gezag 1
    # Route: 12c
    Als 'gezag' wordt gevraagd van 'Rex'
    Dan is het gezag over 'Rex' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder onder curatele staat.'
