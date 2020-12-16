/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

select concat(first_name, ' ', last_name) AS "Name",
    EXTRACT (YEAR FROM (age(now()::date, birth_date))) as YEAR, 'years'
from employees
WHERE birth_date < now() - interval '60 years'; 

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/
select count(concat(first_name, ' ', last_name))
from employees
WHERE EXTRACT(MONTH FROM hire_date) = 2;
--24448

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/
select count(concat(first_name, ' ', last_name))
from employees
WHERE EXTRACT(MONTH FROM birth_date) = 11;
--24500

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT * FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECt * FROM orders
WHERE EXTRACT(MONTH FROM orderdate::Date) = 1
        AND EXTRACT(YEAR FROM orderdate::Date) = 2004;
                    
                    

