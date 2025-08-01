#language: nl

@gezag-api
Functionaliteit: Tg032 - Oostingh - Alleen maar minderjarigen incl. moeder


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 71                 | 0518200000583566                           |

    Gegeven de persoon 'Ophelia' zonder burgerservicenummer heeft de volgende gegevens
      | naam                                               | waarde           |
      | voornamen (02.10)                                  | Ophelia          |
      | geslachtsnaam (02.40)                              | Oostingh         |
      | geboortedatum (03.10)                              | 19901201         |
      | geslachtsaanduiding (04.10)                        | V                |
    
    # Lg01_173 - minderjarige moeder, gezag niet te bepalen BSN moeder ontbreekt
    Gegeven de persoon 'Olga' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde           |
      | voornamen (02.10)               | Olga             |
      | geslachtsnaam (02.40)           | Oostingh         |
      | geboortedatum (03.10)           | morgen - 18 jaar |
      | geboorteland (03.30)            | 6030             |
      | geslachtsaanduiding (04.10)     | V                |
      | aktenummer (81.20)              | 1AA0001          |
      | ingangsdatum geldigheid (85.10) | morgen - 18 jaar |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde           |
      | voornamen (02.10)                                  | Ophelia          |
      | geslachtsnaam (02.40)                              | Oostingh         |
      | geboortedatum (03.10)                              | 19901201         |
      | geboorteland (03.30)                               | 6030             |
      | geslachtsaanduiding (04.10)                        | V                |
      | aktenummer (81.20)                                 | 1AA0001          |
      | ingangsdatum geldigheid (85.10)                    | morgen - 18 jaar |
      | datum ingang familierechtelijke betrekking (62.10) | morgen - 18 jaar |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde           |
      | aktenummer (81.20)              | 1AA0001          |
      | ingangsdatum geldigheid (85.10) | morgen - 18 jaar |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde           |
      | gemeente van inschrijving (09.10) | 518              |
      | ingangsdatum geldigheid (85.10)   | morgen - 18 jaar |
    En heeft een kind 'Onne' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Onne      |
      | geslachtsnaam (02.40)           | Oostingh  |
      | geboortedatum (03.10)           | 20220202  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0011   |
      | ingangsdatum geldigheid (85.10) | 20220202  |
    En heeft een kind 'Olle' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000024 |
      | voornamen (02.10)               | Olle      |
      | geslachtsnaam (02.40)           | Oostingh  |
      | geboortedatum (03.10)           | 20220202  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0010   |
      | ingangsdatum geldigheid (85.10) | 20220202  |
    
    # Lg01_174 - minderjarige moeder, geen categorie 11
    Gegeven de persoon 'Olle' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Olle     |
      | geslachtsnaam (02.40)           | Oostingh |
      | geboortedatum (03.10)           | 20220202 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0010  |
      | ingangsdatum geldigheid (85.10) | 20220202 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde           |
      | burgerservicenummer (01.20)                        | 000000012        |
      | voornamen (02.10)                                  | Olga             |
      | geslachtsnaam (02.40)                              | Oostingh         |
      | geboortedatum (03.10)                              | morgen - 18 jaar |
      | geboorteland (03.30)                               | 6030             |
      | geslachtsaanduiding (04.10)                        | V                |
      | aktenummer (81.20)                                 | 1AA0010          |
      | ingangsdatum geldigheid (85.10)                    | 20220202         |
      | datum ingang familierechtelijke betrekking (62.10) | 20220202         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0010  |
      | ingangsdatum geldigheid (85.10) | 20220202 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20220202 |
    
    # Lg01_175 - minderjarige moeder, wel categorie 11
    Gegeven de persoon 'Onne' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Onne     |
      | geslachtsnaam (02.40)           | Oostingh |
      | geboortedatum (03.10)           | 20220202 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0011  |
      | ingangsdatum geldigheid (85.10) | 20220202 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde           |
      | burgerservicenummer (01.20)                        | 000000012        |
      | voornamen (02.10)                                  | Olga             |
      | geslachtsnaam (02.40)                              | Oostingh         |
      | geboortedatum (03.10)                              | morgen - 18 jaar |
      | geboorteland (03.30)                               | 6030             |
      | geslachtsaanduiding (04.10)                        | V                |
      | aktenummer (81.20)                                 | 1AA0011          |
      | ingangsdatum geldigheid (85.10)                    | 20220202         |
      | datum ingang familierechtelijke betrekking (62.10) | 20220202         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0011  |
      | ingangsdatum geldigheid (85.10) | 20220202 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20220202 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 1D                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20221101                    |


  @deprecated
  Scenario: Lg01_173 - minderjarige moeder, gezag niet te bepalen BSN moeder ontbreekt
    # Route: Transformeer gezag uitspraak EenhoofdigOuderlijkGezag (v2) naar GezagNietTeBepalen (v1) omdat een ouder van de minderjarige het burgerservicenummer mist
    Als 'gezag' wordt gevraagd van 'Olga'
    Dan is het gezag over 'Olga' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat relevante gegevens ontbreken. Het gaat om de volgende gegevens: ouder1 van bevraagde persoon is niet in BRP geregistreerd'

  @nieuw
  Scenario: Lg01_173 - minderjarige moeder, gezag niet te bepalen BSN moeder ontbreekt
    # Route: 40o1
    Als 'gezag' wordt gevraagd van 'Olga'
    Dan is het gezag over 'Olga' eenhoofdig ouderlijk gezag met ouder 'Ophelia'

  Scenario: Lg01_174 - minderjarige moeder, geen categorie 11
    # Route: 39m
    Als 'gezag' wordt gevraagd van 'Olle'
    Dan is het gezag over 'Olle' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat de ouder minderjarig is.'

  Scenario: Lg01_175 - minderjarige moeder, wel categorie 11
    # Route: 4
    Als 'gezag' wordt gevraagd van 'Onne'
    Dan is het gezag over 'Onne' voogdij
