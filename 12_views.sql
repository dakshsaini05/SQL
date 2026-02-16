/*
VIEWS
1. A view in MySQL is a virtual table based on the result of a SELECT query.
2. It does not store data itself — it always reflects the current data in the base tables.

Views are useful when:-
1. You want to simplify complex queries
2. You want to reuse logic
3. You want to hide certain columns from users
4. You want a “live snapshot” of filtered data
*/

-- CREATING VIEW
CREATE VIEW rich_users AS
SELECT * FROM users WHERE salary > 70000;

-- SELECTING VIEW
SELECT * FROM rich_users;

-- DROPPING VIEW
DROP VIEW rich_users;