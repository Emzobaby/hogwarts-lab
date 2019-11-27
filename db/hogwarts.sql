DROP TABLE IF EXISTS students;

CREATE TABLE students(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  houese VARCHAR,
  age INT
);
