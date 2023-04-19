--QUESTION 1: List the employee number, last name, first name, sex, and salary of each employee
	SELECT e.emp_no,e.first_name,e.last_name, e.sex, s.salary
	FROM employees AS e
	Join salaries AS s
	ON e.emp_no = s.emp_no;
	
--QUESTION 2:List the first name, last name, and hire date for the employees who were hired in 1986.
	SELECT first_name, last_name, hire_date,
	DATE_TRUNC('year', hire_date) AS hire_year
	FROM employees
	WHERE EXTRACT(YEAR FROM hire_date) = 1986;
	
--QUESTION 3:List the manager of each department along with their department number, department name, employee number, last name, and first name
	SELECT e.emp_no,e.first_name,e.last_name, t.title, dep.dept_no, dep.dept_name
	FROM employees AS e
	JOIN titles AS t
	ON t.title_id = e.emp_title_id
	JOIN dept_emp AS dept
	ON dept.emp_no = e.emp_no
	JOIN departments AS dep
	ON dep.dept_no = dept.dept_no
	WHERE t.title = 'Manager'
	
--QUESTION 4:List the department number for each employee along with that employee’s employee number, last name, first name, and department name
	SELECT e.emp_no,e.first_name,e.last_name, dept.dept_no, dep.dept_name 
	FROM employees AS e
	JOIN dept_emp AS dept
	ON e.emp_no = dept.emp_no
	JOIN departments AS dep
	ON dept.dept_no = dep.dept_no
	
--QUESTION 5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
	SELECT first_name, last_name, sex 
	FROM employees 
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
	
--QUESTION 6: List each employee in the Sales department, including their employee number, last name, and first name.
	SELECT e.emp_no, e.first_name, e.last_name, dep.dept_name 
	FROM employees AS e
	JOIN dept_emp AS dept ON e.emp_no = dept.emp_no
	JOIN departments AS dep ON dept.dept_no = dep.dept_no
	WHERE dep.dept_name = 'Sales';
	
--QUESTION 7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
	SELECT e.emp_no, e.first_name, e.last_name, dep.dept_name 
	FROM employees AS e
	JOIN dept_emp AS dept ON e.emp_no = dept.emp_no
	JOIN departments AS dep ON dept.dept_no = dep.dept_no
	WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development';
	
--QUESTION 8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
	SELECT last_name
	, count(last_name) as "last_name_count"
	FROM employees
	GROUP BY last_name
	order by "last_name_count" desc;