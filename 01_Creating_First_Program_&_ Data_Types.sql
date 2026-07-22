-- Create a Database 	-- syntax : CREATE DATABASE database_name;
CREATE DATABASE schoolDB;

-- Use Database		-- syntax : USE database_name:
USE schoolDB;

-- Create a Table
	-- syntax : CREATE TABLE table_name (
  -- 					 column_name data_type(Size) constraint,
 -- 					 column_name data_type(Size) constraint
 --  					);
 CREATE TABLE Students(
 ID INT PRIMARY KEY,
 Name VARCHAR(50),
 Age INT,
 Course VARCHAR(50),
 Marks DECIMAL(5,2)
 );
 
 -- Insert Data in Table
 -- syntax : 		INSERT INTO table_name
-- 					VALUES (value1, value2, value3, ...);
INSERT INTO Students
VALUES (101,'JIYA',20,'CSE',98.75),
	   (102,'HEER',18,'IT',78.00),
       (103,'KHUSHI',16,'ICT',60.25),
       (104,'VISHWA',24,'CE',50.50);
       
-- View Data			-- syntax : SELECT * FROM tablename;
SELECT * FROM Students;       

-- Example Table with Different Data Types
CREATE TABLE employees(
ID INT PRIMARY KEY,
Name VARCHAR(50),
Age INT,
Salary DECIMAL(10,2),
JoiningDate DATE,
IsActive BOOLEAN
);

INSERT INTO employees
VALUES (101,'AMAR',35,50000,'2018-03-15',TRUE),
		(102,'AMAN',29,30000.80,'2023-06-25',TRUE),
		(103,'ADI',24,20000.90,'2025-09-04',TRUE),
		(104,'ADDY',22,6000,'2026-11-19',FALSE);

SELECT * FROM employees;
