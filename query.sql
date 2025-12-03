INSERT INTO Customers(full_name, email, phone, registration_date)
VALUES
("redwan ridawi", "redwan@gmail.com", "0601010101",CURDATE());

UPDATE Customers SET phone = "0607080901" WHERE customer_id = 1;

SELECT * FROM Customers;

SELECT full_name, email FROM Customers;

SELECT * FROM Accounts;

SELECT account_number FROM Accounts;

SELECT * FROM Accounts WHERE balance > 10000;

SELECT * FROM Accounts WHERE balance <= 0 ;




