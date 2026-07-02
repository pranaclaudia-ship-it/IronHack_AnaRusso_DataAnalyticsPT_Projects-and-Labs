DROP SCHEMA lab_sql_database;
CREATE SCHEMA lab_sql_database;
USE lab_sql_database;

CREATE TABLE lab_sql_database.cars (
vehicle_identification_VIN VARCHAR (17),
manufacturer VARCHAR (50),
model VARCHAR (50),
year INT,
color ENUM('black', 'white', 'red')
);

CREATE TABLE lab_sql_database.customers (
customer_ID VARCHAR (50) PRIMARY KEY,
name VARCHAR (50),
phone_number VARCHAR (50),
email VARCHAR (100),
address VARCHAR (100),
city VARCHAR (50),
state_province VARCHAR (50),
country VARCHAR (50),
zip_code VARCHAR(10)
);

CREATE TABLE lab_sql_database.salesperson (
staff_ID VARCHAR (50) PRIMARY KEY,
name VARCHAR (50),
store VARCHAR (50)
);

CREATE TABLE lab_sql_database.invoices (
invoice_number VARCHAR (50),
date INT,
car VARCHAR(50),
customer VARCHAR (50),
salesperson VARCHAR (50)
);

ALTER TABLE invoices
MODIFY COLUMN date DATE;
