-- Use the database
USE lab_mysql;

-- Update Paige Turner's store name from 'Mimia' to 'Miami' using her unique staff_id
UPDATE Salespersons
SET store = 'Miami'
WHERE staff_id = '00005';

-- Update email addresses for customers using their unique customer_id
UPDATE Customers
SET email = 'ppicasso@gmail.com'
WHERE customer_id = 10001;

UPDATE Customers
SET email = 'lincoln@us.gov'
WHERE customer_id = 20001;

UPDATE Customers
SET email = 'hello@napoleon.me'
WHERE customer_id = 30001;

-- Verify the updates
SELECT * FROM Salespersons;
SELECT * FROM Customers;
