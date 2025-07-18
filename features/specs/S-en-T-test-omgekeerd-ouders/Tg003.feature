#language: nl

@deprecated @gezag-api
Functionaliteit: Tg003 - Bloem-Berendsen-Bolder - Ongehuwd met niet-erkende kinderen


  Achtergrond:
    Gegeven adres 'A1'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 3                  | 0518200000583528                           |
    Gegeven adres 'A2'
      | gemeentecode (92.10) | straatnaam (11.10) | huisnummer (11.20) | identificatiecode nummeraanduiding (11.90) |
      | 518                  | Turfmarkt          | 41                 | 0518200000583551                           |
    
    # Lg01_010 - ongehuwde meerderjarige moeder met 2 minderjarige niet erkende kinderen
    Gegeven de persoon 'Bianca' met burgerservicenummer '000000012'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Bianca   |
      | geslachtsnaam (02.40)           | Bloem    |
      | geboortedatum (03.10)           | 19900101 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Bart     |
      | geslachtsnaam (02.40)                              | Bloem    |
      | geboortedatum (03.10)                              | 19670101 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde      |
      | voornamen (02.10)                                  | Bastiaantje |
      | geslachtsnaam (02.40)                              | Bakker      |
      | geboortedatum (03.10)                              | 19680101    |
      | geboorteland (03.30)                               | 6030        |
      | geslachtsaanduiding (04.10)                        | V           |
      | beschrijving document (82.30)                      | PK          |
      | ingangsdatum geldigheid (85.10)                    | 0           |
      | datum ingang familierechtelijke betrekking (62.10) | 0           |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Bram' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000024 |
      | voornamen (02.10)               | Bram      |
      | geslachtsnaam (02.40)           | Bloem     |
      | geboortedatum (03.10)           | 20140201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0010   |
      | ingangsdatum geldigheid (85.10) | 20140201  |
    En heeft een kind 'Benno' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000036 |
      | voornamen (02.10)               | Benno     |
      | geslachtsnaam (02.40)           | Bloem     |
      | geboortedatum (03.10)           | 20160201  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0010   |
      | ingangsdatum geldigheid (85.10) | 20160201  |
    
    # Lg01_011 - moeder opgenomen in categorie 02, categorie 03 leeg, geen categorie 11
    Gegeven de persoon 'Bram' met burgerservicenummer '000000024'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Bram     |
      | geslachtsnaam (02.40)           | Bloem    |
      | geboortedatum (03.10)           | 20140201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0010  |
      | ingangsdatum geldigheid (85.10) | 20140201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0010  |
      | ingangsdatum geldigheid (85.10) | 20140201 |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Bianca    |
      | geslachtsnaam (02.40)                              | Bloem     |
      | geboortedatum (03.10)                              | 19900101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0010   |
      | ingangsdatum geldigheid (85.10)                    | 20140201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20140201  |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20140201 |
    
    # Lg01_012 - moeder opgenomen in categorie 03, categorie 02 leeg, geen categorie 11
    Gegeven de persoon 'Benno' met burgerservicenummer '000000036'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Benno    |
      | geslachtsnaam (02.40)           | Bloem    |
      | geboortedatum (03.10)           | 20160201 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | M        |
      | aktenummer (81.20)              | 1AA0010  |
      | ingangsdatum geldigheid (85.10) | 20160201 |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000012 |
      | voornamen (02.10)                                  | Bianca    |
      | geslachtsnaam (02.40)                              | Bloem     |
      | geboortedatum (03.10)                              | 19900101  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0010   |
      | ingangsdatum geldigheid (85.10)                    | 20160201  |
      | datum ingang familierechtelijke betrekking (62.10) | 20160201  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                            | waarde   |
      | aktenummer (81.20)              | 1AA0010  |
      | ingangsdatum geldigheid (85.10) | 20160201 |
    En is ingeschreven op adres 'A1' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20160201 |
    
    # Lg01_106 - overleden
    Gegeven de persoon 'Brand' met burgerservicenummer '000000048'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Brand     |
      | geslachtsnaam (02.40)           | Berendsen |
      | geboortedatum (03.10)           | 19720808  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | beschrijving document (82.30)   | PKA       |
      | ingangsdatum geldigheid (85.10) | 0         |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Bart      |
      | geslachtsnaam (02.40)                              | Berendsen |
      | geboortedatum (03.10)                              | 19471203  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Berdien   |
      | geslachtsnaam (02.40)                              | Boudewijn |
      | geboortedatum (03.10)                              | 19491012  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Baukje-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000061 |
      | voornamen (02.10)                                                   | Baukje    |
      | geslachtsnaam (02.40)                                               | Bolder    |
      | geboortedatum (03.10)                                               | 19750901  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | V         |
      | aktenummer (81.20)                                                  | 3AA0101   |
      | ingangsdatum geldigheid (85.10)                                     | 20100904  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20100904  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En is overleden met de volgende gegevens
      | naam                            | waarde   |
      | datum overlijden (08.10)        | 20201001 |
      | aktenummer (81.20)              | 2AA0104  |
      | ingangsdatum geldigheid (85.10) | 20201001 |
    En is ingeschreven met de volgende gegevens
      | naam                                 | waarde   |
      | datum opschorting bijhouding (67.10) | 20201001 |
      | reden opschorting bijhouding (67.20) | O        |
      | indicatie geheim (70.10)             | 0        |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Boudewijn' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Boudewijn |
      | geslachtsnaam (02.40)           | Berendsen |
      | geboortedatum (03.10)           | 20120601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0104   |
      | ingangsdatum geldigheid (85.10) | 20120601  |
    En heeft een kind 'Bertram' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Bertram   |
      | geslachtsnaam (02.40)           | Berendsen |
      | geboortedatum (03.10)           | 20141205  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0105   |
      | ingangsdatum geldigheid (85.10) | 20141205  |
    
    # Lg01_107 - onder curatele
    Gegeven de persoon 'Baukje' met burgerservicenummer '000000061'
    * heeft de volgende gegevens
      | naam                            | waarde   |
      | voornamen (02.10)               | Baukje   |
      | geslachtsnaam (02.40)           | Bolder   |
      | geboortedatum (03.10)           | 19750901 |
      | geboorteland (03.30)            | 6030     |
      | geslachtsaanduiding (04.10)     | V        |
      | beschrijving document (82.30)   | PKA      |
      | ingangsdatum geldigheid (85.10) | 0        |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde   |
      | voornamen (02.10)                                  | Brett    |
      | geslachtsnaam (02.40)                              | Bolder   |
      | geboortedatum (03.10)                              | 19520831 |
      | geboorteland (03.30)                               | 6030     |
      | geslachtsaanduiding (04.10)                        | M        |
      | beschrijving document (82.30)                      | PK       |
      | ingangsdatum geldigheid (85.10)                    | 0        |
      | datum ingang familierechtelijke betrekking (62.10) | 0        |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | voornamen (02.10)                                  | Boudewien |
      | geslachtsnaam (02.40)                              | Brulsma   |
      | geboortedatum (03.10)                              | 19500202  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | beschrijving document (82.30)                      | PK        |
      | ingangsdatum geldigheid (85.10)                    | 0         |
      | datum ingang familierechtelijke betrekking (62.10) | 0         |
    En heeft een partner 'Brand-0' met de volgende gegevens
      | naam                                                                | waarde    |
      | burgerservicenummer (01.20)                                         | 000000048 |
      | voornamen (02.10)                                                   | Brand     |
      | geslachtsnaam (02.40)                                               | Berendsen |
      | geboortedatum (03.10)                                               | 19720808  |
      | geboorteland (03.30)                                                | 6030      |
      | geslachtsaanduiding (04.10)                                         | M         |
      | aktenummer (81.20)                                                  | 3AA0101   |
      | ingangsdatum geldigheid (85.10)                                     | 20100904  |
      | datum huwelijkssluiting/aangaan geregistreerd partnerschap (06.10)  | 20100904  |
      | plaats huwelijkssluiting/aangaan geregistreerd partnerschap (06.20) | 0518      |
      | land huwelijkssluiting/aangaan geregistreerd partnerschap (06.30)   | 6030      |
    En partner 'Brand-0' is gewijzigd naar de volgende gegevens
      | naam                                                          | waarde    |
      | burgerservicenummer (01.20)                                   | 000000048 |
      | voornamen (02.10)                                             | Brand     |
      | geslachtsnaam (02.40)                                         | Berendsen |
      | geboortedatum (03.10)                                         | 19720808  |
      | geboorteland (03.30)                                          | 6030      |
      | geslachtsaanduiding (04.10)                                   | M         |
      | aktenummer (81.20)                                            | 2AA0104   |
      | ingangsdatum geldigheid (85.10)                               | 20201001  |
      | datum ontbinding huwelijk/geregistreerd partnerschap (07.10)  | 20201001  |
      | plaats ontbinding huwelijk/geregistreerd partnerschap (07.20) | 0518      |
      | land ontbinding huwelijk/geregistreerd partnerschap (07.30)   | 6030      |
      | reden ontbinding huwelijk/geregistreerd partnerschap (07.40)  | O         |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20111101 |
    En heeft een kind 'Boudewijn' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000073 |
      | voornamen (02.10)               | Boudewijn |
      | geslachtsnaam (02.40)           | Berendsen |
      | geboortedatum (03.10)           | 20120601  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0104   |
      | ingangsdatum geldigheid (85.10) | 20120601  |
    En heeft een kind 'Bertram' met de volgende gegevens
      | naam                            | waarde    |
      | burgerservicenummer (01.20)     | 000000085 |
      | voornamen (02.10)               | Bertram   |
      | geslachtsnaam (02.40)           | Berendsen |
      | geboortedatum (03.10)           | 20141205  |
      | geboorteland (03.30)            | 6030      |
      | aktenummer (81.20)              | 1AA0105   |
      | ingangsdatum geldigheid (85.10) | 20141205  |
    En heeft de volgende gezagsverhouding gegevens
      | naam                               | waarde                      |
      | indicatie curateleregister (33.10) | 1                           |
      | beschrijving document (82.30)      | mededeling curateleregister |
      | ingangsdatum geldigheid (85.10)    | 20210701                    |
    
    # Lg01_108 - vader overleden, moeder onder curatele, geen categorie 11
    Gegeven de persoon 'Boudewijn' met burgerservicenummer '000000073'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Boudewijn |
      | geslachtsnaam (02.40)           | Berendsen |
      | geboortedatum (03.10)           | 20120601  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AA0104   |
      | ingangsdatum geldigheid (85.10) | 20120601  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000048 |
      | voornamen (02.10)                                  | Brand     |
      | geslachtsnaam (02.40)                              | Berendsen |
      | geboortedatum (03.10)                              | 19720808  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0104   |
      | ingangsdatum geldigheid (85.10)                    | 20120601  |
      | datum ingang familierechtelijke betrekking (62.10) | 20120601  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000061 |
      | voornamen (02.10)                                  | Baukje    |
      | geslachtsnaam (02.40)                              | Bolder    |
      | geboortedatum (03.10)                              | 19750901  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0104   |
      | ingangsdatum geldigheid (85.10)                    | 20120601  |
      | datum ingang familierechtelijke betrekking (62.10) | 20120601  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20120601 |
    
    # Lg01_109 - vader overleden, moeder onder curatele, kind categorie 11 gezag bij derde
    Gegeven de persoon 'Bertram' met burgerservicenummer '000000085'
    * heeft de volgende gegevens
      | naam                            | waarde    |
      | voornamen (02.10)               | Bertram   |
      | geslachtsnaam (02.40)           | Berendsen |
      | geboortedatum (03.10)           | 20141205  |
      | geboorteland (03.30)            | 6030      |
      | geslachtsaanduiding (04.10)     | M         |
      | aktenummer (81.20)              | 1AA0105   |
      | ingangsdatum geldigheid (85.10) | 20141205  |
    En heeft een ouder 1 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000048 |
      | voornamen (02.10)                                  | Brand     |
      | geslachtsnaam (02.40)                              | Berendsen |
      | geboortedatum (03.10)                              | 19720808  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | M         |
      | aktenummer (81.20)                                 | 1AA0105   |
      | ingangsdatum geldigheid (85.10)                    | 20141205  |
      | datum ingang familierechtelijke betrekking (62.10) | 20141205  |
    En heeft een ouder 2 met de volgende gegevens
      | naam                                               | waarde    |
      | burgerservicenummer (01.20)                        | 000000061 |
      | voornamen (02.10)                                  | Baukje    |
      | geslachtsnaam (02.40)                              | Bolder    |
      | geboortedatum (03.10)                              | 19750901  |
      | geboorteland (03.30)                               | 6030      |
      | geslachtsaanduiding (04.10)                        | V         |
      | aktenummer (81.20)                                 | 1AA0105   |
      | ingangsdatum geldigheid (85.10)                    | 20141205  |
      | datum ingang familierechtelijke betrekking (62.10) | 20141205  |
    En is ingeschreven op adres 'A2' met de volgende gegevens
      | naam                              | waarde   |
      | gemeente van inschrijving (09.10) | 518      |
      | ingangsdatum geldigheid (85.10)   | 20141205 |
    En heeft de volgende gezagsverhouding gegevens
      | naam                                 | waarde                    |
      | indicatie gezag minderjarige (32.10) | D                         |
      | beschrijving document (82.30)        | mededeling gezagsregister |
      | ingangsdatum geldigheid (85.10)      | 20210601                  |


  Scenario: Lg01_010 - ongehuwde meerderjarige moeder met 2 minderjarige niet erkende kinderen
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Bianca'
    Dan heeft 'Bianca' de volgende gezagsrelaties
    * is het gezag over 'Bram' eenhoofdig ouderlijk gezag met ouder 'Bianca'
    * is het gezag over 'Benno' eenhoofdig ouderlijk gezag met ouder 'Bianca'

  Scenario: Lg01_011 - moeder opgenomen in categorie 02, categorie 03 leeg, geen categorie 11
    # Route: 40o1
    Als 'gezag' wordt gevraagd van 'Bram'
    Dan is het gezag over 'Bram' eenhoofdig ouderlijk gezag met ouder 'Bianca'

  Scenario: Lg01_012 - moeder opgenomen in categorie 03, categorie 02 leeg, geen categorie 11
    # Route: 40o2
    Als 'gezag' wordt gevraagd van 'Benno'
    Dan is het gezag over 'Benno' eenhoofdig ouderlijk gezag met ouder 'Bianca'

  Scenario: Lg01_106 - overleden
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Brand'
    Dan heeft 'Brand' geen gezaghouder

  Scenario: Lg01_107 - onder curatele
    # Meerderjarig
    Als 'gezag' wordt gevraagd van 'Baukje'
    Dan heeft 'Baukje' geen gezaghouder

  Scenario: Lg01_108 - vader overleden, moeder onder curatele, geen categorie 11
    # Route: 48oc
    Als 'gezag' wordt gevraagd van 'Boudewijn'
    Dan is het gezag over 'Boudewijn' tijdelijk geen gezag met de toelichting 'Tijdelijk geen gezag omdat een ouder overleden is en de andere ouder onder curatele staat.'

  Scenario: Lg01_109 - vader overleden, moeder onder curatele, kind categorie 11 gezag bij derde
    # Route: 6
    Als 'gezag' wordt gevraagd van 'Bertram'
    Dan is het gezag over 'Bertram' voogdij
