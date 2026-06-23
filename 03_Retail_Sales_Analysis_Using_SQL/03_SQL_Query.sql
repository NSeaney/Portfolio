/* ============================================================
   BUSINESS QUESTION 1
   What are total company sales?
   Demonstrates: SUM()
   ============================================================ */

SELECT
    ROUND(SUM(sales), 2) AS total_sales
FROM orders;


/* ============================================================
   BUSINESS QUESTION 2
   What is the company's total profit?
   Demonstrates: SUM()
   ============================================================ */

SELECT
    ROUND(SUM(profit), 2) AS total_profit
FROM orders;


/* ============================================================
   BUSINESS QUESTION 3
   Which customers generate the most revenue?
   Demonstrates: JOIN, GROUP BY, ORDER BY
   ============================================================ */

SELECT
    c.customer_name,
    ROUND(SUM(o.sales), 2) AS total_sales
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC;


/* ============================================================
   BUSINESS QUESTION 4
   Which regions generate the most revenue?
   Demonstrates: JOIN, Aggregation
   ============================================================ */

SELECT
    c.region,
    ROUND(SUM(o.sales), 2) AS regional_sales
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.region
ORDER BY regional_sales DESC;


/* ============================================================
   BUSINESS QUESTION 5
   Which products generate the most profit?
   Demonstrates: JOIN, Aggregation
   ============================================================ */

SELECT
    p.product_name,
    ROUND(SUM(o.profit), 2) AS total_profit
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC;


/* ============================================================
   BUSINESS QUESTION 6
   Which product categories generate the most sales?
   Demonstrates: Multi-table analysis
   ============================================================ */

SELECT
    p.category,
    ROUND(SUM(o.sales), 2) AS category_sales
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY category_sales DESC;


/* ============================================================
   BUSINESS QUESTION 7
   Which customers spend more than average?
   Demonstrates: Subqueries, HAVING
   ============================================================ */

SELECT
    c.customer_name,
    SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name
HAVING SUM(o.sales) >
(
    SELECT AVG(customer_total)
    FROM (
        SELECT SUM(sales) AS customer_total
        FROM orders
        GROUP BY customer_id
    ) t
);


/* ============================================================
   BUSINESS QUESTION 8
   Rank customers by sales
   Demonstrates: Window Functions
   ============================================================ */

SELECT
    c.customer_name,
    SUM(o.sales) AS total_sales,
    RANK() OVER (
        ORDER BY SUM(o.sales) DESC
    ) AS sales_rank
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name;


/* ============================================================
   BUSINESS QUESTION 9
   Calculate running sales totals over time
   Demonstrates: CTE + Window Function
   ============================================================ */

WITH daily_sales AS (
    SELECT
        order_date,
        SUM(sales) AS sales
    FROM orders
    GROUP BY order_date
)
SELECT
    order_date,
    sales,
    SUM(sales) OVER (
        ORDER BY order_date
    ) AS running_total
FROM daily_sales;


/* ============================================================
   BUSINESS QUESTION 10
   What percentage of total sales comes from each customer?
   Demonstrates: CTE + Window Function + Business Analysis
   ============================================================ */

WITH customer_sales AS (
    SELECT
        c.customer_name,
        SUM(o.sales) AS total_sales
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
    GROUP BY c.customer_name
)
SELECT
    customer_name,
    total_sales,
    ROUND(
        total_sales * 100.0 /
        SUM(total_sales) OVER (),
        2
    ) AS percent_of_company_sales
FROM customer_sales
ORDER BY total_sales DESC;