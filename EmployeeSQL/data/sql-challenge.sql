-- Drop table if exists
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
-- Create new tables to import data
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(10),
	birth_date VARCHAR,
	first_name text NOT NULL,
	last_name text NOT NULL,
	sex VARCHAR,
	hire_date date DEFAULT ('now'::text)::date NOT NULL
);
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR
);
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no	VARCHAR(10)
);
CREATE TABLE dept_manager (
	dept_no VARCHAR(10),
	emp_no INT NOT NULL
);
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT
);
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);
-- Import data from departments.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM departments;

-- Import data from dept_emp.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM dept_emp;

-- Import data from dept_manager.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM dept_manager;

-- Import data from employees.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM employees;

-- Import data from salaries.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM salaries;

-- Import data from titles.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM titles;