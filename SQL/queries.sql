select * from titles;
select * from departments;
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no,employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM salaries
JOIN employees ON
employees.emp_no=salaries.emp_no;

-- 2. List employees who were hired in 1986.
SELECT *
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no,d.dept_name,e.emp_no,e.first_name, e.last_name, dm.from_date, dm.to_date
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
inner join employees as e
on dm.emp_no = e.emp_no
LIMIT 5;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no,e.first_name, e.last_name,d. dept_name
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e
on dm.emp_no = e.emp_no
LIMIT 5;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employees
WHERE first_name ='Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no,e.first_name, e.last_name,d.dept_name
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e
on dm.emp_no = e.emp_no
WHERE d.dept_name ='Sales'
LIMIT 5;

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no,e.first_name, e.last_name,d.dept_name
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e
on dm.emp_no = e.emp_no
WHERE d.dept_name ='Sales' or d.dept_name ='Development'
LIMIT 5;

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT COUNT(emp_no), last_name 
FROM employees
GROUP BY last_name
ORDER BY COUNT(emp_no) DESC