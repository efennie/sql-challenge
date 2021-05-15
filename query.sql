-- Outputs:
--1. list employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employee_info e
LEFT JOIN salary s
ON e.emp_no = s.emp_no;

--2. list first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employee_info
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01'

--3.List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

SELECT d.dept_no, n.dept_name, d.emp_no, e.last_name, e.first_name
FROM dept_managers d
LEFT JOIN employee_info e
ON d.emp_no = e.emp_no
LEFT JOIN department_name n
ON n.dept_no = d.dept_no;