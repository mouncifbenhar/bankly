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


