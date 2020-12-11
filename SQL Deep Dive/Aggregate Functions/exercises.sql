-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries
SELECT AVG(salary) from Salaries;


-- Question 2: What year was the youngest person born in the company?
-- Table: employees
select min(birth_date) FROM employees;


-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 


-- Question 1: How many towns are there in france?
-- Table: Towns
SELECT COUNT(towns) FROM TOWNS;


-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
SELECT COUNT(LANGUAGE) FROM countrylanguage;

-- Question 2: What is the average life expectancy in the world?
-- Table: country
SELECT AVG(lifeexpectancy) FROM country;


-- Question 3: What is the average population for cities in the netherlands?
-- Table: city
SELECT AVG(POPULATION) FROM country WHERE CODE='NLD';

