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

SELECT * FROM Accounts WHERE account_type = "Savings";

SELECT * FROM Accounts WHERE customerid = 1 ;

SELECT * FROM Accounts ORDER BY balance ASC;

SELECT * FROM Transactions;

SELECT * FROM Transactions WHERE transaction_type = "debit" ;

SELECT * FROM Transactions WHERE transaction_type = "credit" ;

SELECT * FROM Transactions WHERE accountid = 1 ;

SELECT * FROM Transactions WHERE amount >= 500 ;

SELECT * FROM Transactions WHERE amount BETWEEN 100 AND 1000;

SELECT * FROM Transactions ORDER BY amount DESC;

SELECT * FROM Transactions ORDER BY amount DESC LIMIT 2;

SELECT * FROM Transactions ORDER BY transaction_date DESC;

SELECT * FROM Transactions ORDER BY transaction_date DESC LIMIT 3 ;

SELECT Customers.* FROM Customers JOIN Accounts ON customer_id = customerid WHERE advisorid = 2;

SELECT
  Accounts.account_id,
  Accounts.account_number,
  Accounts.balance,
  Accounts.account_type,
  Customers.full_name AS customer_name,
  Advisors.full_name  AS advisor_name
FROM Accounts
JOIN Customers
  ON Customers.customer_id = Accounts.customerid
JOIN Advisors
  ON Advisors.advisor_id = Accounts.advisorid;







