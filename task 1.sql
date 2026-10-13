USE sql_practice;

/* 

Write a SQL query that displays:
1. customer_name
2. Total number of orders for each customer
3. Total amount spent by each customer
Only display customers who placed more than one order. Sort the results by total spending, from highest to lowest.

*/

select customer_name, count(*) as total_order, sum(amount) as total_amount
from orders
group by customer_name 
having count(*)>1
order by total_amount desc;

SELECT
    customer_name,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_spent
FROM orders
GROUP BY customer_name
HAVING COUNT(*) > 1
ORDER BY total_spent DESC;
