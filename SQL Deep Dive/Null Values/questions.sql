
/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Assuming a students minimum age for the class is 15, what is the average age of a student?
*/

SELECT avg(coalesce(age, 15)) from "Student";

/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Replace all empty first or last names with a default?
*/
SELECT coalesce(name, 'No name provided') as "Name",
		coalesce(lastName, 'No name provided') as "Last Name",
        coalesce(age, 15) as "Age"
FROM "Student"
