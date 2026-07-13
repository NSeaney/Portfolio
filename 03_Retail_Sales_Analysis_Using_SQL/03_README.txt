# Retail Sales Analysis Using SQL

## Overview

This project demonstrates how SQL can be used to design a relational database and analyze retail sales data to answer real-world business questions.

A normalized database was built using three related tables—**Customers**, **Products**, and **Orders**—to simulate a retail sales environment. SQL was then used to explore customer purchasing behavior, product performance, regional sales trends, and overall business performance.

The objective of this project is to demonstrate the SQL and analytical skills commonly required in Data Analyst, Business Intelligence, and Data Science roles.

---

# Skills Demonstrated

### SQL

* SELECT statements
* JOINs
* Aggregate Functions (`SUM`, `AVG`, `COUNT`)
* GROUP BY
* HAVING
* ORDER BY

### Intermediate SQL

* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* Ranking Functions (`RANK`)
* Running Totals
* Percentage Calculations

### Database Design

* Relational Database Modeling
* Primary Keys
* Foreign Keys
* Normalization
* Table Relationships

### Business Analytics

* KPI Reporting
* Customer Analysis
* Product Performance
* Regional Performance
* Profitability Analysis
* Revenue Analysis

---

# Technologies

* PostgreSQL
* SQL
* DB Fiddle
* Git
* GitHub

---

# Project Workflow

```text
Retail Sales Data
        │
        ▼
Normalized Relational Database
        │
        ▼
SQL Business Analysis
        │
        ▼
Business Insights & Reporting
```

---

# Dataset

This project uses a **custom retail sales dataset** created to simulate the operations of a small retail business.

The dataset contains customer, product, and transactional sales information and was intentionally modeled using a normalized relational database structure. Although the dataset is designed for demonstration purposes, the schema and analytical queries reflect workflows commonly used in business intelligence and analytics.

The dataset includes:

* Customer information
* Geographic data
* Product catalog
* Sales transactions
* Order details
* Discounts
* Profit information

---

# Database Design

The database consists of three related tables.

## Customers

Stores customer information and geographic details.

**Fields**

* Customer ID
* Customer Name
* Segment
* Country
* City
* State
* Postal Code
* Region

---

## Products

Stores product information and product classifications.

**Fields**

* Product ID
* Category
* Sub-Category
* Product Name

---

## Orders

Stores sales transactions and connects customers with purchased products.

**Fields**

* Order ID
* Order Date
* Ship Date
* Ship Mode
* Customer ID
* Product ID
* Sales
* Quantity
* Discount
* Profit

---

## Entity Relationship Diagram

```text
Customers
    │
    │ Customer ID
    ▼
Orders
    ▲
    │ Product ID
    │
Products
```

---

# Business Questions

The analysis answers several common business questions.

1. What is the company's total revenue?
2. What is the company's total profit?
3. Which customers generate the most revenue?
4. Which regions generate the highest sales?
5. Which products are the most profitable?
6. Which product categories perform best?
7. Which customers generate above-average revenue?
8. How do customers rank by total sales?
9. How do sales accumulate over time?
10. What percentage of total company revenue comes from each customer?

---

# Key Findings

The SQL analysis provides insights that can support business decision-making, including:

* Identifying the company's highest-value customers.
* Comparing sales performance across geographic regions.
* Measuring product and category profitability.
* Tracking cumulative sales over time.
* Understanding how much individual customers contribute to total revenue.
* Demonstrating the use of SQL to transform raw transactional data into actionable business information.

---

# Repository Structure

```text
03_Retail_Sales_Analysis/
│
├── schema.sql
├── queries.sql
└── README.md
```

### schema.sql

Defines the relational database, including table creation, primary keys, foreign keys, and relationships.

### queries.sql

Contains SQL queries used to answer business questions and demonstrate analytical techniques.

### README.md

Provides project documentation, methodology, database design, and an overview of the business analysis.

---

# Learning Outcomes

Through this project, I demonstrated the ability to:

* Design a normalized relational database
* Model relationships using primary and foreign keys
* Write readable and well-documented SQL queries
* Analyze retail sales data to answer business questions
* Apply intermediate SQL techniques such as subqueries, CTEs, and window functions
* Present technical work in a structured and professional format

---

# Future Improvements

Potential future enhancements include:

* Replacing the custom dataset with a larger real-world retail dataset.
* Building interactive dashboards in Power BI or Tableau.
* Connecting the SQL database to Python for automated reporting and visualization.
* Expanding the analysis with additional business metrics and performance dashboards.
