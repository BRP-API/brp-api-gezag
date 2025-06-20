# language: nl
Functionaliteit: Test samenstellen van volledige naam van minderjarige en gezaghebbenden

  Regel: Lever naamvelden en geslacht van de minderjarige voor samenstellen van volledige naam

    Scenario: persoon <omschrijving>
      Gegeven de minderjarige persoon 'minderjarige' met één ouder 'moeder'
      En heeft de volgende gegevens
        | naam                                 | waarde               |
        | voornamen (02.10)                    | <voornamen plat>     |
        | voornamen (diakrieten)               | <voornamen diak>     |
        | adellijke titel of predicaat (02.20) | <titel code>         |
        | voorvoegsel (02.30)                  | <voorvoegsel>        |
        | geslachtsnaam (02.40)                | <geslachtsnaam>      |
        | geslachtsnaam (diakrieten)           | <geslachtsnaam diak> |
        | geslachtsaanduiding (04.10)          | <geslacht>           |
      Als 'gezag' wordt gevraagd van 'minderjarige'
      Dan is het gezag over 'minderjarige' eenhoofdig ouderlijk gezag met ouder 'moeder'
      En heeft de minderjarige de volgende gegevens
        | naam                                      | waarde               |
        | burgerservicenummer                       |            000000103 |
        | naam.voornamen                            | <voornamen>          |
        | naam.adellijkeTitelPredicaat.code         | <titel code>         |
        | naam.adellijkeTitelPredicaat.omschrijving | <titel omschrijving> |
        | naam.adellijkeTitelPredicaat.soort        | <titel soort>        |
        | naam.voorvoegsel                          | <voorvoegsel>        |
        | naam.geslachtsnaam                        | <geslachtsnaam>      |
        | geslacht.code                             | <geslacht>           |

      Voorbeelden:
        | voornamen plat                         | voornamen diak                         | voornamen                              | titel code | titel omschrijving | titel soort | voorvoegsel | geslachtsnaam plat                | geslachtsnaam diak | geslachtsnaam                     | geslacht | omschrijving                                       |
        | Christina Maria                        |                                        | Christina Maria                        |            |                    |             |             | Maassen                           |                    | Maassen                           | M        | zonder voorvoegsel en zonder diakrieten            |
        | Gerrit                                 |                                        | Gerrit                                 |            |                    |             | den         | Braber                            |                    | Braber                            | M        | met voorvoegsel                                    |
        |                                        |                                        |                                        |            |                    |             |             | Obbadah                           |                    | Obbadah                           | M        | naamketen (zonder voornamen)                       |
        | Lisanty Teresita del nino Jesus Virgen | Lisanty Teresita del niño Jesús Virgen | Lisanty Teresita del niño Jesús Virgen |            |                    |             | De las      | do Livramento de La Salete Jansz. |                    | do Livramento de La Salete Jansz. | M        | voornamen met diakrieten en geslachtsnaam met punt |
        | Anna                                   |                                        | Anna                                   |            |                    |             |             | Ozil                              | Özil               | Özil                              | M        | geslachtsnaam met diakriet                         |
        | Ariana                                 |                                        | Ariana                                 | JV         | jonkvrouw          | predicaat   | van         | Hoogh                             |                    | Hoogh                             | M        | predicaat jonkvrouw en geslacht man                |
        | Alex                                   |                                        | Alex                                   | JH         | jonkheer           | predicaat   | van         | Hoogh                             |                    | Hoogh                             | O        | predicaat jonkheer en geslacht onbekend            |
        | Robin Sam                              |                                        | Robin Sam                              | G          | graaf              | titel       | van den     | Aedel                             |                    | Aedel                             | M        | adellijke titel graaf en geslacht vrouw            |
        | Robin Sam                              |                                        | Robin Sam                              | GI         | gravin             | titel       | van den     | Aedel                             |                    | Aedel                             | V        | adellijke titel gravin                             |
        | Robin Sam                              |                                        | Robin Sam                              | B          | baron              | titel       | van den     | Aedel                             |                    | Aedel                             | M        | adellijke titel baron                              |
        | Robin Sam                              |                                        | Robin Sam                              | BS         | barones            | titel       | van den     | Aedel                             |                    | Aedel                             | V        | adellijke titel barones                            |
        | Robin Sam                              |                                        | Robin Sam                              | H          | hertog             | titel       | van den     | Aedel                             |                    | Aedel                             | M        | adellijke titel hertog                             |
        | Robin Sam                              |                                        | Robin Sam                              | HI         | hertogin           | titel       | van den     | Aedel                             |                    | Aedel                             | V        | adellijke titel hertogin                           |
        | Robin Sam                              |                                        | Robin Sam                              | M          | markies            | titel       | van den     | Aedel                             |                    | Aedel                             | M        | adellijke titel markies                            |
        | Robin Sam                              |                                        | Robin Sam                              | MI         | markiezin          | titel       | van den     | Aedel                             |                    | Aedel                             | V        | adellijke titel markiezin                          |
        | Robin Sam                              |                                        | Robin Sam                              | P          | prins              | titel       | van den     | Aedel                             |                    | Aedel                             | M        | adellijke titel prins                              |
        | Robin Sam                              |                                        | Robin Sam                              | PS         | prinses            | titel       | van den     | Aedel                             |                    | Aedel                             | V        | adellijke titel prinses                            |
        | Robin Sam                              |                                        | Robin Sam                              | R          | ridder             | titel       | van den     | Aedel                             |                    | Aedel                             | M        | adellijke titel ridder                             |
