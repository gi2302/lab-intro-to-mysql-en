-- Drop the existing database if it exists
DROP DATABASE IF EXISTS lab_mysql;

-- Create a new database
CREATE DATABASE lab_mysql;
USE lab_mysql;

-- Cars table
CREATE TABLE Cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    VIN CHAR(17) NOT NULL, -- Not unique anymore
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);


-- Customers table
CREATE TABLE Customers (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Primary key and auto-incremented
    customer_id INT NOT NULL UNIQUE, -- Unique but not the primary key
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    postal VARCHAR(10)
);

-- Salespersons table
CREATE TABLE Salespersons (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Primary key and auto-incremented
    staff_id CHAR(5) NOT NULL UNIQUE, -- Unique but not the primary key
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50)
);

-- Invoices table
CREATE TABLE Invoices (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Primary key and auto-incremented
    invoice_number INT NOT NULL UNIQUE, -- Unique but not the primary key
    date DATE NOT NULL,
    car INT NOT NULL, -- References id in Cars
    customer INT NOT NULL, -- References id in Customers
    salesperson INT NOT NULL, -- References id in Salespersons
    FOREIGN KEY (car) REFERENCES Cars(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (customer) REFERENCES Customers(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (salesperson) REFERENCES Salespersons(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
