--List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM salaries AS s
LEFT JOIN employee AS e
ON e.emp_no=s.emp_no;

--List employees who were hired in 1986.
SELECT e.emp_no, e.hire_date
FROM employee AS e
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and 
--end employment dates.

SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM departments AS d
INNER JOIN dept_manager AS m
ON d.dept_no=m.dept_no
INNER JOIN employee AS e
ON m.emp_no = e.emp_no;

--List the department of each employee with the following information: employee number, 
--last name, first name, and department name.

SELECT a.dept_no, a.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
INNER JOIN dept_employee AS a
ON d.dept_no=a.dept_no
INNER JOIN employee AS e
ON a.emp_no = e.emp_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employee
WHERE first_name='Hercules'
AND last_name LIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, 
--first name, and department name.

SELECT a.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_employee AS a
INNER JOIN employee AS e
ON a.emp_no = e.emp_no
INNER JOIN departments AS d
ON a.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

SELECT a.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_employee AS a
INNER JOIN employee AS e
ON a.emp_no = e.emp_no
INNER JOIN departments AS d
ON a.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employee
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;

