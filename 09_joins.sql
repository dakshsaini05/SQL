/*
[JOINS]
1. used to combine rows from two or more tables based on related columns
2. usually a foreign key in one table referencing a primary key in another

[TYPES OF JOINS]
1. INNER JOIN = most basic type of join returns only the matching rows from both tables

2. LEFT JOIN = Returns all rows from the left table ( users ), and matching rows from the right table ( addresses ).
If no match is found, NULLs are returned.

3. RIGHT JOIN = Returns all rows from the right table ( addresses ), and matching rows from the
left table ( users ). If no match is found, NULLs are returned.

*/

-- Inner Join 
SELECT users.name, addresses.city FROM users INNER JOIN addresses ON users.id = addresses.user_id;
SELECT users.name, addresses.city, addresses.state FROM users INNER JOIN addresses ON users.id = addresses.user_id;

-- LEFT JOIN 
SELECT users.name, addresses.city FROM users LEFT JOIN addresses ON users.id = addresses.user_id;

-- RIGHT JOIN 
SELECT users.name, addresses.city FROM users RIGHT JOIN addresses ON users.id = addresses.user_id;