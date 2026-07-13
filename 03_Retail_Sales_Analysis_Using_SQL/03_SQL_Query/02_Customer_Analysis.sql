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
ORDER BY total_sales DESC
LIMIT 10;


/* ============================================================
   BUSINESS QUESTION 7
   Which customers generate above-average revenue?
   Demonstrates: JOIN, GROUP BY, HAVING, Subqueries
   ============================================================ */

SELECT
    c.customer_name,
    ROUND(SUM(o.sales), 2) AS total_sales
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY
    c.customer_name
HAVING
    SUM(o.sales) >
    (
        SELECT AVG(customer_total)
        FROM (
            SELECT
                SUM(sales) AS customer_total
            FROM orders
            GROUP BY customer_id
        ) AS customer_totals
    )
ORDER BY
    total_sales DESC;


/* ============================================================
   BUSINESS QUESTION 8
   Rank customers based on total revenue.
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