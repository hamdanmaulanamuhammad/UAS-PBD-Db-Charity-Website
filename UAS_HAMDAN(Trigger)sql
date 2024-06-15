--1) Trigger untuk memunculkan pesan jika ada donasi baru masuk 
CREATE OR REPLACE TRIGGER TRG_NEW_DONATION
AFTER INSERT ON DONATIONS
FOR EACH ROW
DECLARE
    v_donation_title VARCHAR2(100);
BEGIN
    -- Mendapatkan judul donasi berdasarkan RAISING_ID
    SELECT DONATION_TITLE INTO v_donation_title
    FROM FUNDRAISING
    WHERE RAISING_ID = :NEW.RAISING_ID;
    
    -- Output pesan ke DBMS_OUTPUT
    DBMS_OUTPUT.PUT_LINE('Donasi baru telah masuk untuk (' || v_donation_title || ') oleh (' || :NEW.DONATOR_NAME || ')');
END;

--Test Trigger dengan menambahkan data baru menggunakan procedure ADD_DONATION
BEGIN
    -- Panggil prosedur ADD_DONATION untuk menambahkan donasi baru
    ADD_DONATION(
        p_DONATION_ID => 56,
        p_RAISING_ID => 3,
        p_AMOUNT => 100.00,
        p_DONATION_DATE => TO_DATE('2024-06-20', 'YYYY-MM-DD'),
        p_DONATOR_NAME => 'Julia',
        p_CONTACTS => 'jul@example.com',
        p_PAYMENT_METHOD => 'Bank Transfer',
        p_MESSAGES => 'Keep spirit!'
    );
    -- Commit the entire transaction
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Handle exceptions if needed
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END;



--2) Trigger untuk memunculkan pesan jika ada user yang membuat penggalangan baru
CREATE OR REPLACE TRIGGER TRG_NEW_FUNDRAISING
AFTER INSERT ON FUNDRAISING
FOR EACH ROW
DECLARE
    v_fundraiser_name VARCHAR2(100);
BEGIN
    -- Mendapatkan nama penggalang berdasarkan FUNDRAISER_ID
    SELECT USER_NAME INTO v_fundraiser_name
    FROM USERS
    WHERE USER_ID = :NEW.FUNDRAISER_ID;
    
    -- Output pesan ke DBMS_OUTPUT
    DBMS_OUTPUT.PUT_LINE('Penggalangan baru (' || :NEW.DONATION_TITLE || ') dibuat oleh (' || v_fundraiser_name || ')');
END;

INSERT INTO FUNDRAISING (RAISING_ID, DONATION_TITLE, FUNDRAISER_ID, TARGET, VERIFIER_ID, DATE_START, CATEGORY_ID)VALUES (6, 'Assistance to orphanages', 2, 10000.00, 1, TO_DATE('06-JUN-24', 'DD-MON-RR'), 2);

--3) Trigger untuk memunculkan pesan jika ada user baru 
CREATE OR REPLACE TRIGGER TRG_NEW_USER
AFTER INSERT ON USERS
FOR EACH ROW
BEGIN
    -- Output pesan ke DBMS_OUTPUT
    DBMS_OUTPUT.PUT_LINE('Selamat Bergabung ' || :NEW.USER_NAME);
END;

BEGIN
    -- Panggil prosedur ADD_USER untuk menambahkan pengguna baru
    ADD_USER(
        p_USER_ID => 8,
        p_USER_NAME => 'Xorizo',
        p_USER_CONTACTS => 'xor@example.com',
        p_NIK => '1234567890',
        p_ADDRESS => '123 Main Street, City, Country'
    );
    
    -- Commit the entire transaction
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Handle exceptions if needed
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END;


SET SERVEROUTPUT ON;
