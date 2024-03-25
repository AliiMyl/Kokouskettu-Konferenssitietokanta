Luodaan tietokantaan alustavat käyttäjät ja salasanat:
```
CREATE USER <username>
IDENTIFIED BY <salasana>
```
```
CREATE USER kettu
IDENTIFIED BY viekas
DEFAULT TABLESPACE kettu_ts
TEMPORARY TABLESPACE temp_ts
QUOTA UNLIMITED ON kettu_ts;
```
```
GRANT CONNECTION TO kettu;
```
```
CREATE USER koira
IDENTIFIED BY tassu
DEFAULT TABLESPACE koira_ts
TEMPORARY TABLESPACE temp_ts
QUOTA UNLIMITED ON koira_ts;
```
```
GRANT CONNECTION TO koira;
```
```
CREATE USER kissa
IDENTIFIED BY hiiri
DEFAULT TABLESPACE kissa_ts
TEMPORARY TABLESPACE temp_ts
QUOTA UNLIMITED ON kissa_ts;
```
```
GRANT CONNECTION TO kissa;
```
```
GRANT 
SELECT, INSERT, UPDATE
ON tyontekija
TO kettu
WITH GRANT OPTION;
```
```
GRANT 
SELECT, INSERT, UPDATE
ON majoitus
TO koira
WITH GRANT OPTION;
```

```
GRANT 
SELECT, INSERT
ON esitelma
TO kissa
WITH GRANT OPTION;
```
