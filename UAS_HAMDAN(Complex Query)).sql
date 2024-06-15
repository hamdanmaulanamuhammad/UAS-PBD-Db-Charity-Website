--1) Menampilkan Donasi dengan Informasi Penggalang Dana dan Verifikator
SELECT
    D.DONATION_ID,
    D.RAISING_ID,
    F.DONATION_TITLE,
    D.AMOUNT,
    D.DONATION_DATE,
    D.DONATOR_NAME,
    U.USER_NAME AS FUNDRAISER_NAME,
    A.ADMIN_NAME AS VERIFIER_NAME
FROM
    DONATIONS D
JOIN
    FUNDRAISING F ON D.RAISING_ID = F.RAISING_ID
JOIN
    USERS U ON F.FUNDRAISER_ID = U.USER_ID
JOIN
    ADMIN A ON F.VERIFIER_ID = A.ADMIN_ID;

--2) Menghitung total donasi yang diterima oleh setiap penggalangan 
SELECT
    F.RAISING_ID,
    F.DONATION_TITLE,
    SUM(D.AMOUNT) AS TOTAL_DONATION
FROM
    FUNDRAISING F
LEFT JOIN
    DONATIONS D ON F.RAISING_ID = D.RAISING_ID
GROUP BY
    F.RAISING_ID, F.DONATION_TITLE;
    
--3) Penggalangan dengan donasi terbanyak
SELECT
    F.RAISING_ID,
    F.DONATION_TITLE,
    SUM(D.AMOUNT) AS TOTAL_DONATION
FROM
    FUNDRAISING F
JOIN
    DONATIONS D ON F.RAISING_ID = D.RAISING_ID
GROUP BY
    F.RAISING_ID, F.DONATION_TITLE
HAVING
    SUM(D.AMOUNT) = (
        SELECT
            MAX(TOTAL_DONATION)
        FROM
            (
                SELECT
                    SUM(AMOUNT) AS TOTAL_DONATION
                FROM
                    DONATIONS
                GROUP BY
                    RAISING_ID
            ) MAX_DONATION
    );
    
--4) Menampilkan pengguna yang tidak melakukan penggalangan dana   
SELECT
    U.USER_ID,
    U.USER_NAME
FROM
    USERS U
LEFT JOIN
    FUNDRAISING F ON U.USER_ID = F.FUNDRAISER_ID
WHERE
    F.FUNDRAISER_ID IS NULL;
      
--5) Menampilkan nama penggalang, judul donasi, dan nama donatur berdasarkan urutan nominal donasi terbesar
SELECT
    U.USER_NAME AS FUNRAISER_NAME,
    F.DONATION_TITLE,
    D.DONATOR_NAME,
    D.AMOUNT
FROM
    USERS U
INNER JOIN
    FUNDRAISING F ON U.USER_ID = F.FUNDRAISER_ID
INNER JOIN
    DONATIONS D ON F.RAISING_ID = D.RAISING_ID
ORDER BY
    D.AMOUNT DESC;




