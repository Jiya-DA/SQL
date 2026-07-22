CREATE DATABASE studentDB;
USE studentDB;

CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(20),
  marks INT
);

INSERT INTO students VALUES
(1, 'Aman', 'BCA', 75),
(2, 'Neha', 'MCA', 90),
(3, 'Karan', 'BCA', 65),
(4, 'Riya', 'BBA', 80),
(5, 'Meena', 'MCA', 88);

--  GROUP BY Clause		--Group rows that have the same values into summary rows
-- Syntax: 			SELECT column, AGGREGATE_FUNCTION(column) AS new_column_name
--					FROM table_name
--					GROUP BY column;

-- Average marks per course
SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course;

-- HAVING Clause 		-- Used after GROUP BY to filter aggregated results
SELECT course,AVG(marks) AS Average_marks
FROM students
GROUP BY course
HAVING AVG(marks)>70;

-- LIMIT Clause (MySQL Specific)	-- Used to limit the number of records returned.
SELECT * FROM students
LIMIT 5;

--  IN Clause			-- Filters data that matches any value in a given list
SELECT * FROM students
WHERE course IN ('BCA','MCA');

--   BETWEEN Clause			--Filters records within a given range
SELECT * FROM students
WHERE marks BETWEEN 60 AND 90;

--  LIKE Clause						-- Performs pattern matching using %
SELECT * FROM students
WHERE name LIKE 'A%';

-- IN and BETWEEN
--  Students in BCA or MCA with marks between 70 and 90
SELECT * FROM students
WHERE course IN ('BCA', 'MCA')
AND marks BETWEEN 70 AND 90;

-- Aggregate Functions					-- Summary of student marks
SELECT 
  COUNT(*) AS total_students,
  SUM(marks) AS total_marks,
  AVG(marks) AS average_marks,
  MAX(marks) AS highest_marks,
  MIN(marks) AS lowest_marks
FROM students;

-- DISTINCT --Remove duplicate rows from a query's result set, returning only unique values  -- Used immediately after SELECT.
-- Syntax : SELECT DISTINCT column1, column2 
-- 					FROM table_name;
SELECT DISTINCT course FROM students;

-- PRACTICE TASKS
-- 1.Count the total number of students in the table.
SELECT COUNT(*) AS Total_students
FROM students;

-- 2.Display the highest and lowest marks.
SELECT MAX(marks) AS Highest_marks,MIN(marks) AS Lowest_marks
FROM students;

-- 3.Show total marks obtained by students in each course.
SELECT SUM(marks) AS TotalMarks,course
FROM students
GROUP BY course;

-- 4. Display the average marks per course using GROUP BY.
SELECT AVG(marks) AS AvgMarks,course
FROM students
GROUP BY course;

-- 5.Show only those courses whose average marks exceed 80 using HAVING.
SELECT AVG(marks) AS AvgMarks,course
FROM students
GROUP BY course
HAVING AVG(marks) > 80;

-- 6.Display the top 2 scoring students using ORDER BY and LIMIT.
SELECT name,marks,course
FROM students
ORDER BY marks DESC
LIMIT 2;

-- 7.Show all students whose marks are between 60 and 90.
SELECT name,marks
FROM students
WHERE marks BETWEEN 60 AND 90;

-- 8.Display all students enrolled in BCA or MCA using IN.
SELECT name,course
FROM students
WHERE course IN ('BCA','MCA');

-- 9.Find the total number of unique courses (COUNT(DISTINCT course)).
SELECT COUNT(DISTINCT course) AS Unique_courses
FROM students;

-- 10.Display names of students whose names start with ‘N’ using 
SELECT name
FROM students
WHERE name LIKE 'N%';
























