Pääavainten luontiin käytetään sekvenssiä. Jokaisessa tietokannan taulussa on olemassa pääavain, 
jolloin sekvenssejä ei tarvitse tällä hetkellä tietokantaan luoda. Alla on malli sekvenssin luonnista tarpeen tullen.

Sekvenssi 1: 

Sekvenssin rakenne:

```
CREATE SEQUENCE sekvenssin_nimi
START WITH <INTEGER>
INCREMENT BY < INTEGER>
```

Tarvittaessa sekvenssi poistetaan komennolla
```
DROP SEQUENCE sekvenssin_nimi
```
