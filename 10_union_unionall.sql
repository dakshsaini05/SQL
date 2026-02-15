/*
UNION AND UNION ALL
1. The UNION operator in SQL is used to combine the result sets of two or more SELECT statements.
2. It removes duplicates by default.
3. If you want to include all rows including duplicates, use UNION ALL.
*/

SELECT * FROM admin_users;

-- UNION (REMOVE DUPLICATES)
SELECT name FROM users UNION SELECT name FROM admin_users;

-- UNION ALL (KEEPS DUPLICATES)
SELECT name FROM users UNION ALL SELECT name FROM admin_users;

-- USERS FROM USERS TABLE MAKRED User AND Admin THOSE ARE FROM ADMIN
SELECT name, 'User' AS role FROM users UNION SELECT name, 'Admin' AS role FROM admin_users;

SELECT name FROM users UNION SELECT name FROM admin_users ORDER BY name;

/*
RULES OF UNION
1. The number of columns and their data types must match in all SELECT statements.
2. UNION removes duplicates by default.
3. UNION ALL keeps duplicates.

WHEN TO USE UNION
1. When you have two similar tables (like current and archived data).
2. When you need to combine filtered results (e.g., high-salary users from two sources).
3. When performing cross-category reporting.
*/