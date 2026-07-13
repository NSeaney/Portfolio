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