-- Insert data into USERS
INSERT INTO USERS (USER_ID, USER_NAME, USER_CONTACTS, NIK, ADDRESS) VALUES (1, 'Alice', 'alice@example.com', '1234567890', '123 Wonderland Ave');
INSERT INTO USERS (USER_ID, USER_NAME, USER_CONTACTS, NIK, ADDRESS) VALUES (2, 'Bob', 'bob@example.com', '2345678901', '456 Fantasy Blvd');
INSERT INTO USERS (USER_ID, USER_NAME, USER_CONTACTS, NIK, ADDRESS) VALUES (3, 'Charlie', 'charlie@example.com', '3456789012', '789 Adventure Rd');
INSERT INTO USERS (USER_ID, USER_NAME, USER_CONTACTS, NIK, ADDRESS) VALUES (4, 'David', 'david@example.com', '4567890123', '321 Mystery St');
INSERT INTO USERS (USER_ID, USER_NAME, USER_CONTACTS, NIK, ADDRESS) VALUES (5, 'Eve', 'eve@example.com', '5678901234', '654 Secret Ln');

-- Insert data into ADMIN
INSERT INTO ADMIN (ADMIN_ID, ADMIN_NAME, ADMIN_CONTACTS, ADMIN_ADDRESS) VALUES (1, 'Frank', 'frank.admin@example.com', '123 Authority Rd');
INSERT INTO ADMIN (ADMIN_ID, ADMIN_NAME, ADMIN_CONTACTS, ADMIN_ADDRESS) VALUES (2, 'Grace', 'grace.admin@example.com', '234 Control Ave');
INSERT INTO ADMIN (ADMIN_ID, ADMIN_NAME, ADMIN_CONTACTS, ADMIN_ADDRESS) VALUES (3, 'Hank', 'hank.admin@example.com', '345 Supervision Blvd');
INSERT INTO ADMIN (ADMIN_ID, ADMIN_NAME, ADMIN_CONTACTS, ADMIN_ADDRESS) VALUES (4, 'Ivy', 'ivy.admin@example.com', '456 Governance St');
INSERT INTO ADMIN (ADMIN_ID, ADMIN_NAME, ADMIN_CONTACTS, ADMIN_ADDRESS) VALUES (5, 'Jack', 'jack.admin@example.com', '567 Regulation Ln');

-- Insert data into CATEGORIES
INSERT INTO CATEGORIES (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DESCRIPTION) VALUES (1, 'Health', 'Health-related fundraising campaigns');
INSERT INTO CATEGORIES (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DESCRIPTION) VALUES (2, 'Education', 'Education-related fundraising campaigns');
INSERT INTO CATEGORIES (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DESCRIPTION) VALUES (3, 'Environment', 'Environment-related fundraising campaigns');
INSERT INTO CATEGORIES (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DESCRIPTION) VALUES (4, 'Animal Welfare', 'Animal welfare-related fundraising campaigns');
INSERT INTO CATEGORIES (CATEGORY_ID, CATEGORY_NAME, CATEGORY_DESCRIPTION) VALUES (5, 'Disaster Relief', 'Disaster relief fundraising campaigns');

-- Insert data into FUNDRAISING
INSERT INTO FUNDRAISING (RAISING_ID, DONATION_TITLE, FUNDRAISER_ID, TARGET, VERIFIER_ID, DATE_START, CATEGORY_ID) 
VALUES (1, 'Help Alice with Medical Bills', 1, 10000.00, 1, TO_DATE('01-JUN-24', 'DD-MON-RR'), 1);
INSERT INTO FUNDRAISING (RAISING_ID, DONATION_TITLE, FUNDRAISER_ID, TARGET, VERIFIER_ID, DATE_START, CATEGORY_ID) 
VALUES (2, 'Bob’s School Project', 2, 5000.00, 2, TO_DATE('02-JUN-24', 'DD-MON-RR'), 2);
INSERT INTO FUNDRAISING (RAISING_ID, DONATION_TITLE, FUNDRAISER_ID, TARGET, VERIFIER_ID, DATE_START, CATEGORY_ID) 
VALUES (3, 'Save the Forests', 3, 15000.00, 3, TO_DATE('03-JUN-24', 'DD-MON-RR'), 3);
INSERT INTO FUNDRAISING (RAISING_ID, DONATION_TITLE, FUNDRAISER_ID, TARGET, VERIFIER_ID, DATE_START, CATEGORY_ID) 
VALUES (4, 'Animal Shelter Renovation', 4, 20000.00, 4, TO_DATE('04-JUN-24', 'DD-MON-RR'), 4);
INSERT INTO FUNDRAISING (RAISING_ID, DONATION_TITLE, FUNDRAISER_ID, TARGET, VERIFIER_ID, DATE_START, CATEGORY_ID) 
VALUES (5, 'Disaster Relief Fund for Tornado Victims', 5, 25000.00, 5, TO_DATE('05-JUN-24', 'DD-MON-RR'), 5);

-- Insert data into DONATIONS
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) 
VALUES (1, 1, 100.00, TO_DATE('06-JUN-24', 'DD-MON-RR'), 'John', 'john.donator@example.com', 'Credit Card', 'Wishing you a speedy recovery!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) 
VALUES (2, 1, 200.00, TO_DATE('07-JUN-24', 'DD-MON-RR'), 'Emily', 'emily.donator@example.com', 'PayPal', 'Hope this helps!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) 
VALUES (3, 2, 50.00, TO_DATE('08-JUN-24', 'DD-MON-RR'), 'Michael', 'michael.donator@example.com', 'Credit Card', 'Great project!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) 
VALUES (4, 2, 75.00, TO_DATE('09-JUN-24', 'DD-MON-RR'), 'Sarah', 'sarah.donator@example.com', 'Debit Card', 'Good luck!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) 
VALUES (5, 3, 150.00, TO_DATE('10-JUN-24', 'DD-MON-RR'), 'Daniel', 'daniel.donator@example.com', 'Bank Transfer', 'Save the trees!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) 
VALUES (6, 3, 250.00, TO_DATE('11-JUN-24', 'DD-MON-RR'), 'Sophia', 'sophia.donator@example.com', 'Credit Card', 'Supporting the cause!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) 
VALUES (7, 4, 300.00, TO_DATE('12-JUN-24', 'DD-MON-RR'), 'James', 'james.donator@example.com', 'PayPal', 'Happy to help the animals!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) 
VALUES (8, 4, 400.00, TO_DATE('13-JUN-24', 'DD-MON-RR'), 'Isabella', 'isabella.donator@example.com', 'Debit Card', 'Renovation fund!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) 
VALUES (9, 5, 500.00, TO_DATE('14-JUN-24', 'DD-MON-RR'), 'Benjamin', 'benjamin.donator@example.com', 'Bank Transfer', 'Hope this helps the victims!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) 
VALUES (10, 5, 600.00, TO_DATE('15-JUN-24', 'DD-MON-RR'), 'Mia', 'mia.donator@example.com', 'Credit Card', 'Stay strong!');

INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (11, 1, 110.00, TO_DATE('16-JUN-24', 'DD-MON-RR'), 'Oliver', 'oliver.donator@example.com', 'Credit Card', 'Best wishes!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (12, 1, 210.00, TO_DATE('17-JUN-24', 'DD-MON-RR'), 'Ava', 'ava.donator@example.com', 'PayPal', 'Hope it helps!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (13, 2, 60.00, TO_DATE('18-JUN-24', 'DD-MON-RR'), 'William', 'william.donator@example.com', 'Credit Card', 'Good luck with the project!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (14, 2, 80.00, TO_DATE('19-JUN-24', 'DD-MON-RR'), 'Sophia', 'sophia.donator@example.com', 'Debit Card', 'You can do it!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (15, 3, 160.00, TO_DATE('20-JUN-24', 'DD-MON-RR'), 'Lucas', 'lucas.donator@example.com', 'Bank Transfer', 'Let’s make a difference!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (16, 3, 260.00, TO_DATE('21-JUN-24', 'DD-MON-RR'), 'Amelia', 'amelia.donator@example.com', 'Credit Card', 'Great cause!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (17, 4, 310.00, TO_DATE('22-JUN-24', 'DD-MON-RR'), 'Mason', 'mason.donator@example.com', 'PayPal', 'Keep up the good work!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (18, 4, 410.00, TO_DATE('23-JUN-24', 'DD-MON-RR'), 'Ella', 'ella.donator@example.com', 'Debit Card', 'Proud to support!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (19, 5, 510.00, TO_DATE('24-JUN-24', 'DD-MON-RR'), 'Ethan', 'ethan.donator@example.com', 'Bank Transfer', 'All the best!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (20, 5, 610.00, TO_DATE('25-JUN-24', 'DD-MON-RR'), 'Harper', 'harper.donator@example.com', 'Credit Card', 'Stay safe!');

INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (21, 1, 120.00, TO_DATE('26-JUN-24', 'DD-MON-RR'), 'Alexander', 'alexander.donator@example.com', 'Credit Card', 'Good luck!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (22, 1, 220.00, TO_DATE('27-JUN-24', 'DD-MON-RR'), 'Mia', 'mia.donator@example.com', 'PayPal', 'You’re doing great!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (23, 2, 70.00, TO_DATE('28-JUN-24', 'DD-MON-RR'), 'Sebastian', 'sebastian.donator@example.com', 'Credit Card', 'Keep going!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (24, 2, 90.00, TO_DATE('29-JUN-24', 'DD-MON-RR'), 'Abigail', 'abigail.donator@example.com', 'Debit Card', 'All the best!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (25, 3, 170.00, TO_DATE('30-JUN-24', 'DD-MON-RR'), 'Daniel', 'daniel.donator@example.com', 'Bank Transfer', 'Great initiative!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (26, 3, 270.00, TO_DATE('01-JUL-24', 'DD-MON-RR'), 'Charlotte', 'charlotte.donator@example.com', 'Credit Card', 'Good job!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (27, 4, 320.00, TO_DATE('02-JUL-24', 'DD-MON-RR'), 'Elijah', 'elijah.donator@example.com', 'PayPal', 'Well done!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (28, 4, 420.00, TO_DATE('03-JUL-24', 'DD-MON-RR'), 'Sofia', 'sofia.donator@example.com', 'Debit Card', 'Proud of you!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (29, 5, 520.00, TO_DATE('04-JUL-24', 'DD-MON-RR'), 'Jackson', 'jackson.donator@example.com', 'Bank Transfer', 'Stay strong!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS, PAYMENT_METHOD, MESSAGES) VALUES (30, 5, 620.00, TO_DATE('05-JUL-24', 'DD-MON-RR'), 'Grace', 'grace.donator@example.com', 'Credit Card', 'We believe in you!');

INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (31, 1, 700.00, TO_DATE('16-JUN-24', 'DD-MON-RR'), 'Olivia', 'olivia.donator@example.com', 'Credit Card', 'Keep up the good work!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (32, 1, 650.00, TO_DATE('17-JUN-24', 'DD-MON-RR'), 'Liam', 'liam.donator@example.com', 'PayPal', 'All the best!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (33, 2, 750.00, TO_DATE('18-JUN-24', 'DD-MON-RR'), 'Emma', 'emma.donator@example.com', 'Credit Card', 'Great initiative!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (34, 2, 780.00, TO_DATE('19-JUN-24', 'DD-MON-RR'), 'Noah', 'noah.donator@example.com', 'Debit Card', 'Happy to contribute!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (35, 3, 725.00, TO_DATE('20-JUN-24', 'DD-MON-RR'), 'Ava', 'ava.donator@example.com', 'Bank Transfer', 'Save our planet!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (36, 3, 600.00, TO_DATE('21-JUN-24', 'DD-MON-RR'), 'Ethan', 'ethan.donator@example.com', 'Credit Card', 'Happy to help!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (37, 4, 780.00, TO_DATE('22-JUN-24', 'DD-MON-RR'), 'Sophia', 'sophia.donator@example.com', 'PayPal', 'Good luck with the campaign!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (38, 4, 520.00, TO_DATE('23-JUN-24', 'DD-MON-RR'), 'Jackson', 'jackson.donator@example.com', 'Debit Card', 'All the best for your goal!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (39, 5, 700.00, TO_DATE('24-JUN-24', 'DD-MON-RR'), 'Isabella', 'isabella.donator@example.com', 'Credit Card', 'Keep pushing forward!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (40, 5, 800.00, TO_DATE('25-JUN-24', 'DD-MON-RR'), 'Mason', 'mason.donator@example.com', 'Bank Transfer', 'Happy to support!');

INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (41, 1, 550.00, TO_DATE('26-JUN-24', 'DD-MON-RR'), 'Mia', 'mia.donator@example.com', 'Credit Card', 'You are doing great work!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (42, 2, 600.00, TO_DATE('27-JUN-24', 'DD-MON-RR'), 'Lucas', 'lucas.donator@example.com', 'PayPal', 'Keep it up!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (43, 3, 500.00, TO_DATE('28-JUN-24', 'DD-MON-RR'), 'Charlotte', 'charlotte.donator@example.com', 'Debit Card', 'Great cause!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (44, 4, 680.00, TO_DATE('29-JUN-24', 'DD-MON-RR'), 'Harper', 'harper.donator@example.com', 'Credit Card', 'Supporting you all the way!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (45, 5, 780.00, TO_DATE('30-JUN-24', 'DD-MON-RR'), 'Ella', 'ella.donator@example.com', 'Bank Transfer', 'Wishing you success!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (46, 1, 770.00, TO_DATE('01-JUL-24', 'DD-MON-RR'), 'Aiden', 'aiden.donator@example.com', 'Credit Card', 'Doing great, keep going!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (47, 2, 780.00, TO_DATE('02-JUL-24', 'DD-MON-RR'), 'Grace', 'grace.donator@example.com', 'PayPal', 'All the best for your efforts!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (48, 3, 750.00, TO_DATE('03-JUL-24', 'DD-MON-RR'), 'Elijah', 'elijah.donator@example.com', 'Debit Card', 'Proud of your initiative!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (49, 4, 790.00, TO_DATE('04-JUL-24', 'DD-MON-RR'), 'Amelia', 'amelia.donator@example.com', 'Credit Card', 'Keep going strong!');
INSERT INTO DONATIONS (DONATION_ID, RAISING_ID, AMOUNT, DONATION_DATE, DONATOR_NAME, CONTACTS,PAYMENT_METHOD, MESSAGES)VALUES (50, 5, 800.00, TO_DATE('05-JUL-24', 'DD-MON-RR'), 'Jack', 'jack.donator@example.com', 'Bank Transfer', 'Keep up the good work!');



-- Insert data into COMMENTS
INSERT INTO COMMENTS (COMMENT_ID, RAISING_ID, USER_ID, COMMENT_TEXT, COMMENT_DATE) 
VALUES (1, 1, 1, 'Get well soon, Alice!', TO_DATE('06-JUN-24', 'DD-MON-RR'));
INSERT INTO COMMENTS (COMMENT_ID, RAISING_ID, USER_ID, COMMENT_TEXT, COMMENT_DATE) 
VALUES (2, 2, 2, 'Good luck with your project, Bob!', TO_DATE('07-JUN-24', 'DD-MON-RR'));
INSERT INTO COMMENTS (COMMENT_ID, RAISING_ID, USER_ID, COMMENT_TEXT, COMMENT_DATE) 
VALUES (3, 3, 3, 'We need to protect our forests!', TO_DATE('08-JUN-24', 'DD-MON-RR'));
INSERT INTO COMMENTS (COMMENT_ID, RAISING_ID, USER_ID, COMMENT_TEXT, COMMENT_DATE) 
VALUES (4, 4, 4, 'Great cause for the animals!', TO_DATE('09-JUN-24', 'DD-MON-RR'));
INSERT INTO COMMENTS (COMMENT_ID, RAISING_ID, USER_ID, COMMENT_TEXT, COMMENT_DATE) 
VALUES (5, 5, 5, 'Hope this helps the victims!', TO_DATE('10-JUN-24', 'DD-MON-RR'));
