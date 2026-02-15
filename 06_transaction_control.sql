/*
AUTO COMMIT AND TRANSACTIONS
1. By default MySQL operates in AutoCommit mode. 
2. This means that every SQL statement is treated as a transaction(group of one or more SQL operations that are treated as a single unit)
3. However, for more control over when changes are saved, you can turn AutoCommit off.
4. And manage transactions manually.
*/

SET autocommit = 0; -- AUTO COMMIT TURNED OFF(now tell SQL explicitly to commit and make changes)
SELECT * FROM users;
DELETE FROM users WHERE id = 6; -- DELETED WRONG USER
ROLLBACK; -- SIMPLY ROLLABCK IT REVERT THE CHANGES TO THE LAST SAVE POINT(undoes all the changes since the last commit)
SELECT * FROM users;
DELETE FROM users WHERE id = 5; -- NOW DELETED THE RIGHT USER, NOW WE CAN COMMIT AND FINALIZE THE CHANGES
COMMIT; -- CHANGES MADE WILL BE PERMANENT FROM THIS POINT
SELECT * FROM users; -- NOW THAT WE COMMITED THE TRANSACTION THE USER IS NOW PERMANENTLY DELETED

SET autocommit = 1; -- AUTO COMMIT TURED ON(you should keep auto commit on if not needed)
