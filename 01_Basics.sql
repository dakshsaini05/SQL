-- Creating database
CREATE DATABASE startersql;

-- using the database
USE startersql;

-- Creating a table in the database
CREATE TABLE user (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Seeing the entire table
SELECT * FROM user;

-- Seeing a particular column
SELECT id FROM user;

-- Dropping database
DROP DATABASE startersql;

/* Data Types
1. INT: Integer type, used for whole numbers
2. VARCHAR(100): Variable-length string, up to 100 characters
3. ENUM: A string object with a value choosen from a list of permitted values. eg(gender ENUM('Male', 'Female','Other'))
4. DATE: Stores date values eg date_of_birth DATE
5. TIMESTAMP: Stores date and time, automatically set to the current timestamp when a row is created

Constraints
1. AUTO_INCREMENT : Automatically generates a unique number for each row.
2. PRIMARY KEY : Uniquely identifies each row in the table.
3. NOT NULL : Ensures a column cannot have a NULL value.
4. UNIQUE : Ensures all values in a column are different.
5. DEFAULT : Sets a default value for a column if no value is provided. eg.
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP , is_active BOOLEAN
DEFAULT TRUE
 */ 
 
-- Renaming table name 
RENAME TABLE user TO programmers;

-- Alter table = to modify the existing table adding, deleting or modifying columns
-- We use keywords ALTER with ADD/DROP/MODIFY
ALTER TABLE programmers ADD COLUMN is_active BOOLEAN DEFAULT TRUE; -- ADD 
SELECT * FROM programmers;
ALTER TABLE programmers DROP COLUMN is_active; -- DROP
SELECT * FROM programmers;
ALTER TABLE programmers MODIFY COLUMN name VARCHAR(150); -- MODIFY
SELECT * FROM programmers;
ALTER TABLE programmers MODIFY COLUMN email VARCHAR(100) AFTER id;
SELECT * FROM programmers;