#language: nl

@deprecated @gezag-api
Functionaliteit: Tg004 - Custers - Bij geboorte minderjarige moeders


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 5                  | 0518200000583529                           |
    
    # Lg01_013 - ongehuwde minderjarige moeder met 1 minderjarig niet erkend kind
    Gegeven de persoon 'Cindy' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde           |
      | voornamen (02.10)               | Cindy            |
      | geslachtsnaam (02.40)           | Custers          |
      | geboortedatum (03.10)           | morgen - 18 jaar |
      | geboorteland (03.30)            | 6030             |
      | geslachtsaanduiding (04.10)     | V                |
      | aktenummer (81.20)              | 1AA0100          |
      | ingangsdatum geldigheid (85.10) | morgen - 18 jaar |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde                         |
      | burgerservicenummer (01.20)     | 000000012                      |
      | voornamen (02.10)               | Cindy                          |
      | geslachtsnaam (02.40)           | Custers                        |
      | geboortedatum (03.10)           | morgen - 18 jaar               |
      | geboorteland (03.30)            | 6030                           |
      | geslachtsaanduiding (04.10)     | V                              |
      | beschrijving document (82.30)   | Melding Minister van Financiën |
      | ingangsdatum geldigheid (85.10) | 20060410                       |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde           |
      | aktenummer (81.20)              | 1AA0100          |
      | ingangsdatum geldigheid (85.10) | morgen - 18 jaar |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde           |
      | voornamen (02.10)                                  | Carola           |
      | geslachtsnaam (02.40)                              | Custers          |
      | geboortedatum (03.10)                              | 19840401         |
      | geboorteland (03.30)                               | 6030             |
      | geslachtsaanduiding (04.10)                        | V                |
      | aktenummer (81.20)                                 | 1AA0100          |
      | ingangsdatum geldigheid (85.10)                    | morgen - 18 jaar |
      | datum ingang familierechtelijke betrekking (62.10) | morgen - 18 jaar |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Chrissy' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000024 |
      | voornamen (02.10)               | Chrissy   |
      | geslachtsnaam (02.40)           | Custers   |
      | geboortedatum (03.10)           | 20210401  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20210401  |
    
    # Lg01_014 - minderjarig niet erkend kind, moeder ook minderjarig, geen categorie 11
    Gegeven de persoon 'Chrissy' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Chrissy  |
      | geslachtsnaam (02.40)           | Custers  |
      | geboortedatum (03.10)           | 20210401 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20210401 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20210401 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde           |
      | burgerservicenummer (01.20)                        | 000000012        |
      | voornamen (02.10)                                  | Cindy            |
      | geslachtsnaam (02.40)                              | Custers          |
      | geboortedatum (03.10)                              | morgen - 18 jaar |
      | geboorteland (03.30)                               | 6030             |
      | geslachtsaanduiding (04.10)                        | V                |
      | aktenummer (81.20)                                 | 1AA0100          |
      | ingangsdatum geldigheid (85.10)                    | 20210401         |
      | datum ingang familierechtelijke betrekking (62.10) | 20210401         |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20210401 |
    
    # Lg01_015 - ongehuwde meerderjarige moeder met 1 minderjarig niet-erkend kind,bij geboorte minderjarig inmiddels meerderjarig
    Gegeven de persoon 'Carice' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Carice   |
      | geslachtsnaam (02.40)           | Custers  |
      | geboortedatum (03.10)           | 20020501 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20020501 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde                         |
      | burgerservicenummer (01.20)     | 000000036                      |
      | voornamen (02.10)               | Carice                         |
      | geslachtsnaam (02.40)           | Custers                        |
      | geboortedatum (03.10)           | 20020501                       |
      | geboorteland (03.30)            | 6030                           |
      | geslachtsaanduiding (04.10)     | V                              |
      | beschrijving document (82.30)   | Melding Minister van Financiën |
      | ingangsdatum geldigheid (85.10) | 20020510                       |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20020501 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Carola   |
      | geslachtsnaam (02.40)                              | Custers  |
      | geboortedatum (03.10)                              | 19840401 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | aktenummer (81.20)                                 | 1AA0100  |
      | ingangsdatum geldigheid (85.10)                    | 20020501 |
      | datum ingang familierechtelijke betrekking (62.10) | 20020501 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Carlijn' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Carlijn   |
      | geslachtsnaam (02.40)           | Custers   |
      | geboortedatum (03.10)           | 20190501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20190501  |
    
    # Lg01_016 - minderjarig niet erkend kind, moeder minderjarig, bij geboorte, inmiddels meerderjarig, geen categorie 11
    Gegeven de persoon 'Carlijn' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Carlijn  |
      | geslachtsnaam (02.40)           | Custers  |
      | geboortedatum (03.10)           | 20190501 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20190501 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20190501 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000036 |
      | voornamen (02.10)                                  | Carice    |
      | geslachtsnaam (02.40)                              | Custers   |
      | geboortedatum (03.10)                              | 20020501  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20190501  |
      | datum ingang familierechtelijke betrekking (62.10) | 20190501  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20190501 |


  Scenario: Lg01_013 - ongehuwde minderjarige moeder met 1 minderjarig niet erkend kind
    # Route: 39e
    Als 'gezag' wordt gevraagd van 'Cindy'
    Dan is het gezag over 'Cindy' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat relevante gegevens ontbreken bij het bepalen van het huwelijk/partnerschap van de ouder(s). Het gaat om de volgende gegevens: ouder2 van bevraagde persoon is niet in BRP geregistreerd'

  Scenario: Lg01_014 - minderjarig niet erkend kind, moeder ook minderjarig, geen categorie 11
    # Route: 39m
    Als 'gezag' wordt gevraagd van 'Chrissy'
    Dan is het gezag over 'Chrissy' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'

  Scenario: Lg01_015 - ongehuwde meerderjarige moeder met 1 minderjarig niet-erkend kind,bij geboorte minderjarig inmiddels meerderjarig
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Carice'
    Dan heeft 'Carice' de volgende gezagsrelaties
    * is het gezag over 'Carlijn' eenhoofdig ouderlijk gezag met ouder 'Carice'

  Scenario: Lg01_016 - minderjarig niet erkend kind, moeder minderjarig, bij geboorte, inmiddels meerderjarig, geen categorie 11
    # Route: 40o1
    Als 'gezag' wordt gevraagd van 'Carlijn'
    Dan is het gezag over 'Carlijn' eenhoofdig ouderlijk gezag met ouder 'Carice'
