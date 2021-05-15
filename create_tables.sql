
--create tables for each csv 
--table one primary key is title_id
CREATE TABLE job_title(
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);

--table two primary key:emp_no and foreign key: emp_title_id 
CREATE TABLE employee_info(
	emp_no INT,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date date,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date date,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES job_title(title_id)
);

--table three primary key: dept_no
CREATE TABLE department_name(
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

--table four foreign key: dept_no from department
CREATE TABLE dept_managers(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employee_info(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department_name(dept_no)
);

--table five foreign key:emp_no
CREATE TABLE salary(
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employee_info(emp_no)

);

--table six which employee belongs to which dept
--foreign keys: emp_no and dept_no
CREATE TABLE employee_dept(
	emp_no INT,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee_info(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department_name(dept_no)
);

--import sanity check:
SELECT * 
FROM employee_dept

SELECT * 
FROM salary

SELECT *
FROM employee_info

SELECT * 
FROM department_name

SELECT *
FROM dept_managers