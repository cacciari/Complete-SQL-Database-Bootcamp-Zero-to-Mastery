
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select 
    c.customerid, c.firstname, o.orderid FROM orders as o
    INNER JOIN customers as c ON c.customerid = o.customerid
    WHERE state IN ('NY', 'OH','OR')



/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
select p.prod_id, p.title, i.quan_in_stock from products as p
       inner join inventory as i on p.prod_id = i.prod_id; 


/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

select concat(e.first_name, ' ', e.last_name), de.dept_name FROM employees as e 
INNER JOIN dept_emp as d ON d.emp_no = e.emp_no
INNER JOIN departments as de ON de.dept_no = d.dept_no





