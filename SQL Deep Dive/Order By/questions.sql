/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
select first_name, last_name FROm employees
ORDER BY first_name ASC, last_name DESC;


/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
select first_name, last_name, EXTRACT ('YEAR' FROM age(birth_date)) FROm employees
ORDER BY age(birth_date) DESC;


/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
select first_name, last_name, hire_date FROm employees
WHERE first_name LIKE 'K%'
ORDER BY hire_date asc;
                                                       
                                                       
