# language: nl
Functionaliteit: Test gezagsuitspraak bij persoon die niet staat ingeschreven als ingezetene

  Regel: als een minderjarige persoon niet staat ingeschreven in een Nederlandse gemeente, dan is het gezag niet te bepalen
    | vraag | logische situatie                                                                                          | verwacht route | verwacht resultaat          |
    | 1.1   | RNI nooit ingezetene geweest                                                                               | 1              | gezag niet te bepalen       |
    | 1.1   | minderjarige is alleen geëmigreerd                                                                         | 1              | gezag niet te bepalen       |
    | 1.1   | minderjarige is samen met beide ouders geëmigreerd                                                         | 1              | gezag niet te bepalen       |
    | 1.1   | beide ouders geëmigreerd, minderjarige nog in Nederland                                                    |                | tweehoofdig ouderlijk gezag |
    | 1.1   | minderjarige is in het buitenland geboren, geïmmigreerd en daarna geëmigreerd                              | 1              | gezag niet te bepalen       |
    | 1.1   | minderjarige is in het buitenland geboren en Nederland geadopteerd door beide ouders en daarna geëmigreerd | 1              | gezag niet te bepalen       |

    Scenario: persoon is nooit ingezetene geweest
      Gegeven de minderjarige persoon 'minderjarige' die nooit ingezetene is geweest
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat minderjarige niet in Nederland woont.'

    Scenario: minderjarige is alleen geëmigreerd
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * is 1 jaar geleden geëmigreerd naar Duitsland
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat minderjarige niet in Nederland woont.'

    Scenario: minderjarige is samen met beide ouders geëmigreerd
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      * is 1 jaar geleden geëmigreerd naar Duitsland
      En persoon 'moeder'
      * is 1 jaar geleden geëmigreerd naar Duitsland
      En persoon 'vader'
      * is 1 jaar geleden geëmigreerd naar Duitsland
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat minderjarige niet in Nederland woont.'

    Scenario: beide ouders geëmigreerd, minderjarige nog in Nederland
      Gegeven de minderjarige persoon 'minderjarige' met twee gehuwde ouders 'moeder' en 'vader'
      En persoon 'moeder'
      * is 1 jaar geleden geëmigreerd naar Duitsland
      En persoon 'vader'
      * is 1 jaar geleden geëmigreerd naar Duitsland
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' gezamenlijk ouderlijk gezag met ouder 'moeder' en ouder 'vader'

    Scenario: minderjarige is in het buitenland geboren, geïmmigreerd en daarna geëmigreerd
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met twee gehuwde ouders 'moeder' en 'vader'
      * is 1 jaar geleden geëmigreerd naar Duitsland
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat minderjarige niet in Nederland woont.'

    Scenario: minderjarige is in het buitenland geboren en Nederland geadopteerd door beide ouders en daarna geëmigreerd
      Gegeven de minderjarige persoon 'minderjarige' geboren in het buitenland met niet-ingezeten ouders 'moeder' en 'vader'
      * is 15 jaar geleden geadopteerd door twee Nederlandse adoptieouders 'adoptiemoeder' en 'adoptievader' met een Nederlandse adoptieakte
      * is 1 jaar geleden geëmigreerd naar Duitsland
      En persoon 'adoptiemoeder'
      * is 2 jaar geleden geëmigreerd naar Duitsland
      En persoon 'adoptievader'
      * is 3 jaar geleden geëmigreerd naar Duitsland
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' niet te bepalen met de toelichting 'Gezag kan niet worden bepaald omdat minderjarige niet in Nederland woont.'

  Regel: als een meerderjarige persoon niet staat ingeschreven in een Nederlandse gemeente, dan is er geen gezag
    | vraag | logische situatie                               | verwacht route | verwacht resultaat          |
    | 1.1   | meerderjarig is nooit ingezetene geweest        | 2m             | geen gezag                  |

    Scenario: persoon is meerderjarig
      Gegeven de persoon 'meerderjarige' met burgerservicenummer '000000036'
      * is ingeschreven in de RNI
      * is meerderjarig
      * is in Nederland geboren
      Als 'gezag' wordt gevraagd van 'meerderjarige'
      Dan heeft de response een persoon met de volgende gegevens
      | naam                | waarde    |
      | burgerservicenummer | 000000036 |
      En heeft de persoon geen gezag