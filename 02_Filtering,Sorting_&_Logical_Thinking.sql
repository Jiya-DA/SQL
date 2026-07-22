CREATE DATABASE empDB;

USE empDB;

CREATE TABLE employees(
id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(8,2),
age INT 
);

INSERT INTO employees
VALUES (1,'Amit','IT',60000,28),
		(2,'Sneha','HR'	,45000,25),
		(3,'Raj','Finance',70000,32),
		(4,'Simran','IT',52000,27),
		(5,'Karan','Marketing',40000,24);

SELECT * FROM employees;

-- WHERE	--Filter data 	--syntax : WHERE condition;
SELECT * FROM employees
WHERE salary>50000;

-- Operators     --Define conditions    -- Comparison operators =, !=, >, <, >=, <=
SELECT * FROM employees
WHERE age >= 25;

SELECT * FROM employees
WHERE age != 25;

-- Operators  --Logical Operators AND,OR,NOT
SELECT * FROM employees
WHERE department='IT' AND salary>50000;

SELECT * FROM employees
WHERE department='HR' OR department='IT';

SELECT * FROM employees
WHERE NOT department='HR';

-- BETWEEN			--Closed interval
SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 70000;

-- IN	--specify multiple values in a WHERE clause  --Syntax:WHERE column_name IN (value1, value2, ...);
SELECT * FROM employees
WHERE department IN ('IT','HR','Finance');

-- LIKE		--search for a specific pattern		--Syntax:WHERE column_name LIKE 'pattern';
-- A% (starts with A),%A (ends with A),%A% (contains A) 
SELECT * FROM employees
WHERE name LIKE 'A%';

SELECT * FROM employees
WHERE name LIKE '%A';

SELECT * FROM employees
WHERE name LIKE '%R%';

-- ORDER BY 	--Sorts data 	-- Sntax : ORDER BY column_name [ASC | DESC];
SELECT * FROM employees
ORDER BY salary DESC;

-- LIMIT/TOP 	--restrict the number of rows 	 --Syntax: LIMIT number_of_rows;
SELECT * FROM employees
LIMIT 5;

-- Practice Questions
-- 1.Salary > 40000
SELECT * FROM employees
WHERE salary>40000;

-- 2.Department IT
SELECT * FROM employees
WHERE department='IT';

-- 3.Age between 25-30
SELECT * FROM employees
WHERE age BETWEEN 25 and 30;

-- 4.Name starts with S
SELECT * FROM employees
WHERE name LIKE 'S%';

-- 5.Top 3 salaries
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3 ;

-- 6.NOT HR
SELECT * FROM employees
WHERE NOT department='HR';














