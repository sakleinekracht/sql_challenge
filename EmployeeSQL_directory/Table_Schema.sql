CREATE TABLE Departments (
  dept_no VARCHAR PRIMARY KEY,
  dept_name VARCHAR
);

CREATE TABLE Dept_Managers (
	dept_no VARCHAR PRIMARY KEY,
	emp_no INT
); 

CREATE TABLE Employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR, 
	last_name VARCHAR, 
	sex VARCHAR,
	hire_date DATE
); 

CREATE TABLE Salaries (
	emp_no INT PRIMARY KEY,
	salary INT
); 

CREATE TABLE Titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
); 

CREATE TABLE Employee_Depts (
	emp_no INT,
	dept_no VARCHAR,
	PRIMARY KEY(emp_no, dept_no)
); 

CREATE TABLE Dept_Managers (
	dept_no VARCHAR,
	emp_no INT,
	PRIMARY KEY(emp_no, dept_no)
); 
