
/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/
SELECT * FROM CUSTOMERS
WHERE (AGE<30 OR AGE>=50)
        AND income>50000 
        AND (country='Japan' OR country='Australia');

/*
* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/
SELECT SUM(totalamount) FROM ORDERS
WHERE (orderdate >= '2004-07-01' AND orderdate <='2004-07-31')
AND totalamount >100;
