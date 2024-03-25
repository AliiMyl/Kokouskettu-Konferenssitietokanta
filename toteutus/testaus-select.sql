SELECT * 
FROM tehtava
WHERE status = 'Y'

SELECT * 
FROM esitelma
WHERE konferenssi_id = 'K1111'
AND teema_id = 'T006';

SELECT retki_kohde, retki_hinta
FROM retki
WHERE retki_alkupvm = DATE'2023-05-15';

SELECT *
FROM retki
WHERE retki_hinta < 100;
 

SELECT os_id, os_etunimi
FROM osallistuja
WHERE os_sukunimi LIKE 'T%'

SELECT tyk_id, tyk_puh, tyk_sposti, tyoryhma_id
FROM tyontekija
WHERE tyk_sukunimi = 'Särmäs';

SELECT tyk_puh, tyk_etunimi, tyk_sukunimi
FROM TYONTEKIJA
WHERE tyk_id = 'TY123';
 
SELECT *
FROM ESITELMA
WHERE STATUS = 'X';
