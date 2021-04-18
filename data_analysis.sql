List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.gender,
Salaries.salary
FROM Employees
INNER JOIN Salaries ON
Employees.emp_no = Salaries.emp_no;

List first name, last name, and hire date for employees who were hired in 1986.

SELECT * FROM employees
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY emp_no;


List the manager of each department with the following information: department number, department name, the managers employee number, last name, first name.

SELECT Department_Manager.dept_no, 
Departments.dept_name,
Department_Manager.emp_no,
Employees.last_name,
Employees.first_name,
Department_Manager.from_date, 
Department_Manager.to_date 

FROM Department_Manager
INNER JOIN Departments ON
Department_Manager.dept_no = Departments.dept_no
INNER JOIN Employees ON
Department_Manager.emp_no = Employees.emp_no;

List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT Employees.emp_no, 
Employees.last_name, 
Employees.first_name,
Departments.dept_name
FROM Employees
INNER JOIN Department_Manager ON
Employees.emp_no = Department_Manager.emp_no
INNER JOIN Departments ON
Department_Manager.dept_no = Departments.dept_no;

List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT * FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

List all employees in the Sales department, including their employee number, last name, first name, and department name.

List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;