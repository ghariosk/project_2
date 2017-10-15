# SQL
## Basics
### Create a table
	CREATE TABLE students (
	  id SERIAL PRIMARY KEY,
	  first_name VARCHAR NOT NULL,
	  last_name VARCHAR NOT NULL,
	  quote TEXT,
	  birthday VARCHAR,
	  ssn INT NOT NULL UNIQUE
	);
### View a table
	SELECT * FROM students;
### Insert into a table
	INSERT INTO students (first_name, last_name) VALUES ('Luke', 'Heudebourck');
### Update a table
	UPDATE students SET first_name = 'Andrew' WHERE first_name = 'Luke';
### View a record
	SELECT * FROM students WHERE last_name = 'Heudebourck';
### Delete a record
	DELETE FROM students WHERE first_name = 'Andrew';
### Delete table
	DROP TABLE students
	;
## Databases
### Create a database
	createdb my_blog
### Connect an SQL file to a database
	psql -d my_blog < seed.sql