/*
Constraints = rules applied to table columns to ensure the accuracy, validity, and integrity of the data.
UNIQUE: Prevents duplicate values
NOT NULL: Ensures value is not NULL
CHECK: Restricts values using a condition
DEFAULT: Sets a default value
PRIMARY KEY: Uniquely identifies each row
AUTO_INCREMENT: Automatically generates unique numbers
*/


-- Functions = SQL functions help you analyze, transform, or summarize data in your tables

-- [AGGREGATE FUNCTIONS] = An aggregate function is a function that performs a calculation on a set of values, and returns a single value.
-- COUNT() = count the number of rows in a table
SELECT COUNT(*) FROM users; 
SELECT COUNT(*) FROM users WHERE gender = 'Male';
SELECT COUNT(*) FROM users WHERE gender = 'Female';

-- MAX() / MIN() = the smallest and largest values, respectively, from a column
SELECT MIN(salary) FROM users;
SELECT MAX(salary) FROM users;

-- SUM() = used to calculate the total of a numeric column
SELECT SUM(salary) FROM users;

-- AVG() = used to calculate average value of a numeric column
SELECT AVG(salary) FROM users;

-- [STRING FUNCTIONS] = help manipulate and format text data efficiently. They are widely used for cleaning, comparing, and extracting meaningful information from textual fields
-- LENGTH() = returns the length of a string
SELECT name, LENGTH(name) FROM users;

-- UPPER() / LOWER() = Convert names to lowercase or uppercase
SELECT name, UPPER(name), LOWER(name) FROM users;

-- CONCAT() = used to concatenate (combine) two or more strings into one string
SELECT name, CONCAT(LOWER(name), "2772") FROM users;

-- SUBSTRING() / SUBSTR() = used to extract a substring from a string, starting from a specified position
SELECT SUBSTRING('Hello World', 1, 5) AS SubStringExample;

-- LEFFT() / RIGHT() = allow you to extract a specified number of characters from the left or right side of a string
SELECT LEFT('Hello World', 5) AS LeftString;
SELECT RIGHT('Hello World', 5) AS RightString;

-- [DATE FUNCTIONS]
-- NOW() = tells the current date and time
SELECT name, NOW() FROM users; 

-- 	YEAR() / MONTH() / DAY() = tells the year, month or date from when a date or NOW() is pass in it
SELECT name, YEAR(date_of_birth) FROM users;
SELECT name, MONTH(date_of_birth) FROM users;
SELECT name, DAY(date_of_birth) FROM users;

-- DATEDIFF() = Find number of days between today and birthdate
SELECT name, DATEDIFF(CURDATE(), date_of_birth) FROM users;

-- [MATHEMATICAL FUNCTIONS]
-- ROUND() / FLOOR() = lowest nearest / CEIL() = highest nearest
SELECT salary, ROUND(salary), FLOOR(salary), CEIL(salary) FROM users;

-- MOD() = Gives remainder from the specified values
SELECT id, MOD(id, 2) AS remainder FROM users;

-- [CONDITIONAL FUNCTIONS]
SELECT name, gender, IF(gender = 'Female', 'Yes', 'No') FROM users;


-- AS = name the generated column
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;