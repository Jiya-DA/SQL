
USE STUDENTDB;
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(30),
  marks INT
);

INSERT INTO students (id, name, course, marks) VALUES
(1, 'Aman', 'BCA', 78),
(2, 'Neha', 'MCA', 90),
(3, 'Riya', 'BBA', 62),
(4, 'Karan', 'BCA', 55),
(5, 'Meena', 'MCA', 88);

-- Filtering + Sorting Combined
-- Display Only BCA Students, Sorted by Marks (Lowest to Highest)
SELECT name, marks
FROM students
WHERE course = 'BCA'
ORDER BY marks ASC;

-- UPDATE Command	--Used to modify existing data in a table. 	--Use a WHERE clause to avoid updating all records.
-- Syntax: 				UPDATE table_name
--						SET column1 = value1, column2 = value2
-- 						WHERE condition;

-- To Turn Off Safe Mode: Execute SET SQL_SAFE_UPDATES = 0;
-- To Turn On Safe Mode: Execute SET SQL_SAFE_UPDATES = 1;


SET SQL_SAFE_UPDATES = 0;

UPDATE students
SET marks = 95
WHERE name = 'Neha';

SELECT * FROM students WHERE name = 'Neha';

-- DELETE Command	-- Used to remove records from a table.	-- Without WHERE, all data in the table will be deleted.
-- Syntax:  DELETE FROM table_name
-- 			WHERE condition;


DELETE FROM students
WHERE id = 4;

SELECT * FROM students;

--  PRACTICE TASKS
-- 1. Display all students who have marks greater than 70.
SELECT * FROM students
WHERE marks>70;

-- 2. Show names and courses of students enrolled in BCA.
SELECT name,course
FROM students
WHERE course='BCA';

-- 3. Display all students whose names start with the letter ‘A’.
SELECT * FROM students
WHERE name LIKE 'A%';

-- 4. List students whose marks are between 60 and 90.
SELECT * FROM students
WHERE marks BETWEEN 60 AND 90;

-- 5. Show all students except those in the BBA course.
SELECT * FROM students
WHERE NOT course='BBA';

-- 6. Display student names and marks, sorted by marks in descending order
SELECT name,marks FROM students
ORDER BY marks DESC;

-- 7. Display all students whose course name ends with “A”.
SELECT * FROM students
WHERE course LIKE '%A';

-- 8. Update marks of a student named ‘Riya’ to 85.
UPDATE students
SET marks=85
WHERE name = 'Riya';

SELECT * FROM students;

-- 9. Delete the student record whose id = 5.
DELETE FROM students
WHERE id=5;

SELECT * FROM students;

-- 10. Show all students with marks greater than 60 and order them by name (A–Z).
SELECT name,marks
FROM students
WHERE marks>60
ORDER BY name ASC;


