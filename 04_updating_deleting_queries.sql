-- UPDATE = used to modify the existing records in a table.
UPDATE users SET salary  = 45000 WHERE id = 1; -- updating single data
UPDATE users SET salary  = 45000, email='aarav@aarav.com' WHERE id = 1; -- updating multiple data
UPDATE users SET salary = 70000 WHERE ID = 5;

-- DELETE = used to delete existing records in a table.
DELETE FROM users WHERE salary<65000;
SELECT * FROM users;