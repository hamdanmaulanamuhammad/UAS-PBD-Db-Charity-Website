--1) Prosedur untuk menambahkan data pada tabel donasi
CREATE OR REPLACE PROCEDURE ADD_DONATION (
    p_DONATION_ID NUMBER,
    p_RAISING_ID INT,
    p_AMOUNT DECIMAL,
    p_DONATION_DATE DATE,
    p_DONATOR_NAME VARCHAR2,
    p_CONTACTS VARCHAR2,
    p_PAYMENT_METHOD VARCHAR2,
    p_MESSAGES VARCHAR2
)
AS
BEGIN
    -- Insert new donation into DONATIONS table
    INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES)
    VALUES (
        p_DONATION_ID,  
        p_RAISING_ID,
        p_AMOUNT,
        p_DONATION_DATE,
        p_DONATOR_NAME,
        p_CONTACTS,
        p_PAYMENT_METHOD,
        p_MESSAGES
    );
    DBMS_OUTPUT.PUT_LINE('Donation added successfully.');
    -- Commit the transaction
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Error handling: Rollback transaction if an error occurs
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error adding donation: ' || SQLERRM);
END ADD_DONATION;

--CONTOH PENGGUNAAN PROCEDURE  ADD_DONATION
BEGIN
    -- Panggil prosedur ADD_DONATION untuk menambahkan donasi baru
    ADD_DONATION(
        p_DONATION_ID => 56,
        p_RAISING_ID => 4,
        p_AMOUNT => 200.00,
        p_DONATION_DATE => TO_DATE('2024-06-20', 'YYYY-MM-DD'),
        p_DONATOR_NAME => 'Max',
        p_CONTACTS => 'max@example.com',
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

--2) Prosedur untuk menambahkan data pada tabel user
CREATE OR REPLACE PROCEDURE ADD_USER (
    p_USER_ID NUMBER,
    p_USER_NAME VARCHAR2,
    p_USER_CONTACTS VARCHAR2,
    p_NIK VARCHAR2,
    p_ADDRESS VARCHAR2
)
AS
BEGIN
    -- Insert new user into USERS table
    INSERT INTO USERS (USER_ID, USER_NAME, USER_CONTACTS, NIK, ADDRESS)
    VALUES (p_USER_ID, p_USER_NAME, p_USER_CONTACTS, p_NIK, p_ADDRESS);
    
    -- Optionally, perform additional actions or logging
    DBMS_OUTPUT.PUT_LINE('User added successfully.');
    
    -- Commit the transaction
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Error handling: Rollback transaction if an error occurs
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error adding user: ' || SQLERRM);
END ADD_USER;

--CONTOH PENGGUNAAN PROSEDUR ADD_USER
BEGIN
    -- Panggil prosedur ADD_USER untuk menambahkan pengguna baru
    ADD_USER(
        p_USER_ID => 7,
        p_USER_NAME => 'Veldora',
        p_USER_CONTACTS => 'vel@example.com',
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




