/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/

select distinct title from titles;


/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/

select distinct birth_date from employees;

/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

Select distinct lifeexpectancy
from country
WHERE lifeexpectancy IS NOT NULL;

