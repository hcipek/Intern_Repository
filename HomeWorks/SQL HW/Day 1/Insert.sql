/*  Created by : Hakan C. İpek
    Version : 1.0
    Date : 21.06.2018
    This report creates a table called stajyer and insert all interns into Stajyer table.
*/

CREATE TABLE STAJYER (
    ISIM_SOYISIM     VARCHAR2(60),
    UNIVERSITE_ADI   VARCHAR2(60),
    GIRIS_YILI       DATE,
    SINIF            NUMBER
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Hakan İpek',
    'YTÜ',
    TO_DATE(2011,'YYYY'),
    '4'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Leylim Yalçın',
    'Yeditepe',
    TO_DATE(2014,'YYYY'),
    '4'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Sena Uzun',
    'Altınbaş',
    TO_DATE(2015,'YYYY'),
    '3'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Hamza Çakmak',
    'FSMVU',
    TO_DATE(2016,'YYYY'),
    '3'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Rumeysa Dinçsoy',
    'Trakya',
    TO_DATE(2014,'YYYY'),
    '4'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Zeynep Düzyurt',
    'İZU',
    TO_DATE(2015,'YYYY'),
    '4'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Ahmet Genç',
    'İstanbul Bilgi',
    TO_DATE(2015,'YYYY'),
    '3'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Burcu Bunyak',
    'Boğaziçi',
    TO_DATE(2015,'YYYY'),
    '3'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Özlem Çınar',
    'İTÜ',
    TO_DATE(2014,'YYYY'),
    '3'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Rumeysa Talu',
    'İstanbul',
    TO_DATE(2013,'YYYY'),
    '4'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Tuğba Şahin',
    'KTÜ',
    TO_DATE(2013,'YYYY'),
    '4'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Yasir Kiroğlu',
    'OMU',
    TO_DATE(2015,'YYYY'),
    '4'
);

INSERT INTO STAJYER (
    ISIM_SOYISIM,
    UNIVERSITE_ADI,
    GIRIS_YILI,
    SINIF
) VALUES (
    'Erdem Özgen',
    'BAU',
    TO_DATE(2015,'YYYY'),
    '3'
);