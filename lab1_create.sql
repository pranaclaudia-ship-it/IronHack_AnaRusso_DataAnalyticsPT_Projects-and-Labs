CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    vehicle_identification_VIN VARCHAR(17) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color ENUM('black', 'white', 'red')
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_ID VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50),
    phone_number VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(10)
);

DROP TABLE IF EXISTS salesperson;
CREATE TABLE salesperson (
staff_ID VARCHAR (50) PRIMARY KEY,
name VARCHAR (50),
store VARCHAR (50)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
invoice_number VARCHAR (50),
date INT,
car VARCHAR(50),
customer VARCHAR (50),
salesperson VARCHAR (50)
);