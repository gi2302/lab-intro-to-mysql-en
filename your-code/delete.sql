-- Use the database
USE lab_mysql;

-- Delete the duplicate car entry with ID = 5
DELETE FROM Cars
WHERE id = 5;

-- Verify the updated Cars table
SELECT * FROM Cars;
