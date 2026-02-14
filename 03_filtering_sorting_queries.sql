-- Filtering rows with WHERE
SELECT * FROM users WHERE gender = 'Male';
SELECT * FROM users WHERE gender = 'Female';
SELECT * FROM users WHERE gender <> 'Male'; -- <> not equals to sign
SELECT * FROM users WHERE gender <> 'Female';
SELECT * FROM users WHERE date_of_birth < '1995-09-09';
SELECT * FROM users WHERE id > 10;
SELECT * FROM users WHERE id <= 10;

-- BETWEEN / AND / OR
SELECT * FROM users WHERE date_of_birth BETWEEN '1990-09-09' AND '1999-09-09';
SELECT * FROM users WHERE gender='Male' AND salary > '70000';
SELECT * FROM users WHERE gender='Male' OR salary > '65000';

-- IN
SELECT * FROM users WHERE gender IN ('Male', 'Female');

-- The ORDER BY = used to sort the result-set in ascending or descending order.
SELECT * FROM users WHERE gender='Male' OR salary > '65000' ORDER BY date_of_birth ASC; -- arranged in ascending order
SELECT * FROM users WHERE gender='Male' OR salary > '65000' ORDER BY date_of_birth DESC; -- arranged in descending order

-- LIMIT = used to control the number of records returned by a query
SELECT * FROM users WHERE gender='Male' OR salary > '65000' LIMIT 5;