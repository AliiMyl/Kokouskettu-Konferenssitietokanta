
CREATE TABLE teema (
    teema_id   CHAR(4) NOT NULL,
    teema_nimi VARCHAR2(60) NOT NULL
, PRIMARY KEY (teema_id)
);

CREATE TABLE postitmp (
postinro    INTEGER,
postitmp    VARCHAR2(30),
PRIMARY KEY (postinro)
);

CREATE TABLE aikataulu (
    aik_id      CHAR(6) NOT NULL,
    aik_pvm     DATE NOT NULL,
    aik_klo     TIMESTAMP,
    aik_tilanro INTEGER
, PRIMARY KEY (aik_id)
);

CREATE TABLE tyoryhma (
    tyoryhma_id CHAR(4) NOT NULL,
    tyo_nimi    VARCHAR2(30) NOT NULL,
    tyo_koko    INTEGER
, PRIMARY KEY (tyoryhma_id)
);

CREATE TABLE konferenssi (
    konferenssi_id CHAR(5) NOT NULL,
    konf_nimi      VARCHAR2(70) NOT NULL,
    konf_pvm       DATE NOT NULL
, PRIMARY KEY (konferenssi_id)
);

CREATE TABLE retki (
    retki_id       CHAR(5) NOT NULL,
    retki_kohde    VARCHAR2(50) NOT NULL,
    retki_alkupvm  DATE,
    retki_loppupvm DATE,
    retki_hinta    NUMBER(6,2) NOT NULL,
    konferenssi_id CHAR(5) NOT NULL
, PRIMARY KEY (retki_id)
, FOREIGN KEY (konferenssi_id) REFERENCES konferenssi
);

CREATE TABLE majoitus (
    maj_id          CHAR(6) NOT NULL,
    hotelli_nimi    VARCHAR2(30) NOT NULL,
    maj_katuosoite      VARCHAR2(50) NOT NULL,
    maj_postinro    INTEGER NOT NULL,
    huonetyyppi     VARCHAR2(20),
    maj_saapumispvm DATE NOT NULL,
    maj_lahtopvm    DATE NOT NULL,
    konferenssi_id  CHAR(5) NOT NULL
, PRIMARY KEY (maj_id)
, FOREIGN KEY (konferenssi_id) REFERENCES konferenssi
, FOREIGN KEY (maj_postinro) REFERENCES postitmp
);


CREATE TABLE maksu (
    maksu_id    CHAR(6) NOT NULL,
    maksu_summa NUMBER(6,2) NOT NULL,
    maksu_pvm   DATE NOT NULL
, PRIMARY KEY (maksu_id)
);

CREATE TABLE esitelma (
    esi_id         CHAR(6) NOT NULL,
    esi_nimi       VARCHAR2(100) NOT NULL,
    status         CHAR(1) NOT NULL,
    konferenssi_id CHAR(5) NOT NULL,
    teema_id       CHAR(4) NOT NULL,
    aik_id         CHAR(6) NOT NULL
, PRIMARY KEY (esi_id)
, FOREIGN KEY (konferenssi_id) REFERENCES konferenssi
, FOREIGN KEY (teema_id) REFERENCES teema
, FOREIGN KEY (aik_id) REFERENCES aikataulu
);

CREATE TABLE tekija (
    tekija_id       CHAR(6) NOT NULL,
    tekija_etunimi  VARCHAR2(20) NOT NULL,
    tekija_sukunimi VARCHAR2(30) NOT NULL,
    esi_id          CHAR(6) NOT NULL
, PRIMARY KEY (tekija_id)
, FOREIGN KEY (esi_id) REFERENCES esitelma
);

CREATE TABLE ilmoittautuminen (
    ilm_id       CHAR(6) NOT NULL,
    ilm_etunimi  VARCHAR2(20) NOT NULL,
    ilm_sukunimi VARCHAR2(30) NOT NULL,
    ilm_sposti   VARCHAR2(30) NOT NULL,
    ilm_puh      INTEGER NOT NULL,
    maksu_id     CHAR(6) NOT NULL,
    majoitus_id  CHAR(6) NOT NULL
, PRIMARY KEY (ilm_id)
, FOREIGN KEY (maksu_id) REFERENCES maksu
, FOREIGN KEY (majoitus_id) REFERENCES majoitus
);

CREATE TABLE konf_ilmoittautuminen (
    konferenssi_id CHAR(5) NOT NULL,
    ilm_id         CHAR(6) NOT NULL
, PRIMARY KEY (konferenssi_id, ilm_id)
, FOREIGN KEY (konferenssi_id) REFERENCES konferenssi
, FOREIGN KEY (ilm_id) REFERENCES ilmoittautuminen
);

CREATE TABLE osallistuja (
    os_id       CHAR(6) NOT NULL,
    os_etunimi  VARCHAR2(20) NOT NULL,
    os_sukunimi VARCHAR2(30) NOT NULL,
    os_sposti   VARCHAR2(30) NOT NULL,
    os_puh      INTEGER NOT NULL,
    maksu_id    CHAR(6) NOT NULL,
    majoitus_id CHAR(6) NOT NULL
, PRIMARY KEY (os_id)
, FOREIGN KEY (maksu_id) REFERENCES maksu
, FOREIGN KEY (majoitus_id) REFERENCES majoitus
);

CREATE TABLE konf_osallistuminen (
    konferenssi_id CHAR(5) NOT NULL,
    os_id          CHAR(6) NOT NULL
, PRIMARY KEY (konferenssi_id, os_id)
, FOREIGN KEY (konferenssi_id) REFERENCES konferenssi
, FOREIGN KEY (os_id) REFERENCES osallistuja
);

CREATE TABLE retki_osallistuminen (
    retki_id CHAR(5) NOT NULL,
    os_id    CHAR(6) NOT NULL
, PRIMARY KEY (retki_id, os_id)
, FOREIGN KEY (retki_id) REFERENCES retki
, FOREIGN KEY (os_id) REFERENCES osallistuja
);

CREATE TABLE retki_ilm (
    retki_id CHAR(5) NOT NULL,
    ilm_id   CHAR(6) NOT NULL
, PRIMARY KEY (retki_id, ilm_id)
, FOREIGN KEY (retki_id) REFERENCES retki
, FOREIGN KEY (ilm_id) REFERENCES ilmoittautuminen
);

CREATE TABLE tyontekija (
    tyk_id         CHAR(5) NOT NULL,
    tyk_etunimi    VARCHAR2(20) NOT NULL,
    tyk_sukunimi   VARCHAR2(30) NOT NULL,
    tyk_katuosoite     VARCHAR2(50) NOT NULL,
    tyk_postinro        INTEGER NOT NULL,
    tyk_puh        INTEGER NOT NULL,
    tyk_sposti     VARCHAR2(30) NOT NULL,
    konferenssi_id CHAR(5) NOT NULL,
    tyoryhma_id    CHAR(4) NOT NULL
, PRIMARY KEY (tyk_id)
, FOREIGN KEY (konferenssi_id) REFERENCES konferenssi
, FOREIGN KEY (tyoryhma_id) REFERENCES tyoryhma
, FOREIGN KEY (tyk_postinro) REFERENCES postitmp
);

CREATE TABLE arvioija (
    arvioija_id CHAR(4) NOT NULL,
    tyk_id      CHAR(5) NOT NULL
, PRIMARY KEY (arvioija_id)
, FOREIGN KEY (tyk_id) REFERENCES tyontekija
);

CREATE TABLE arviointi (
    esi_id      CHAR(6) NOT NULL,
    arvioija_id CHAR(4) NOT NULL
, PRIMARY KEY (esi_id, arvioija_id)
, FOREIGN KEY (esi_id) REFERENCES esitelma
, FOREIGN KEY (arvioija_id) REFERENCES arvioija
);

CREATE TABLE puhuja (
    puhuja_id CHAR(5) NOT NULL,
    esi_id    CHAR(6) NOT NULL,
    os_id     CHAR(6) NOT NULL,
    tekija_id CHAR(6) NOT NULL
, PRIMARY KEY (puhuja_id)
, FOREIGN KEY (esi_id) REFERENCES esitelma
, FOREIGN KEY (os_id) REFERENCES osallistuja
, FOREIGN KEY (tekija_id) REFERENCES tekija
);

CREATE TABLE tehtava (
    tehtava_id     CHAR(6) NOT NULL,
    tehtava_kuvaus VARCHAR2(1000),
    tehtavanimike  VARCHAR2(50) NOT NULL,
    status         CHAR(1) NOT NULL,
    konferenssi_id CHAR(5) NOT NULL,
    tyoryhma_id    CHAR(4) NOT NULL
, PRIMARY KEY (tehtava_id)
, FOREIGN KEY (konferenssi_id) REFERENCES konferenssi
, FOREIGN KEY (tyoryhma_id) REFERENCES tyoryhma
);
