USE startersql;
SELECT * FROM programmers;

-- Inserting data into the table
INSERT INTO programmers VALUES
(1, 'daksh@saini.com', 'Daksh', 'Male', '2015-07-13', DEFAULT);

-- Inserting data into specific columns
INSERT INTO programmers (name, email, gender, date_of_birth) VALUES
('Puneet', 'puneet@123.com', 'Male', '2012-12-12');

-- Inserting multiple data at once
INSERT INTO programmers (name, email, gender, date_of_birth) VALUES
('Priya', 'priya@123.com', 'Female', '2010-04-12'),
('Vansh', 'vansh@123.com', 'Male', '2012-01-12'),
('Piyush', 'piyush@123.com', 'Male', '2012-07-10');