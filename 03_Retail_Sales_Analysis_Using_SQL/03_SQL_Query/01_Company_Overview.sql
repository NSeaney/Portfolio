/* ============================================================
   BUSINESS QUESTION 1
   What are total company revenue?
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
