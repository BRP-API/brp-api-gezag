#language: nl

Functionaliteit: 1.2 - Is persoon a. minderjarig en b. niet overleden?


    Achtergrond:
      Gegeven de persoon 'Laura' met burgerservicenummer '000000012'
      * is ingeschreven in de BRP
      * is meerderjarig
      En de persoon 'Ludo' met burgerservicenummer '000000024'
      * is ingeschreven in de BRP
      * is meerderjarig
      En 'Laura' en 'Ludo' zijn met elkaar gehuwd
      En de persoon 'Linda' met burgerservicenummer '000000036'
      * is ingeschreven in de BRP
      * is niet geëmigreerd geweest
      * is in Nederland geboren
      * heeft 'Laura' als ouder 1
      * heeft 'Ludo' als ouder 2


  Regel: Als de persoon ouder is dan 18 jaar is gezag niet van toepassing

    Abstract Scenario: de persoon is minderjarig
      Gegeven is minderjarig met de volgende gegevens
      | geboortedatum (03.10) |
      | <geboortedatum>       |
      Als gezag wordt gezocht met de volgende parameters
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon een 'gezag' met de volgende gegevens
      | naam                             | waarde                    |
      | type                             | TweehoofdigOuderlijkGezag |
      | minderjarige.burgerservicenummer | 000000036                 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000012 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000024 |

      Voorbeelden:
      | geboortedatum      |
      | morgen - 18 jaar   |
      | gisteren - 17 jaar |
      | vandaag - 16 jaar  |
      | gisteren           |
      | vandaag            |

    Abstract Scenario: de persoon is meerderjarig want is <omschrijving>
      Gegeven is meerderjarig met de volgende gegevens
      | geboortedatum (03.10) |
      | <geboortedatum>       |
      Als gezag wordt gezocht met de volgende parameters
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon geen gezag

      Voorbeelden:
      | geboortedatum      | omschrijving              |
      | vandaag - 18 jaar  | vandaag 18 jaar geworden  |
      | gisteren - 18 jaar | gisteren 18 jaar geworden |
      | morgen - 19 jaar   | 18 jaar                   |
      | vandaag - 19 jaar  | 19 jaar                   |
      | gisteren - 20 jaar | 20 jaar                   |


  Regel: Als de geboortedatum van de persoon volledig onbekend is wordt de persoon als meerderjarig beschouwd en is gezag niet van toepassing

    Scenario: geboortedatum is volledig onbekend
      Gegeven is meerderjarig met de volgende gegevens
      | geboortedatum (03.10) |
      | 00000000              |
      Als gezag wordt gezocht met de volgende parameters
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon geen gezag


  Regel: Als de geboortedatum van de persoon gedeeltelijk bekend is wordt de leeftijd berekend met de 1e dag van de onzekerheidsperiode

    Abstract Scenario: geboortedatum <omschrijving>
      Gegeven is minderjarig met de volgende gegevens
      | geboortedatum (03.10) |
      | <geboortedatum>       |
      Als gezag wordt gezocht met de volgende parameters
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon een 'gezag' met de volgende gegevens
      | naam                             | waarde                    |
      | type                             | TweehoofdigOuderlijkGezag |
      | minderjarige.burgerservicenummer | 000000036                 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000012 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000024 |

      Voorbeelden:
      | geboortedatum            | omschrijving                                                         |
      | 20230000                 | alleen jaar is bekend maar persoon is zeker minder dan 18 jaar oud   |
      | 20230500                 | jaar en maand is bekend maar persoon is zeker minder dan 18 jaar oud |
      | dit jaar - 17 jaar       | alleen jaar is bekend en persoon wordt volgend jaar 18 jaar oud      |
      | volgende maand - 18 jaar | jaar en maand is bekend en persoon wordt volgende maand 18 jaar oud  |

    Abstract Scenario: geboortedatum <omschrijving>
      Gegeven is meerderjarig met de volgende gegevens
      | geboortedatum (03.10) |
      | <geboortedatum>       |
      Als gezag wordt gezocht met de volgende parameters
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon geen gezag

      Voorbeelden:
      | geboortedatum          | omschrijving                                                          |
      | dit jaar - 18 jaar     | alleen jaar is bekend en persoon wordt of is dit jaar 18 jaar oud     |
      | deze maand - 18 jaar   | jaar en maand is bekend en persoon wordt of is deze maand 18 jaar oud |
      | dit jaar - 19 jaar     | alleen jaar is bekend en persoon werd vorig jaar 18 jaar oud          |
      | vorige maand - 18 jaar | jaar en maand is bekend en persoon werd vorige maand 18 jaar oud      |


  Regel: Wanneer er onderzoek loopt naar de geboortedatum is gezag niet te bepalen

    Abstract Scenario: persoon is volgens geboortedatum <meer of minderjarig> en <onderzoek omschrijving> staat in onderzoek
      Gegeven is <meer of minderjarig> met de volgende gegevens
      | geboortedatum (03.10) | aanduiding in onderzoek (83.10) |
      | <geboortedatum>       | <aanduiding in onderzoek>       |
      Als gezag wordt gezocht met de volgende parameters
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon een 'gezag' met de volgende gegevens
      | naam        | waarde                                                                                          |
      | type        | GezagNietTeBepalen                                                                              |
      | toelichting | gezag is niet te bepalen omdat de volgende relevante gegevens in onderzoek staan: <toelichting> |

      Voorbeelden:
      | geboortedatum      | meer of minderjarig | aanduiding in onderzoek | onderzoek omschrijving | toelichting                                            |
      | gisteren - 16 jaar | minderjarig         | 010000                  | hele categorie persoon | geboortedatum van de persoon, geboorteland van persoon |
      | gisteren - 16 jaar | minderjarig         | 010300                  | hele groep geboorte    | geboortedatum van de persoon, geboorteland van persoon |
      | gisteren - 16 jaar | minderjarig         | 010310                  | geboortedatum          | geboortedatum van de persoon                           |
      | gisteren - 21 jaar | meerderjarig        | 010310                  | geboortedatum          | geboortedatum van de persoon                           |

    Abstract Scenario: bij minderjarige staat een ander gegeven dan geboortedatum, namelijk <onderzoek omschrijving> in onderzoek
      Gegeven is minderjarig met de volgende gegevens
      | geboortedatum (03.10) | aanduiding in onderzoek (83.10) |
      | gisteren - 16 jaar    | <aanduiding in onderzoek>       |
      Als gezag wordt gezocht met de volgende parameters
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon een 'gezag' met de volgende gegevens
      | naam                             | waarde                    |
      | type                             | TweehoofdigOuderlijkGezag |
      | minderjarige.burgerservicenummer | 000000036                 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000012 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000024 |

      Voorbeelden:
      | aanduiding in onderzoek | onderzoek omschrijving |
      | 010120                  | burgerservicenummer    |
      | 010200                  | hele groep naam        |
      | 010240                  | geslachtsnaam          |
      | 010320                  | geboorteplaats         |

    Scenario: minderjarige heeft beëindigd onderzoek naar de geboortedatum
      Gegeven is minderjarig met de volgende gegevens
      | geboortedatum (03.10) | aanduiding in onderzoek (83.10) | datum einde onderzoek (83.30) |
      | gisteren - 16 jaar    | 010310                          | 20230526                      |
      Als gezag wordt gezocht met de volgende parameters
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon een 'gezag' met de volgende gegevens
      | naam                             | waarde                    |
      | type                             | TweehoofdigOuderlijkGezag |
      | minderjarige.burgerservicenummer | 000000036                 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000012 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000024 |

 
  Regel: Als de geboortedatum van de persoon ontbreekt is gezag niet te bepalen

    Scenario: de geboortedatum van de persoon is niet ingevuld
      Gegeven heeft de volgende gegevens
      | geboortedatum (03.10) |
      |                       |
      Als gezag wordt gezocht met de volgende parameters
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon een 'gezag' met de volgende gegevens
      | naam        | waarde                                                                           |
      | type        | GezagNietTeBepalen                                                               |
      | toelichting | gezag is niet te bepalen omdat de geboortedatum van minderjarige niet bekend is. |


  Regel: Als de persoon is overleden is gezag niet van toepassing
    # overlijden wordt bepaald door aanwezigheid van datum opschorting bijhouding
    # aangezien opschorting bijhouding na emigratie (R en E) al zijn afgevangen wordt aangenomen 
    # de aanwezigheid van datum opschorting bijhouding betekent dat de persoon is overleden
    
    Abstract Scenario: minderjarige is overleden
      Gegeven is <meer of minderjarig>
      En bijhouding van de persoonslijst is opgeschort met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | gisteren |
      Als gezag wordt gezocht met de volgende parameters
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon geen gezag

      Voorbeelden:
      | meer of minderjarig |
      | minderjarig         |
      | meerderjarig        |