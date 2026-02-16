/*
SUBQUERIES
1. A subquery is a query nested inside another query
2. Subqueries are useful for breaking down complex problems into smaller parts
3. They can be used in:
	-> SELECT statements
	-> WHERE clauses
	-> FROM clauses
*/

-- find all users who earn more than the average salary of all users
SELECT * FROM users WHERE salary > (SELECT AVG(salary) FROM users);
-- IN ABOVE QUERY
-- The inner query: SELECT AVG(salary) FROM users returns the average salary
-- The outer query selects all users with a salary greater than that average


-- find users who have been referred by someone who earns more than ₹75,000
SELECT id, name, referred_by_id FROM users WHERE referred_by_id IN (SELECT id FROM users WHERE salary > 50000);
-- IN ABOVE QUERY
-- The inner query: SELECT id FROM users WHERE salary > 75000 returns a list of user IDs (referrers) who earn more than ₹75,000
-- The outer query selects users whose referred_by_id is in that list


/*
You can also use subqueries:
1. Inside SELECT columns (called scalar subqueries)
2. In the FROM clause to create derived tables
*/

-- EXAMPLE IN SELECT
SELECT name, salary,
(SELECT AVG(salary) FROM users) AS avg_salary
FROM users;