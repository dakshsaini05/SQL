/*
INDEXES
1. Indexes in MySQL are used to speed up data retrieval
2. They work like the index of a book — helping the database engine find rows faster, especially for searches, filters, and joins
*/

-- VIWEING INDEXES ON A TABLE
SHOW INDEXES FROM users;

-- CREATING SINGLE COLUMN INDEX
-- Suppose you’re frequently searching users by their email . You can speed this up by indexing the email column.
CREATE INDEX idx_gender ON users(gender);
-- What this does:
-- Creates an index named idx_email
-- Improves performance of queries like:-
SELECT * FROM users WHERE gender = 'Male';
/*
Important Notes:- 
1. Indexes consume extra disk space
2. Indexes slow down INSERT , UPDATE , and DELETE operations slightly (because the index must be updated)
3. Use indexes only when needed (i.e., for columns used in WHERE , JOIN , ORDER BY )
*/

-- CREATING MULTI-COLUMN INDEX
CREATE INDEX idx_gender_salary ON users(gender, salary);

-- DROPPING INDEX
DROP INDEX email ON users;

/*
SUMMARY
SHOW INDEXES = View current indexes on a table
CREATE INDEX = Create single or multi-column indexes
DROP INDEX = Remove an index
Use when = Query performance on large tables is a concern
Avoid on = Columns that are rarely queried or always unique
*/
