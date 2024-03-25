Indeksi nro 1. I_ilmoittautuja
Indeksin rakenne: Indeksi luodaan Ilmoittautuminen –taululle. Hakemiston hakukenttä on Ilmoittami-nen - taulun sukunimi.

```
CREATE INDEX I_ilmoittautuja ON ilmoittautuminen (ilm_sukunimi, ilm_etunimi, ilm_sposti, ilm_puh);
SELECT *
FROM ilmoittautuminen
ORDER BY ilm_sukunimi ASC;

```
Indeksi tarkoitus: Konferenssiin ilmoittautuneiden määrät ovat suuria ja tarve on jatkuvasti seurata ilmoittautuneiden tietoja.  
Indeksin avulla voidaan hakea laskevassa aakkosjärjestyksessä konfe-renssiin ilmoittautuneet henkilöt. Konferenssiin ilmoittautuneiden määrät ovat suuria.

Indeksi nro 2. I_tyontekija
Indeksin rakenne: Indeksi luodaan Työntekijä –taululle. Hakemiston hakukenttä on työntekijän suku-nimi.

```
CREATE INDEX I_tyontekija ON tyontekija (tyk_sukunimi, tyk_etunimi, tyk_sposti, tyk_puh, tyoryh-ma_id);
SELECT *
FROM tyontekija
ORDER BY tyoryhma_id ASC;

```
Indeksi tarkoitus: Indeksin avulla voidaan hakea eri työryhmiin kuuluvat henkilöt tyoryhma_id laske-vassa järjestyksessä. 
Indeksi avulla voidaan tarkistaa, että työryhmillä on käytössä tarvittava määrä henkilöstöä.

Indeksi nro 3. I_osallistuja 
Indeksin rakenne: Indeksi luodaan Osallistuja –taululle. Hakemiston hakukenttä on osallistujan sukunimi.

```
CREATE INDEX I_osallistuja ON osallistuja (os_sukunimi, os_etunimi, os_sposti, os_puh);
SELECT *
FROM Osallistuja
ORDER BY os_sukunimi;

```
Indeksi tarkoitus: Konferenssiin ilmoittautuneiden määrät ovat suuria ja tarve on jatkuvasti seurata ilmoittautuneiden tietoja. 
Indeksin avulla voidaan hakea laskevassa aakkosjärjestyksessä konfe-renssiin osallistuneet henkilöt.

Indeksi poistetaan, mikäli sen käyttö jää tulevaisuudessa vähäiseksi tai tarpeettomaksi.
```
DROP INDEX index_name;
```
