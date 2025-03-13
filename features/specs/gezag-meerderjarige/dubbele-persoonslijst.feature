# language: nl
Functionaliteit: Leveren gezag wanneer er een persoonslijst wordt gevonden met opschorting reden F (Fout) of W (Wissen)

  Regel: Een persoonslijst met opschorting F (Fout) of W (Wissen) wordt genegeerd wanneer er ook een andere persoonslijst is met hetzelfde burgerservicenummer

    Abstract Scenario: Er is een persoonslijst met opschorting <opschorting reden> en een andere persoonslijst met zelfde bsn en zonder opschorting bijhouding
      Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
      * is meerderjarig
      En de persoon 'Aart' met burgerservicenummer '000000024'
      * is meerderjarig
      En 'Gerda' en 'Aart' zijn met elkaar gehuwd
      En de persoon 'Hakim' met burgerservicenummer '000000036'
      * is meerderjarig
      En de persoon 'Bert' met burgerservicenummer '000000048'
      * is minderjarig
      * is ingeschreven in de BRP
      * is in Nederland geboren
      * heeft 'Hakim' als ouder 1
      En de persoonslijst van 'Bert' is opgeschort met reden '<opschorting reden>'
      En de persoon 'Ernie' met burgerservicenummer '000000048'
      * is minderjarig
      * is ingeschreven in de BRP
      * is in Nederland geboren
      * heeft 'Gerda' als ouder 1
      * heeft 'Aart' als ouder 2
      Als gezag wordt gezocht met de volgende parameters
        | naam                | waarde              |
        | burgerservicenummer | <gevraagde persoon> |
      Dan heeft de response een persoon met de volgende gegevens
        | naam                | waarde              |
        | burgerservicenummer | <gevraagde persoon> |
      En heeft de persoon een 'gezag' met de volgende gegevens
        | naam                             | waarde                    |
        | type                             | TweehoofdigOuderlijkGezag |
        | minderjarige.burgerservicenummer |                 000000048 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
        | naam                | waarde    |
        | burgerservicenummer | 000000012 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
        | naam                | waarde    |
        | burgerservicenummer | 000000024 |

      Voorbeelden:
        | opschorting reden | omschrijving | gevraagde persoon |
        | F                 | Fout         |         000000012 |
        | W                 | Wissen       |         000000024 |

    Abstract Scenario: Er is een persoonslijst met opschorting <opschorting reden> en een andere persoonslijst met zelfde bsn en zonder opschorting bijhouding voor een ouder
      Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
      * is meerderjarig
      En de persoon 'Aart' met burgerservicenummer '000000024'
      * is meerderjarig
      En de persoonslijst van 'Aart' is opgeschort met reden '<opschorting reden>'
      En de persoon 'Hakim' met burgerservicenummer '000000024'
      * is meerderjarig
      En 'Gerda' en 'Hakim' zijn met elkaar gehuwd
      En de persoon 'Bert' met burgerservicenummer '000000036'
      * is minderjarig
      * is ingeschreven in de BRP
      * is in Nederland geboren
      * heeft 'Gerda' als ouder 1
      * heeft 'Hakim' als ouder 2
      Als gezag wordt gezocht met de volgende parameters
        | naam                | waarde              |
        | burgerservicenummer | <gevraagde persoon> |
      Dan heeft de response een persoon met de volgende gegevens
        | naam                | waarde              |
        | burgerservicenummer | <gevraagde persoon> |
      En heeft de persoon een 'gezag' met de volgende gegevens
        | naam                             | waarde                    |
        | type                             | TweehoofdigOuderlijkGezag |
        | minderjarige.burgerservicenummer |                 000000036 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
        | naam                | waarde    |
        | burgerservicenummer | 000000012 |
      En heeft 'gezag' een 'ouder' met de volgende gegevens
        | naam                | waarde    |
        | burgerservicenummer | 000000024 |

      Voorbeelden:
        | opschorting reden | omschrijving | gevraagde persoon | omschrijving persoon |
        | F                 | Fout         |         000000012 | andere ouder         |
        | W                 | Wissen       |         000000024 | ouder met dubbele PL |

    Abstract Scenario: Er is een persoonslijst met opschorting <opschorting reden> en een andere persoonslijst met zelfde bsn en zonder opschorting bijhouding voor de partner van de ouder
      Gegeven de persoon 'Gerda' met burgerservicenummer '000000012'
      * is meerderjarig
      En de persoon 'Aart' met burgerservicenummer '000000024'
      * is meerderjarig
      En de persoonslijst van 'Aart' is opgeschort met reden '<opschorting reden>'
      En de persoon 'Hakim' met burgerservicenummer '000000024'
      * is meerderjarig
      En 'Gerda' en 'Hakim' zijn met elkaar gehuwd
      En de persoon 'Bert' met burgerservicenummer '000000036'
      * is minderjarig
      * is ingeschreven in de BRP
      * is in Nederland geboren
      * heeft 'Gerda' als ouder 1
      Als gezag wordt gezocht met de volgende parameters
        | naam                | waarde    |
        | burgerservicenummer | 000000036 |
      Dan heeft de response een persoon met de volgende gegevens
        | naam                | waarde    |
        | burgerservicenummer | 000000036 |
      En heeft de persoon een 'gezag' met de volgende gegevens
        | naam                             | waarde           |
        | type                             | GezamenlijkGezag |
        | minderjarige.burgerservicenummer |        000000036 |
        | ouder.burgerservicenummer        |        000000012 |
        | derde.type                       | BekendeDerde     |
        | derde.burgerservicenummer        |        000000024 |

      Voorbeelden:
        | opschorting reden | omschrijving | gevraagde persoon | omschrijving persoon      |
        | F                 | Fout         |         000000012 | de ouder                  |
        | W                 | Wissen       |         000000024 | de partner met dubbele PL |
