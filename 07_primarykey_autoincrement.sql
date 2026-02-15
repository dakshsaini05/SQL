/*
[PRIMARY KEY]
1. A PRIMARY KEY is a constraint in SQL that uniquely identifies each row in a table.
2. Must be unique
3. Cannot be NULL
4. Is used to identify rows in a table
5. Can be a single column or a combination of columns
6. Each table can have only one primary key

[Can I Drop a PRIMARY KEY?]
1. Yes, but it is more restricted than dropping a UNIQUE constraint.
2. This may fail if the primary key is being used elsewhere (like in a foreign key or auto_increment column)

[AUTO INCREMENT]
1. PRIMARY KEY is often used with the AUTO_INCREMENT attribute to automatically generate unique values for new rows
2. every time you insert a new row, MySQL will automatically assign a unique value to the id column
3. You can change the starting value of AUTO_INCREMENT using -> ALTER TABLE users AUTO_INCREMENT = 1000;


[KEY POINTS]
1. Use PRIMARY KEY for the main identifier of a row.
2. Use UNIQUE for enforcing non-duplicate values in other columns (like email or phone).
3. You can have only one primary key, but you can have many unique constraints.
*/
