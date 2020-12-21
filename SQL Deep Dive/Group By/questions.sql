/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date, count(hire_date) as "amount"
FROM employees as e
GROUP BY hire_date
ORDER BY amount DESC

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

select concat(e.first_name, ' ', e.last_name) as "Full Name",
       e.hire_date AS "Hire Date", count(t.title) as "Positions"
from employees as e 
INNER JOIN titles as t USING (emp_no)
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
ORDER BY "Positions" DESC


/*
*  Show me all the employees that work in the department development
*  Database: Employees
*/

select de.dept_no, e.emp_no, concat(e.first_name, ' ', e.last_name) as "Name"
FROm employees AS e
INNER JOIN dept_emp as de USING(emp_no)
INNER JOIN departments as dep USING (dept_no)
WHERE dep.dept_name = 'Development'
ORDER by e.emp_no
