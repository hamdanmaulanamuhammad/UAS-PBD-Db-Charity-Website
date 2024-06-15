--1) Fungsi untuk mengembalikan nilai metode pembayaran yang sering digunakan pada donasi
CREATE OR REPLACE FUNCTION MostFrequentPaymentMethod
RETURN VARCHAR2 IS
    v_payment_method VARCHAR2(50);
BEGIN
    SELECT PAYMENT_METHOD
    INTO v_payment_method
    FROM (
        SELECT PAYMENT_METHOD, COUNT(*) AS method_count
        FROM DONATIONS
        GROUP BY PAYMENT_METHOD
        ORDER BY method_count DESC
    )
    WHERE ROWNUM = 1;

    RETURN v_payment_method;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No donations found';
    WHEN OTHERS THEN
        RETURN 'Error occurred';
END;

SELECT MostFrequentPaymentMethod() AS Most_Used_Payment_Method FROM DUAL;

--2) Fungsi untuk mengembalikan nilai presentasi dana terkumpul terhadap target donasi
CREATE OR REPLACE FUNCTION CalculateDonationPercentage(
    campaign_id IN NUMBER
) RETURN NUMBER IS
    total_donations NUMBER;
    target_amount NUMBER;
    donation_percentage NUMBER;
BEGIN
    -- Mengambil total donasi untuk kampanye tertentu
    SELECT SUM(AMOUNT)
    INTO total_donations
    FROM DONATIONS
    WHERE RAISING_ID = campaign_id;

    -- Mengambil target donasi untuk kampanye tertentu
    SELECT TARGET
    INTO target_amount
    FROM FUNDRAISING
    WHERE RAISING_ID = campaign_id;

    -- Menghitung persentase donasi terhadap target
    IF target_amount > 0 THEN
        donation_percentage := (total_donations / target_amount) * 100;
    ELSE
        donation_percentage := 0;
    END IF;

    RETURN donation_percentage;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0; -- Jika tidak ada data ditemukan, kembalikan 0
    WHEN OTHERS THEN
        RETURN NULL; -- Jika ada kesalahan lain, kembalikan NULL
END;

SELECT CalculateDonationPercentage(2) AS Donation_Percentage FROM DUAL;


