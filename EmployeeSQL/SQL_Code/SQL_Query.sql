
--List the employee number, last name, first name, sex, and salary of each employee.

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    salary.*
FROM employees as e
LEFT JOIN salary ON e.emp_no = salary.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.

Select
first_name,
last_name,
hire_date
from
employees
where extract(year from hire_date) = 1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT
dm.dept_no,
dm.emp_no,
departments.dept_name,
employees.last_name,
employees.first_name
FROM dep_manager as dm
left JOIN employees ON dm.emp_no = employees.emp_no
left JOIN departments ON dm.dept_no = departments.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

--dept_no, emp_no, first_name, last_name, dept_name
SELECT
dep_emp.dept_no,
e.emp_no,
e.first_name,
e.last_name,
departments.dept_name
FROM employees as e
left JOIN dep_emp ON e.emp_no = dep_emp.emp_no
left JOIN departments ON dep_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

select
e.first_name,
e.last_name,
e.sex
from employees as e
where first_name = 'Hercules' and last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT
e.emp_no,
e.first_name,
e.last_name,
departments.dept_name
FROM employees as e
left JOIN dep_emp ON e.emp_no = dep_emp.emp_no
left JOIN departments ON dep_emp.dept_no = departments.dept_no
Where dept_name = 'Sales'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
e.emp_no,
e.first_name,
e.last_name,
departments.dept_name
FROM employees as e
left JOIN dep_emp ON e.emp_no = dep_emp.emp_no
left JOIN departments ON dep_emp.dept_no = departments.dept_no
Where dept_name IN ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC, last_name;
