BEGIN;

DROP TABLE IF EXISTS students;

CREATE TABLE students(
  id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),

);


COMMIT;

