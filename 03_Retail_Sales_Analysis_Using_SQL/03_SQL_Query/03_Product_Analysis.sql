/* ============================================================
   BUSINESS QUESTION 5
   Which products are the most profitable?
   Demonstrates: JOIN, GROUP BY, Aggregate Functions
   ============================================================ */

SELECT
    p.product_name,
    ROUND(SUM(o.sales), 2) AS total_sales,
    ROUND(SUM(o.profit), 2) AS total_profit,
    ROUND(
        (SUM(o.profit) / SUM(o.sales)) * 100,
        2
    ) AS profit_margin_percent
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC;


/* ============================================================
   BUSINESS QUESTION 6
   Which product categories are the most profitable?
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
