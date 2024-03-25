INSERT INTO postitmp
VALUES
(00520
, 'Helsinki'
);
INSERT INTO postitmp
VALUES
(01610
, 'Vantaa'
);

INSERT INTO postitmp
VALUES
(00110
, 'Helsinki'
);

INSERT INTO aikataulu
VALUES 
('A07070'
,DATE '2023-05-15'
,TIMESTAMP '2023-05-15 12:30:00'
, 4002
);
INSERT INTO aikataulu 
 VALUES  
 ('A08080' 
 ,DATE '2023-05-15' 
 ,TIMESTAMP '2023-05-15 15:30:00' 
 , 2002 
);
INSERT INTO aikataulu
VALUES 
('A22222'
,DATE '2023-05-19'
,TIMESTAMP '2023-05-19 14:00:00'
, 2011
);

INSERT INTO tyoryhma
VALUES
('TR01'
,'Järjestystoimikunta'
,6
);

INSERT INTO tyoryhma
VALUES
('TR04'
,'Työryhmä 1'
,5
);

INSERT INTO konferenssi
VALUES
('K1111'
,'Information Technology in 2023'
,DATE '2023-05-15'
);

INSERT INTO retki
VALUES
('R1234'
,'Tukholma'
,DATE '2023-05-15'
,DATE '2023-05-17'
, 250.95
,'K1111'
);

INSERT INTO retki
VALUES
('R1000'
,'Tampere Tour'
,DATE '2023-05-16'
,DATE '2023-05-16'
, 75.50
,'K1111'
);

INSERT INTO majoitus
VALUES
('MJ0217'
,'Holiday Inn'
,'Messuaukio 1'
, '00110'
,'1H'
,DATE '2023-05-13'
,DATE '2023-05-21'
,'K1111'
);

INSERT INTO majoitus
VALUES
('MJ0006'
,'Sokos hotelli'
,'Mannerheimintie 2'
, '00520'
,'2H'
,DATE '2023-05-15'
,DATE '2023-05-23'
,'K1111'
);

INSERT INTO teema
VALUES
('T006'
,'Tekoäly'
);

INSERT INTO teema
VALUES
('T003'
,'Robotiikka'
);

INSERT INTO maksu
VALUES
('M89898'
,30.50
,DATE '2023-05-01'
);

INSERT INTO maksu
VALUES
('M22222'
,30.50
,DATE '2023-04-19'
);

INSERT INTO maksu
VALUES
('M94734'
,30.50
,DATE '2023-04-19'
);

INSERT INTO esitelma
VALUES
('E76743'
,'Artificial Intelligence in Schools'
,'Y'
,'K1111'
,'T006'
,'A07070'
);
INSERT INTO esitelma 
 VALUES 
 ('E84921' 
 ,'Artificial Intelligence in the Medical Field' 
 ,'X' 
 ,'K1111' 
 ,'T006' 
 ,'A08080' 
);
INSERT INTO esitelma
VALUES
('E01278'
,'Robotiikan etiikka'
,'Y'
,'K1111'
,'T003'
,'A22222'
);

INSERT INTO tekija
VALUES
('T10023'
,'Misu'
,'Kisu'
,'E76743'
);

INSERT INTO tekija
VALUES
('T10111'
,'Tiina'
,'Miina'
,'E01278'
);

INSERT INTO ilmoittautuminen
VALUES
('I00007'
,'Max'
,'Autuas'
,'max.aut@gmail.com'
,0445861234
,'M94734'
,'MJ0006'
);

INSERT INTO konf_ilmoittautuminen
VALUES
('K1111'
,'I00007'
);

INSERT INTO osallistuja
VALUES
('O33333'
,'Teppo'
,'Mattila'
,'t.mattila@gmail.com'
,'0401286947'
,'M89898'
,'MJ0217'
);
INSERT INTO konf_osallistuminen
VALUES
('K1111'
,'O33333'
);

INSERT INTO retki_osallistuminen
VALUES
('R1234'
,'O33333'
);

INSERT INTO retki_ilm
VALUES
('R1234'
,'I00007'
);

INSERT INTO tyontekija
VALUES
('TY123'
,'Aino'
,'Särmäs'
,'Kaivokselantie 5'
, 01610
, 0401754848
,'sarmas.aino@gmail.com'
,'K1111'
,'TR01'
);

INSERT INTO tyontekija
VALUES
('TY444'
,'Aliisa'
,'Myllymäki'
,'Kellosilta'
, 00520
, 0446123456
,'aliisa.myl@gmail.com'
,'K1111'
,'TR04'
);

INSERT INTO arvioija
VALUES
('AR01'
,'TY123'
);

INSERT INTO arviointi
VALUES
('E76743'
,'AR01'
);

INSERT INTO puhuja
VALUES
('P0022'
,'E76743'
,'O33333'
,'T10023'
);

INSERT INTO tehtava
VALUES
('TE0023'
,'Pääsihteerin tehtävä on huolehtia, että toimikunta kokoontuu säännöllisesti ja työryhmät huolehtivat tehtävistään aikataulun mukaisesti.'
,'Pääsihteeri'
,'Y'
,'K1111'
,'TR01'
);
