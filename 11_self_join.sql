/*
SELF JOIN
1. A Self JOIN is a regular join, but the table is joined with itself.
2. This is useful when rows in the same table are related to each other.
3. For example, when users refer other users, and we store the ID of the person who referred them in the same users table.
*/

ALTER TABLE users ADD COLUMN referred_by_id INT;
UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3, 13, 14, 15, 16, 18, 20); -- User 1 referred Users 2, 3, 13, 14, 15, 16, 18, 20
UPDATE users SET referred_by_id = 2 WHERE id = 4; -- User 2 referred User 4 

-- Use a Self JOIN to Get Referrer Names
SELECT
a.id,
a.name AS user_name,
b.name AS referred_by_name
FROM users a
INNER JOIN users b ON a.referred_by_id = b.id;

/*
Explanation:
1. a refers to the user being queried.
2. b refers to the user who referred them.
3. LEFT JOIN is used so that users with NULL in referred_by_id are also included.

*/