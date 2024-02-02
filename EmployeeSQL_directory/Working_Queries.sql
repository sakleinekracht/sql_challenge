-- List the employee number, last name, first name, sex, and salary of each employee

SELECT * from employees

SELECT * from salaries

SELECT * FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no; 

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
ORDER BY employees.last_name ASC; 

-----------------------------------------------------------------------------------------------------
-- List the first name, last name, and hire date for the employees who were hired in 1986

SELECT * FROM employees

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'
ORDER BY hire_date ASC;

-----------------------------------------------------------------------------------------------------
-- List the manager of each department along with their department number, department name, employee number, last name, and first name

select * from dept_managers;

select * from departments;

select * from employees;

SELECT * FROM dept_managers
JOIN employees ON dept_managers.emp_no = employees.emp_no
JOIN departments ON dept_managers.dept_no = departments.dept_no;

SELECT dept_managers.dept_no, departments.dept_name, dept_managers.emp_no, employees.last_name, employees.first_name
FROM dept_managers
JOIN employees ON dept_managers.emp_no = employees.emp_no
JOIN departments ON dept_managers.dept_no = departments.dept_no
ORDER BY departments.dept_name ASC;

-----------------------------------------------------------------------------------------------------
-- List the department number for each employee along with that employee's employee number, last name, first name, and department name

SELECT * FROM employees;

SELECT * FROM employee_depts;

SELECT * FROM departments;

SELECT * FROM employee_depts
JOIN employees ON employee_depts.emp_no = employees.emp_no
JOIN departments ON employee_depts.dept_no = departments.dept_no;

SELECT employee_depts.dept_no, employee_depts.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employee_depts
JOIN employees ON employee_depts.emp_no = employees.emp_no
JOIN departments ON employee_depts.dept_no = departments.dept_no
ORDER BY employees.last_name ASC;

-----------------------------------------------------------------------------------------------------
-- List the first name, last name, and sex of each employee whose irst name is Hercules and whose last name begins with the letter B

SELECT * FROM employees;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY last_name ASC;

-----------------------------------------------------------------------------------------------------
-- List each employee in the Sales department, including their employee number, last name, and first name

SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM employee_depts;

SELECT * FROM employee_depts
JOIN departments ON employee_depts.dept_no = departments.dept_no
JOIN employees ON employee_depts.emp_no = employees.emp_no
ORDER BY employees.last_name ASC;

SELECT departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employee_depts
JOIN departments ON employee_depts.dept_no = departments.dept_no
JOIN employees ON employee_depts.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales'
ORDER BY employees.last_name ASC;

-----------------------------------------------------------------------------------------------------
-- List each employee in the Sales and Development departments, including their employee number, last name,first name, and department name

SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM employee_depts;

SELECT * FROM employee_depts
JOIN departments ON employee_depts.dept_no = departments.dept_no
JOIN employees ON employee_depts.emp_no = employees.emp_no
ORDER BY employees.last_name ASC;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employee_depts
JOIN departments ON employee_depts.dept_no = departments.dept_no
JOIN employees ON employee_depts.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development'
ORDER BY employees.last_name ASC;

-----------------------------------------------------------------------------------------------------
-- List the frequncy counts, in descending order, of all the employee last names(how many employees share each last name)

SELECT * FROM employees;

SELECT last_name, COUNT(last_name) AS count 
FROM employees
GROUP BY last_name
ORDER BY count DESC;



