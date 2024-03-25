Tietokannan taulut normalisoitiin. Tavoitteena varmistaa relaatioiden ja kohdealueen objektien väli-nen läheinen rakenteellinen vastaavuus. 
Lisäksi pyritään minimoimaan saman datan toistaminen eri tauluissa, tietokannan päivitysten toimivuus ja 
rakenteellinen joustavuus tietokantaan tulevaisuudessa tehtäviä muutoksia varten. (Hovi, Huotari & Lahdenmäki 2003, 86) 

Normalisoinnista havaittiin seuraavia riippuvaisuuksia.

Voidaan olettaa, että työntekijä asustaa samassa maassa, kuin missä konferenssi pidetään. 
Tämän takia emme kokeneet tarpeelliseksi tarkentaa osoitetietoja maatiedolla. 

Työntekijä -taulun normalisointi:
 
TYONTEKIJA (tyk_id, tyk_etunimi, tyk_sukunimi, tyk_osoite, tyk_puh, tyk_sposti, tyoryhma_id, kon-ferenssi_id)

1NM: A fact about the key = atomiset attribuutit

TYONTEKIJA (tyk_id, tyk_etunimi, tyk_sukunimi, tyk_katuosoite, tyk_postinro, tyk_postitmp, tyk_puh, tyk_sposti, tyoryhma_id, konferenssi_id)

2NM: the whole key = pääavaimen osa ei määrää mitään

TYONTEKIJA (tyk_id, tyk_etunimi, tyk_sukunimi, tyk_katuosoite, tyk_postinro, tyk_postitmp, tyk_puh, tyk_sposti, tyoryhma_id, konferenssi_id)

3NM: nothing but key = avaimeen kuulumaton attribuutti ei määrää mitään

TYONTEKIJA (tyk_id, tyk_etunimi, tyk_sukunimi, tyk_katuosoite, tyk_postinro, tyk_puh, tyk_sposti, tyoryhma_id, konferenssi_id)

POSTITMP (postinro, postitmp)

BCNM: = avaimeen kuulumaton attribuutti ei määrää pääavaimen osaa ei muutoksia

4NM: korkeintaan yksi itsenäinen moniarvoinen riippuvuus

ei muutoksia (ei vähintään 3-osaista avainta)

5NM: ei päättelysääntöä, jonka perusteella relaation voisi jakaa pienempiin osiin

ei muutoksia (ei vähintään 3-osaista avainta - eikä päättelysääntöä)

Tiedetään, että konferenssiin valitut hotellit ovat samassa maassa, kuin missä konferenssi pidetään. 
Tämän takia emme kokeneet tarpeelliseksi tarkentaa osoitetietoja maatiedolla. 

Majoitus –taulun normalisointi:
 
MAJOITUS (maj_id, hotelli, maj_osoite, huonetyyppi, maj_saapumispaiva, maj_lahtopaiva, konfe-renssi_id)

1NM: A fact about the key = atomiset attribuutit

MAJOITUS (maj_id, hotelli, maj_katuosoite, maj_postinro, maj_postitmp, huonetyyppi, maj_saapumispaiva, maj_lahtopaiva, konferenssi_id)

2NM: the whole key = pääavaimen osa ei määrää mitään

MAJOITUS (maj_id, hotelli, maj_katuosoite, maj_postinro, maj_postitmp, huonetyyppi, maj_saapumispaiva, maj_lahtopaiva, konferenssi_id)

3NM: nothing but key = avaimeen kuulumaton attribuutti ei määrää mitään

MAJOITUS (maj_id, hotelli, maj_katuosoite, maj_postinro, huonetyyppi, maj_saapumispaiva, maj_lahtopaiva, konferenssi_id)

POSTITMP (postinro, postitmp)

BCNM: = avaimeen kuulumaton attribuutti ei määrää pääavaimen osaa ei muutoksia

4NM: korkeintaan yksi itsenäinen moniarvoinen riippuvuus ei muutoksia (ei vähintään 3-osaista avainta)

5NM: ei päättelysääntöä, jonka perusteella relaation voisi jakaa pienempiin osiin

Majoitus -taulussa huonetyyppi kentän voisi ajatella listana erilaisia huoneita esim. sviitti, 
parihuone tai yhden henkilön huone, mutta tässä työssä tulkitaan jokaisen majoituksen käsittävän yhden henkilön majoituksen.


Retki –taulun normalisointi:
 
Retki taulussa kohdekentän voisi ajatella listana kohteita, mutta tässä työssä tulkitaan jokaisen ret-ken käsittävän yhden henkilön retkikohteen.
Normalisoinnin vaatimat muutokset huomioidaan toteutettaessa luontilauseita. 

