-- Use the database
USE lab_mysql;

-- Insert data into Cars table
INSERT INTO Cars (VIN, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- Insert data into Customers table
INSERT INTO Customers (customer_id, name, phone, email, address, city, state_province, country, postal) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insert data into Salespersons table
INSERT INTO Salespersons (staff_id, name, store) VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

-- Insert data into Invoices table
INSERT INTO Invoices (invoice_number, date, car, customer, salesperson) VALUES
(852399038, '2018-08-22', 1, 2, 4),
(731166526, '2018-12-31', 4, 1, 6),
(271135104, '2019-01-22', 3, 3, 8);

-- Show the data in each table
SELECT * FROM Cars;
SELECT * FROM Customers;
SELECT * FROM Salespersons;
SELECT * FROM Invoices;
