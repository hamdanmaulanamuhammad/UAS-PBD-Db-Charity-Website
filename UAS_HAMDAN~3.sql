--1) View untuk menampilkan detail fundraising, informasi kategori fundraising, dan progres donasi.
CREATE OR REPLACE VIEW CAMPAIGN_DETAILS AS
SELECT
    F.RAISING_ID,
    F.DONATION_TITLE,
    F.DATE_START,
    F.TARGET,
    C.CATEGORY_NAME,
    COALESCE(SUM(D.AMOUNT), 0) AS TOTAL_DONATION
FROM
    FUNDRAISING F
LEFT JOIN
    CATEGORIES C ON F.CATEGORY_ID = C.CATEGORY_ID
LEFT JOIN
    DONATIONS D ON F.RAISING_ID = D.RAISING_ID
GROUP BY
    F.RAISING_ID, F.DONATION_TITLE, F.DATE_START, F.TARGET, C.CATEGORY_NAME;
    
SELECT * FROM CAMPAIGN_DETAILS;

--2) View untuk menampilkan detail fundraiser, informasi kategori fundraising, dan verifikator yang terkait dengan setiap fundraising,
CREATE OR REPLACE VIEW FUNDRAISER_DETAILS AS
SELECT
    U.USER_ID AS FUNDRAISER_ID,
    U.USER_NAME AS FUNDRAISER_NAME,
    C.CATEGORY_ID,
    C.CATEGORY_NAME,
    A.ADMIN_ID AS VERIFIER_ID,
    A.ADMIN_NAME AS VERIFIER_NAME
FROM
    USERS U
JOIN
    CATEGORIES C ON U.USER_ID = C.CATEGORY_ID
JOIN
    ADMIN A ON C.CATEGORY_ID = A.ADMIN_ID;
    
SELECT*FROM FUNDRAISER_DETAILS;

--3) View untuk Menampilkan Informasi Penggalangan dengan Jumlah Donasi dan Jumlah Komentar:
CREATE OR REPLACE VIEW CAMPAIGN_INFO AS
SELECT
    F.RAISING_ID,
    F.DONATION_TITLE,
    COUNT(D.DONATION_ID) AS TOTAL_DONATIONS,
    COUNT(C.COMMENT_ID) AS TOTAL_COMMENTS
FROM
    FUNDRAISING F
LEFT JOIN
    DONATIONS D ON F.RAISING_ID = D.RAISING_ID
LEFT JOIN
    COMMENTS C ON F.RAISING_ID = C.RAISING_ID
GROUP BY
    F.RAISING_ID, F.DONATION_TITLE;
    
SELECT * FROM CAMPAIGN_INFO;    

