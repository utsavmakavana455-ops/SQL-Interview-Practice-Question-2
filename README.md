# SQL Interview Practice — Question 2


## 📌 Real-World Scenario

You are a Data Analyst at an e-commerce company. Your manager wants to identify repeat customers who have placed more than one order to understand customer loyalty and spending patterns.

Use the existing `sql_practice` database and `orders` table.

## 🎯 Task

Write a SQL query that displays:

1. Customer name
2. Total number of orders per customer
3. Total amount spent by each customer

**Requirements:**
- Include only customers who placed more than one order.
- Sort results by total spending in descending order.

## 💻 SQL Solution

```sql
USE sql_practice;

SELECT
    customer_name,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_spent
FROM orders
GROUP BY customer_name
HAVING COUNT(*) > 1
ORDER BY total_spent DESC;
```

## 🧠 Explanation

- **`COUNT(*)`** — Counts the orders for each customer.
- **`SUM(amount)`** — Calculates each customer's total spending.
- **`GROUP BY customer_name`** — Groups orders by customer.
- **`HAVING COUNT(*) > 1`** — Filters out customers with only one order.
- **`ORDER BY total_spent DESC`** — Displays the highest-spending customers first.

## 📊 Expected Output Format

| customer_name | total_orders | total_spent |
|---|---:|---:|
| Customer with highest spending | Number of orders | Total amount |
| Customer with second-highest spending | Number of orders | Total amount |

*Run the query in MySQL Workbench to obtain the exact results from your dataset.*

## 📚 Key Learning

This exercise demonstrates how to use aggregate functions and grouping to answer a real-world business question.

**Interview tip:** `WHERE` filters individual rows before grouping, while `HAVING` filters groups after aggregation.

## 🛠️ Tools Used

- MySQL
- MySQL Workbench
- SQL aggregate functions

## 🚀 Skills Practiced

`SQL` `GROUP BY` `COUNT()` `SUM()` `HAVING` `ORDER BY` `Data Analysis` `Customer Analytics`

---

**Part of my SQL Interview Practice series**, where I solve practical business problems to strengthen my SQL skills for Data Analyst roles.
