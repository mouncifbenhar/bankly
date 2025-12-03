CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    registration_date DATE
);

CREATE TABLE Advisors (
    advisor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    account_number VARCHAR(50),
    balance DECIMAL(12,2),
    account_type ENUM('Checking','Savings','Business'),
    customerid INT,
    advisorid INT,
    FOREIGN KEY (customerid) REFERENCES Customers(customer_id),
    FOREIGN KEY (advisorid) REFERENCES Advisors(advisor_id)
);

CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL,
    transaction_type ENUM('debit','credit') NOT NULL,
    transaction_date DATE NOT NULL,
    accountid INT NOT NULL,
    FOREIGN KEY (accountid) REFERENCES Accounts(account_id)
);

INSERT INTO Customers (full_name, email, phone, registration_date)
VALUES 
('monsef benhar','monsef@gmail.com','0707070707',CURDATE()), 
('mouad zyani','mouad@gmail.com','0706060606',CURDATE()),
('wassim rifi','wassim@gmail.com','0705050505',CURDATE()),
('khalid botwil','khalid@gmail.com','0704040404',CURDATE()),
('bouchra depanag','bouchra@gmail.com','0703030303',CURDATE());



INSERT INTO Advisors (full_name,email)
VALUES
('youssef el amire','yousef@gmail.com'),
('sara boutaleb','sara@gmail.com'),
('hamza idrisi','hamza@gmail.com'),
('imane lock','imane@gmail.com'),
('walid moutawakil','walid@gmail.com');



INSERT INTO Accounts (account_number, balance, account_type, customerid, advisorid)
VALUES
('ACCT1001', 2500.75, 'Savings', 1, 1),
('ACCT1002', 12000.00, 'Checking', 2, 2),
('ACCT1003', 540.20, 'Checking', 3, 2),
('ACCT1004', 9999.99, 'Business', 4, 3),
('ACCT1005', 150.00, 'Checking', 5, 2);



INSERT INTO Transactions (amount, transaction_type, transaction_date, accountid)
VALUES
(250.00, 'debit', CURDATE(), 1),
(1200.50, 'credit', CURDATE(), 2),
(75.99, 'debit', CURDATE(), 3),
(5000.00, 'debit', CURDATE(), 4),
(320.10, 'credit', CURDATE(), 5);


