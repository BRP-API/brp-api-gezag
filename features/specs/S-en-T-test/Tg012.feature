#language: nl

@deprecated @gezag-api
Functionaliteit: Tg012 - Loon-Liebeek


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 23                 | 0518200000583541                           |
    
    # Lg01_065 - ongehuwde vrouw, 3 minderjarige kinderen samen met ongehuwde vrouw
    Gegeven de persoon 'Leonie' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Leonie   |
      | voorvoegsel (02.30)             | van      |
      | geslachtsnaam (02.40)           | Loon     |
      | geboortedatum (03.10)           | 19800501 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Lara     |
      | geslachtsnaam (02.40)                              | Leeflang |
      | geboortedatum (03.10)                              | 19581201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Leonardus |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Loon      |
      | geboortedatum (03.10)                              | 19571201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Luc' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Luc       |
      | geslachtsnaam (02.40)           | Liebeek   |
      | geboortedatum (03.10)           | 20120501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AQ0100   |
      | ingangsdatum geldigheid (85.10) | 20120501  |
    En heeft een kind 'Lex' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Lex       |
      | geslachtsnaam (02.40)           | Liebeek   |
      | geboortedatum (03.10)           | 20140501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20140501  |
    En kind 'Lex' is gewijzigd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Lex       |
      | geslachtsnaam (02.40)           | Liebeek   |
      | geboortedatum (03.10)           | 20140501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AB0100   |
      | ingangsdatum geldigheid (85.10) | 20140502  |
    En heeft een kind 'Lux' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Lux       |
      | geslachtsnaam (02.40)           | Liebeek   |
      | geboortedatum (03.10)           | 20160501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20160501  |
    
    # Lg01_066 - ongehuwde vrouw, 3 minderjarige kinderen samen met ongehuwde vrouw
    Gegeven de persoon 'Lieke' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Lieke    |
      | geslachtsnaam (02.40)           | Liebeek  |
      | geboortedatum (03.10)           | 19810501 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Laura    |
      | geslachtsnaam (02.40)                              | Los      |
      | geboortedatum (03.10)                              | 19551201 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | V        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Lodevicus |
      | geslachtsnaam (02.40)                              | Liebeek   |
      | geboortedatum (03.10)                              | 19541201  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Luc' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Luc       |
      | geslachtsnaam (02.40)           | Liebeek   |
      | geboortedatum (03.10)           | 20120501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20120501  |
    En kind 'Luc' is gecorrigeerd naar de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Luc       |
      | geslachtsnaam (02.40)           | Liebeek   |
      | geboortedatum (03.10)           | 20120501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AQ0100   |
      | ingangsdatum geldigheid (85.10) | 20120501  |
    En heeft een kind 'Lex' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Lex       |
      | geslachtsnaam (02.40)           | Liebeek   |
      | geboortedatum (03.10)           | 20140501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AB0100   |
      | ingangsdatum geldigheid (85.10) | 20140502  |
    En heeft een kind 'Lux' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000061 |
      | voornamen (02.10)               | Lux       |
      | geslachtsnaam (02.40)           | Liebeek   |
      | geboortedatum (03.10)           | 20160501  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0100   |
      | ingangsdatum geldigheid (85.10) | 20160501  |
    
    # Lg01_067 - geboorte uit ongehuwde vrouw, adoptie met terugwerkende kracht tot geboortedatum door duo-moeder
    Gegeven de persoon 'Luc' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Luc      |
      | geslachtsnaam (02.40)           | Liebeek  |
      | geboortedatum (03.10)           | 20120501 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20120501 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Luc       |
      | geslachtsnaam (02.40)           | Liebeek   |
      | geboortedatum (03.10)           | 20120501  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AQ0100   |
      | ingangsdatum geldigheid (85.10) | 20120501  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Lieke     |
      | geslachtsnaam (02.40)                              | Liebeek   |
      | geboortedatum (03.10)                              | 19810501  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20120501  |
      | datum ingang familierechtelijke betrekking (62.10) | 20120501  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20120501 |
    En ouder 2 is gecorrigeerd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Leonie    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Loon      |
      | geboortedatum (03.10)                              | 19800501  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AQ0100   |
      | ingangsdatum geldigheid (85.10)                    | 20120501  |
      | datum ingang familierechtelijke betrekking (62.10) | 20120501  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20120501 |
    
    # Lg01_068 - geboorte uit ongehuwde vrouw, erkenning bij geboorteaangifte (ná dag geboorte) door meemoeder, categorie 11 met 12
    Gegeven de persoon 'Lex' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Lex      |
      | geslachtsnaam (02.40)           | Liebeek  |
      | geboortedatum (03.10)           | 20140501 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20140501 |
    En zijn de volgende gegevens gewijzigd
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000048 |
      | voornamen (02.10)               | Lex       |
      | geslachtsnaam (02.40)           | Liebeek   |
      | geboortedatum (03.10)           | 20140501  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AB0100   |
      | ingangsdatum geldigheid (85.10) | 20140502  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Leonie    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Loon      |
      | geboortedatum (03.10)                              | 19800501  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20140501  |
      | datum ingang familierechtelijke betrekking (62.10) | 20140501  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20140501 |
    En ouder 2 is gewijzigd naar de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Lieke     |
      | geslachtsnaam (02.40)                              | Liebeek   |
      | geboortedatum (03.10)                              | 19810501  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AB0100   |
      | ingangsdatum geldigheid (85.10)                    | 20140502  |
      | datum ingang familierechtelijke betrekking (62.10) | 20140502  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20140501 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                      |
      | indicatie gezag minderjarige (32.10) | 12                          |
      | beschrijving document (82.30)        | kennisgeving gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20140601                    |
    
    # Lg01_069 - geboorte uit ongehuwde vrouw, erkenning ongeboren vrucht door meemoeder, geen categorie 11
    Gegeven de persoon 'Lux' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Lux      |
      | geslachtsnaam (02.40)           | Liebeek  |
      | geboortedatum (03.10)           | 20160501 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0100  |
      | ingangsdatum geldigheid (85.10) | 20160501 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000024 |
      | voornamen (02.10)                                  | Lieke     |
      | geslachtsnaam (02.40)                              | Liebeek   |
      | geboortedatum (03.10)                              | 19810501  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20160501  |
      | datum ingang familierechtelijke betrekking (62.10) | 20160501  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Leonie    |
      | voorvoegsel (02.30)                                | van       |
      | geslachtsnaam (02.40)                              | Loon      |
      | geboortedatum (03.10)                              | 19800501  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0100   |
      | ingangsdatum geldigheid (85.10)                    | 20160501  |
      | datum ingang familierechtelijke betrekking (62.10) | 20160501  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20160501 |


  Scenario: Lg01_065 - ongehuwde vrouw, 3 minderjarige kinderen samen met ongehuwde vrouw
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Leonie'
    Dan heeft 'Leonie' de volgende gezagsrelaties
    * is het gezag over 'Luc' gezamenlijk ouderlijk gezag met ouder 'Lieke' en ouder 'Leonie'
    * is het gezag over 'Lex' gezamenlijk ouderlijk gezag met ouder 'Leonie' en ouder 'Lieke'

  Scenario: Lg01_066 - ongehuwde vrouw, 3 minderjarige kinderen samen met ongehuwde vrouw
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Lieke'
    Dan heeft 'Lieke' de volgende gezagsrelaties
    * is het gezag over 'Luc' gezamenlijk ouderlijk gezag met ouder 'Lieke' en ouder 'Leonie'
    * is het gezag over 'Lex' gezamenlijk ouderlijk gezag met ouder 'Leonie' en ouder 'Lieke'

  Scenario: Lg01_067 - geboorte uit ongehuwde vrouw, adoptie met terugwerkende kracht tot geboortedatum door duo-moeder
    # Route: 55
    Als 'gezag' wordt gevraagd van 'Luc'
    Dan is het gezag over 'Luc' gezamenlijk ouderlijk gezag met ouder 'Lieke' en ouder 'Leonie'

  Scenario: Lg01_068 - geboorte uit ongehuwde vrouw, erkenning bij geboorteaangifte (ná dag geboorte) door meemoeder, categorie 11 met 12
    # Route: 7
    Als 'gezag' wordt gevraagd van 'Lex'
    Dan is het gezag over 'Lex' gezamenlijk ouderlijk gezag met ouder 'Leonie' en ouder 'Lieke'

  Scenario: Lg01_069 - geboorte uit ongehuwde vrouw, erkenning ongeboren vrucht door meemoeder, geen categorie 11
    # Route: 54
    Als 'gezag' wordt gevraagd van 'Lux'
    Dan is het gezag over 'Lux' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat niet kan worden vastgesteld welke ouder de geboortemoeder is.'
