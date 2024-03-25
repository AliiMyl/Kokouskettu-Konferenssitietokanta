Lisätään Tyontekija-tauluun user_id attribuutti:
```
ALTER TABLE TYONTEKIJA
ADD user_id CHAR(5);
```

```
CREATE VIEW v_tehtava_tr
AS SELECT
tehtava_id, 
tehtava_nimike, 
tehtava_kuvaus,  
status,
tyoryhma_id, 
konferenssi_id
FROM tehtava te
JOIN tyontekija tt ON te.tyoryhma_id = tt.tyoryhma_id
WHERE tt.user_id = USER;
```

```
CREATE VIEW osallistujien_view  AS
SELECT os_id, os_etunimi, os_sukunimi
FROM Osallistuja;
```

Näkymän poisto tarvittaessa: 
```
DROP VIEW v_tehtava_tr;
```
