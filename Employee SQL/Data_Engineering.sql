CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

SELECT * FROM departments

CREATE TABLE dept_employee (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_employee

CREATE TABLE employee (
	emp_no INTEGER NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no)
);

SELECT * FROM employee

CREATE TABLE titles(
	emp_no INTEGER NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

SELECT * FROM titles


CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);
ALTER TABLE dept_manager DROP COLUMN title
SELECT * FROM dept_manager

CREATE TABLE salaries(
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

SELECT * FROM salaries