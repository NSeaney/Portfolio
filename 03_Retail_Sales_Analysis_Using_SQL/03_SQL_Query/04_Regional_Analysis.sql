/* ============================================================
   BUSINESS QUESTION 4
   Which regions generate the most revenue?
   Demonstrates: JOIN, Aggregation
   ============================================================ */

SELECT
    c.region,
    ROUND(SUM(o.sales),2) AS total_sales,
    ROUND(SUM(o.profit),2) AS total_profit
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.region
ORDER BY regional_sales DESC;