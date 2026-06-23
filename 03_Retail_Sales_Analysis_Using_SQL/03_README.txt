# Retail Sales Analysis Using SQL

## Project Overview

This project demonstrates SQL skills through the design and analysis of a retail sales database. The database was built using a normalized relational structure consisting of Customers, Products, and Orders tables. SQL queries were used to answer common business questions related to sales performance, profitability, customer behavior, and product performance.

The goal of this project is to showcase practical SQL skills commonly used by Data Analysts and Data Scientists, including database design, joins, aggregations, subqueries, Common Table Expressions (CTEs), and window functions.

---

## Technologies Used

- PostgreSQL
- DB Fiddle
- SQL
- GitHub

---

## Dataset

This project uses a sample retail sales dataset containing customer, product, and order information.

The dataset includes:

- Customer demographics
- Product categories
- Sales transactions
- Discounts
- Profit metrics

The data was modeled into a normalized relational database structure to support business analysis and reporting.

---

## Database Design

The database consists of three related tables:

### Customers

Stores customer information and geographic details.

**Key Fields:**

- Customer ID
- Customer Name
- Segment
- Country
- City
- State
- Postal Code
- Region

### Products

Stores product information and classifications.

**Key Fields:**

- Product ID
- Category
- Sub-Category
- Product Name

### Orders

Stores transactional sales data and links customers to products.

**Key Fields:**

- Order ID
- Order Date
- Ship Date
- Ship Mode
- Customer ID
- Product ID
- Sales
- Quantity
- Discount
- Profit

### Entity Relationship Structure

```text
Customers
    |
    | Customer ID
    |
Orders
    |
    | Product ID
    |
Products
```

---

## SQL Skills Demonstrated

### Database Design

- Table Creation
- Primary Keys
- Foreign Keys
- Relational Database Modeling

### Data Analysis

- Aggregations (`SUM`, `AVG`, `COUNT`)
- Sorting and Filtering
- `GROUP BY`
- Multi-Table Analysis with `JOIN`

### Advanced SQL

- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions (`RANK`)
- Running Totals
- Percentage Calculations

---

## Business Questions Answered

### 1. What are the company's total sales?

Calculates total revenue generated from all orders.

### 2. What is the company's total profit?

Calculates total profit across all transactions.

### 3. Who are the top customers?

Identifies customers generating the highest sales revenue.

### 4. Which regions generate the most revenue?

Compares sales performance across geographic regions.

### 5. Which products are the most profitable?

Determines which products contribute the most profit.

### 6. Which product categories perform best?

Measures sales performance across product categories.

### 7. Which customers spend more than average?

Uses subqueries and aggregation to identify high-value customers.

### 8. How do customers rank by sales?

Uses window functions to rank customers based on revenue generated.

### 9. How do sales accumulate over time?

Calculates a running total of sales using a Common Table Expression and window function.

### 10. What percentage of company sales comes from each customer?

Analyzes customer contribution to overall company revenue.

---

## Example Query

### Top Customers by Revenue

```sql
SELECT
    c.customer_name,
    ROUND(SUM(o.sales), 2) AS total_sales
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC;
```

---

## Repository Structure

```text
sql-superstore-analysis/
│
├── schema.sql
├── sample_data.sql
├── analysis.sql
└── README.md
```

### File Descriptions

**schema.sql**
- Database schema and table definitions
- Primary and foreign key relationships

**sample_data.sql**
- Customer, product, and order records used for testing

**analysis.sql**
- Business analysis queries
- Aggregations
- Joins
- Subqueries
- CTEs
- Window Functions

**README.md**
- Project documentation
- Methodology
- Findings and conclusions

---

## Key Findings

Using the analysis queries, the following business insights can be generated:

- Technology products generated the highest sales revenue.
- Certain customers contributed a disproportionately large share of total revenue.
- Revenue varied significantly across geographic regions.
- Product profitability differed substantially between categories.
- Window function analysis revealed customer rankings and cumulative sales trends.

---

## Key Takeaways

This project demonstrates the ability to:

- Design a normalized relational database
- Create and manage table relationships
- Write efficient SQL queries
- Analyze business data
- Generate actionable insights
- Use advanced SQL features such as CTEs and window functions
- Present findings in a structured and professional format

These skills are commonly required in Data Analyst, Business Analyst, Data Science, and Business Intelligence roles.

---

## Future Improvements

Potential enhancements to this project include:

- Importing a larger real-world retail dataset
- Creating views for recurring business reports
- Implementing stored procedures and triggers
- Building interactive dashboards using Power BI or Tableau
- Connecting the database to Python for advanced analytics and visualization
