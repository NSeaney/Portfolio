**Schema (PostgreSQL v18)**

    /* ============================================================
       CLEAN START
       Drop tables if they already exist
       ============================================================ */
    
    DROP TABLE IF EXISTS orders;
    DROP TABLE IF EXISTS products;
    DROP TABLE IF EXISTS customers;
    
    
    /* ============================================================
       CUSTOMERS TABLE
       Stores customer information
       ============================================================ */
    
    CREATE TABLE customers (
        customer_id VARCHAR(20) PRIMARY KEY,
        customer_name VARCHAR(100),
        segment VARCHAR(50),
        country VARCHAR(50),
        city VARCHAR(50),
        state VARCHAR(50),
        postal_code VARCHAR(20),
        region VARCHAR(50)
    );
    
    
    /* ============================================================
       PRODUCTS TABLE
       Stores product information
       ============================================================ */
    
    CREATE TABLE products (
        product_id VARCHAR(30) PRIMARY KEY,
        category VARCHAR(50),
        sub_category VARCHAR(50),
        product_name VARCHAR(255)
    );
    
    
    /* ============================================================
       ORDERS TABLE
       Stores sales transactions
       Links customers and products together
       ============================================================ */
    
    CREATE TABLE orders (
        row_id INT PRIMARY KEY,
        order_id VARCHAR(30),
        order_date DATE,
        ship_date DATE,
        ship_mode VARCHAR(50),
    
        customer_id VARCHAR(20),
        product_id VARCHAR(30),
    
        sales DECIMAL(10,2),
        quantity INT,
        discount DECIMAL(5,2),
        profit DECIMAL(10,2),
    
        FOREIGN KEY (customer_id)
            REFERENCES customers(customer_id),
    
        FOREIGN KEY (product_id)
            REFERENCES products(product_id)
    );
    
    
    /* ============================================================
       SAMPLE DATA
       Insert customer records
       ============================================================ */
    
    INSERT INTO customers VALUES
    ('C001','John Smith','Consumer','USA','Dallas','Texas','75001','Central'),
    ('C002','Jane Doe','Corporate','USA','Austin','Texas','73301','Central'),
    ('C003','Mike Brown','Home Office','USA','Houston','Texas','77001','Central'),
    ('C004','Sarah Wilson','Consumer','USA','Phoenix','Arizona','85001','West'),
    ('C005','David Lee','Corporate','USA','Los Angeles','California','90001','West'),
    ('C006','Emily Davis','Consumer','USA','San Diego','California','92101','West'),
    ('C007','Robert Garcia','Home Office','USA','Seattle','Washington','98101','West'),
    ('C008','Lisa Martinez','Consumer','USA','Portland','Oregon','97201','West'),
    ('C009','James Taylor','Corporate','USA','Denver','Colorado','80201','West'),
    ('C010','Jennifer Moore','Consumer','USA','Chicago','Illinois','60601','Central'),
    ('C011','William Thomas','Home Office','USA','Detroit','Michigan','48201','Central'),
    ('C012','Patricia Jackson','Consumer','USA','Atlanta','Georgia','30301','South'),
    ('C013','Charles White','Corporate','USA','Miami','Florida','33101','South'),
    ('C014','Linda Harris','Consumer','USA','Orlando','Florida','32801','South'),
    ('C015','Joseph Martin','Home Office','USA','Charlotte','North Carolina','28201','South'),
    ('C016','Barbara Thompson','Consumer','USA','Nashville','Tennessee','37201','South'),
    ('C017','Thomas Anderson','Corporate','USA','Boston','Massachusetts','02101','East'),
    ('C018','Susan Clark','Consumer','USA','New York','New York','10001','East'),
    ('C019','Christopher Lewis','Home Office','USA','Buffalo','New York','14201','East'),
    ('C020','Karen Walker','Consumer','USA','Philadelphia','Pennsylvania','19019','East'),
    ('C021','Daniel Hall','Corporate','USA','Pittsburgh','Pennsylvania','15201','East'),
    ('C022','Nancy Allen','Consumer','USA','Cleveland','Ohio','44101','East'),
    ('C023','Matthew Young','Home Office','USA','Columbus','Ohio','43004','East'),
    ('C024','Betty King','Consumer','USA','Richmond','Virginia','23218','South'),
    ('C025','Anthony Wright','Corporate','USA','Raleigh','North Carolina','27601','South'),
    ('C026','Margaret Scott','Consumer','USA','Kansas City','Missouri','64101','Central'),
    ('C027','Mark Green','Home Office','USA','St. Louis','Missouri','63101','Central'),
    ('C028','Sandra Baker','Consumer','USA','Minneapolis','Minnesota','55401','Central'),
    ('C029','Paul Adams','Corporate','USA','Omaha','Nebraska','68101','Central'),
    ('C030','Donna Nelson','Consumer','USA','Milwaukee','Wisconsin','53201','Central');
    
    
    /* ============================================================
       Insert product records
       ============================================================ */
    
    INSERT INTO products VALUES
    ('P001','Furniture','Chairs','Executive Office Chair'),
    ('P002','Furniture','Tables','Conference Table'),
    ('P003','Furniture','Bookcases','Wooden Bookcase'),
    ('P004','Furniture','Furnishings','Desk Lamp'),
    ('P005','Technology','Phones','iPhone 15'),
    ('P006','Technology','Phones','Samsung Galaxy'),
    ('P007','Technology','Accessories','Wireless Mouse'),
    ('P008','Technology','Accessories','Mechanical Keyboard'),
    ('P009','Technology','Copiers','Business Copier'),
    ('P010','Technology','Machines','Laser Printer'),
    ('P011','Office Supplies','Paper','Printer Paper'),
    ('P012','Office Supplies','Paper','Notebook Pack'),
    ('P013','Office Supplies','Binders','Ring Binder'),
    ('P014','Office Supplies','Storage','Storage Box'),
    ('P015','Office Supplies','Labels','Shipping Labels'),
    ('P016','Furniture','Chairs','Ergonomic Chair'),
    ('P017','Furniture','Tables','Standing Desk'),
    ('P018','Furniture','Bookcases','Metal Bookcase'),
    ('P019','Technology','Phones','Google Pixel'),
    ('P020','Technology','Accessories','USB Hub'),
    ('P021','Office Supplies','Art','Marker Set'),
    ('P022','Office Supplies','Envelopes','Business Envelopes'),
    ('P023','Office Supplies','Fasteners','Staples Pack'),
    ('P024','Office Supplies','Supplies','Desk Organizer'),
    ('P025','Technology','Machines','3D Printer'),
    ('P026','Technology','Copiers','Desktop Copier'),
    ('P027','Furniture','Furnishings','Office Rug'),
    ('P028','Furniture','Chairs','Visitor Chair'),
    ('P029','Technology','Accessories','Webcam'),
    ('P030','Office Supplies','Storage','File Cabinet');
    
    
    /* ============================================================
       Insert order records
       ============================================================ */
    
    INSERT INTO orders VALUES
    (1,'O001','2024-01-03','2024-01-05','Standard Class','C001','P001',450.00,2,0.00,90.00),
    (2,'O002','2024-01-06','2024-01-08','Second Class','C002','P005',1200.00,1,0.05,250.00),
    (3,'O003','2024-01-08','2024-01-10','First Class','C003','P011',75.00,5,0.00,15.00),
    (4,'O004','2024-01-11','2024-01-13','Standard Class','C004','P017',850.00,1,0.10,170.00),
    (5,'O005','2024-01-14','2024-01-16','Second Class','C005','P008',120.00,2,0.00,25.00),
    (6,'O006','2024-01-17','2024-01-20','Standard Class','C006','P003',300.00,1,0.15,40.00),
    (7,'O007','2024-01-21','2024-01-23','First Class','C007','P009',2200.00,1,0.05,450.00),
    (8,'O008','2024-01-24','2024-01-26','Standard Class','C008','P014',80.00,4,0.00,12.00),
    (9,'O009','2024-01-27','2024-01-29','Second Class','C009','P019',950.00,1,0.10,180.00),
    (10,'O010','2024-01-30','2024-02-02','Standard Class','C010','P016',500.00,1,0.00,95.00),
    (11,'O011','2024-02-03','2024-02-05','First Class','C011','P006',1100.00,1,0.05,210.00),
    (12,'O012','2024-02-06','2024-02-08','Standard Class','C012','P021',60.00,3,0.00,10.00),
    (13,'O013','2024-02-09','2024-02-11','Second Class','C013','P025',1800.00,1,0.10,300.00),
    (14,'O014','2024-02-12','2024-02-14','Standard Class','C014','P027',200.00,1,0.00,35.00),
    (15,'O015','2024-02-15','2024-02-17','First Class','C015','P002',900.00,1,0.05,175.00),
    (16,'O016','2024-02-18','2024-02-20','Standard Class','C016','P023',25.00,10,0.00,5.00),
    (17,'O017','2024-02-21','2024-02-23','Second Class','C017','P030',400.00,1,0.10,70.00),
    (18,'O018','2024-02-24','2024-02-26','Standard Class','C018','P007',90.00,2,0.00,18.00),
    (19,'O019','2024-02-27','2024-02-29','First Class','C019','P018',350.00,1,0.05,60.00),
    (20,'O020','2024-03-01','2024-03-03','Standard Class','C020','P012',40.00,4,0.00,8.00),
    (21,'O021','2024-03-04','2024-03-06','Second Class','C021','P010',700.00,1,0.10,120.00),
    (22,'O022','2024-03-07','2024-03-09','Standard Class','C022','P024',55.00,2,0.00,11.00),
    (23,'O023','2024-03-10','2024-03-12','First Class','C023','P004',150.00,3,0.05,30.00),
    (24,'O024','2024-03-13','2024-03-15','Standard Class','C024','P028',275.00,1,0.00,50.00),
    (25,'O025','2024-03-16','2024-03-18','Second Class','C025','P013',45.00,5,0.00,9.00),
    (26,'O026','2024-03-19','2024-03-21','Standard Class','C026','P020',85.00,2,0.05,15.00),
    (27,'O027','2024-03-22','2024-03-24','First Class','C027','P026',950.00,1,0.10,170.00),
    (28,'O028','2024-03-25','2024-03-27','Standard Class','C028','P022',30.00,6,0.00,6.00),
    (29,'O029','2024-03-28','2024-03-30','Second Class','C029','P029',180.00,1,0.05,32.00),
    (30,'O030','2024-03-31','2024-04-02','Standard Class','C030','P015',20.00,8,0.00,4.00);

---

**Query #1**

    /* ============================================================
       BUSINESS QUESTION 1
       What are total company sales?
       Demonstrates: SUM()
       ============================================================ */
    
    SELECT
        ROUND(SUM(sales), 2) AS total_sales
    FROM orders;

| total_sales |
| ----------- |
| 14180.00    |

---
**Query #2**

    /* ============================================================
       BUSINESS QUESTION 2
       What is the company's total profit?
       Demonstrates: SUM()
       ============================================================ */
    
    SELECT
        ROUND(SUM(profit), 2) AS total_profit
    FROM orders;

| total_profit |
| ------------ |
| 2665.00      |

---
**Query #3**

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

| customer_name     | total_sales |
| ----------------- | ----------- |
| Robert Garcia     | 2200.00     |
| Charles White     | 1800.00     |
| Jane Doe          | 1200.00     |
| William Thomas    | 1100.00     |
| James Taylor      | 950.00      |
| Mark Green        | 950.00      |
| Joseph Martin     | 900.00      |
| Sarah Wilson      | 850.00      |
| Daniel Hall       | 700.00      |
| Jennifer Moore    | 500.00      |
| John Smith        | 450.00      |
| Thomas Anderson   | 400.00      |
| Christopher Lewis | 350.00      |
| Emily Davis       | 300.00      |
| Betty King        | 275.00      |
| Linda Harris      | 200.00      |
| Paul Adams        | 180.00      |
| Matthew Young     | 150.00      |
| David Lee         | 120.00      |
| Susan Clark       | 90.00       |
| Margaret Scott    | 85.00       |
| Lisa Martinez     | 80.00       |
| Mike Brown        | 75.00       |
| Patricia Jackson  | 60.00       |
| Nancy Allen       | 55.00       |
| Anthony Wright    | 45.00       |
| Karen Walker      | 40.00       |
| Sandra Baker      | 30.00       |
| Barbara Thompson  | 25.00       |
| Donna Nelson      | 20.00       |

---
**Query #4**

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

| region  | regional_sales |
| ------- | -------------- |
| Central | 4590.00        |
| West    | 4500.00        |
| South   | 3305.00        |
| East    | 1785.00        |

---
**Query #5**

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

| product_name           | total_profit |
| ---------------------- | ------------ |
| Business Copier        | 450.00       |
| 3D Printer             | 300.00       |
| iPhone 15              | 250.00       |
| Samsung Galaxy         | 210.00       |
| Google Pixel           | 180.00       |
| Conference Table       | 175.00       |
| Desktop Copier         | 170.00       |
| Standing Desk          | 170.00       |
| Laser Printer          | 120.00       |
| Ergonomic Chair        | 95.00        |
| Executive Office Chair | 90.00        |
| File Cabinet           | 70.00        |
| Metal Bookcase         | 60.00        |
| Visitor Chair          | 50.00        |
| Wooden Bookcase        | 40.00        |
| Office Rug             | 35.00        |
| Webcam                 | 32.00        |
| Desk Lamp              | 30.00        |
| Mechanical Keyboard    | 25.00        |
| Wireless Mouse         | 18.00        |
| Printer Paper          | 15.00        |
| USB Hub                | 15.00        |
| Storage Box            | 12.00        |
| Desk Organizer         | 11.00        |
| Marker Set             | 10.00        |
| Ring Binder            | 9.00         |
| Notebook Pack          | 8.00         |
| Business Envelopes     | 6.00         |
| Staples Pack           | 5.00         |
| Shipping Labels        | 4.00         |

---
**Query #6**

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

| category        | category_sales |
| --------------- | -------------- |
| Technology      | 9375.00        |
| Furniture       | 3975.00        |
| Office Supplies | 830.00         |

---
**Query #7**

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

| customer_name  | total_sales |
| -------------- | ----------- |
| James Taylor   | 950.00      |
| Mark Green     | 950.00      |
| Charles White  | 1800.00     |
| Sarah Wilson   | 850.00      |
| William Thomas | 1100.00     |
| Jennifer Moore | 500.00      |
| Jane Doe       | 1200.00     |
| Robert Garcia  | 2200.00     |
| Daniel Hall    | 700.00      |
| Joseph Martin  | 900.00      |

---
**Query #8**

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

| customer_name     | total_sales | sales_rank |
| ----------------- | ----------- | ---------- |
| Robert Garcia     | 2200.00     | 1          |
| Charles White     | 1800.00     | 2          |
| Jane Doe          | 1200.00     | 3          |
| William Thomas    | 1100.00     | 4          |
| James Taylor      | 950.00      | 5          |
| Mark Green        | 950.00      | 5          |
| Joseph Martin     | 900.00      | 7          |
| Sarah Wilson      | 850.00      | 8          |
| Daniel Hall       | 700.00      | 9          |
| Jennifer Moore    | 500.00      | 10         |
| John Smith        | 450.00      | 11         |
| Thomas Anderson   | 400.00      | 12         |
| Christopher Lewis | 350.00      | 13         |
| Emily Davis       | 300.00      | 14         |
| Betty King        | 275.00      | 15         |
| Linda Harris      | 200.00      | 16         |
| Paul Adams        | 180.00      | 17         |
| Matthew Young     | 150.00      | 18         |
| David Lee         | 120.00      | 19         |
| Susan Clark       | 90.00       | 20         |
| Margaret Scott    | 85.00       | 21         |
| Lisa Martinez     | 80.00       | 22         |
| Mike Brown        | 75.00       | 23         |
| Patricia Jackson  | 60.00       | 24         |
| Nancy Allen       | 55.00       | 25         |
| Anthony Wright    | 45.00       | 26         |
| Karen Walker      | 40.00       | 27         |
| Sandra Baker      | 30.00       | 28         |
| Barbara Thompson  | 25.00       | 29         |
| Donna Nelson      | 20.00       | 30         |

---
**Query #9**

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

| order_date | sales   | running_total |
| ---------- | ------- | ------------- |
| 2024-01-03 | 450.00  | 450.00        |
| 2024-01-06 | 1200.00 | 1650.00       |
| 2024-01-08 | 75.00   | 1725.00       |
| 2024-01-11 | 850.00  | 2575.00       |
| 2024-01-14 | 120.00  | 2695.00       |
| 2024-01-17 | 300.00  | 2995.00       |
| 2024-01-21 | 2200.00 | 5195.00       |
| 2024-01-24 | 80.00   | 5275.00       |
| 2024-01-27 | 950.00  | 6225.00       |
| 2024-01-30 | 500.00  | 6725.00       |
| 2024-02-03 | 1100.00 | 7825.00       |
| 2024-02-06 | 60.00   | 7885.00       |
| 2024-02-09 | 1800.00 | 9685.00       |
| 2024-02-12 | 200.00  | 9885.00       |
| 2024-02-15 | 900.00  | 10785.00      |
| 2024-02-18 | 25.00   | 10810.00      |
| 2024-02-21 | 400.00  | 11210.00      |
| 2024-02-24 | 90.00   | 11300.00      |
| 2024-02-27 | 350.00  | 11650.00      |
| 2024-03-01 | 40.00   | 11690.00      |
| 2024-03-04 | 700.00  | 12390.00      |
| 2024-03-07 | 55.00   | 12445.00      |
| 2024-03-10 | 150.00  | 12595.00      |
| 2024-03-13 | 275.00  | 12870.00      |
| 2024-03-16 | 45.00   | 12915.00      |
| 2024-03-19 | 85.00   | 13000.00      |
| 2024-03-22 | 950.00  | 13950.00      |
| 2024-03-25 | 30.00   | 13980.00      |
| 2024-03-28 | 180.00  | 14160.00      |
| 2024-03-31 | 20.00   | 14180.00      |

---
**Query #10**

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

| customer_name     | total_sales | percent_of_company_sales |
| ----------------- | ----------- | ------------------------ |
| Robert Garcia     | 2200.00     | 15.51                    |
| Charles White     | 1800.00     | 12.69                    |
| Jane Doe          | 1200.00     | 8.46                     |
| William Thomas    | 1100.00     | 7.76                     |
| James Taylor      | 950.00      | 6.70                     |
| Mark Green        | 950.00      | 6.70                     |
| Joseph Martin     | 900.00      | 6.35                     |
| Sarah Wilson      | 850.00      | 5.99                     |
| Daniel Hall       | 700.00      | 4.94                     |
| Jennifer Moore    | 500.00      | 3.53                     |
| John Smith        | 450.00      | 3.17                     |
| Thomas Anderson   | 400.00      | 2.82                     |
| Christopher Lewis | 350.00      | 2.47                     |
| Emily Davis       | 300.00      | 2.12                     |
| Betty King        | 275.00      | 1.94                     |
| Linda Harris      | 200.00      | 1.41                     |
| Paul Adams        | 180.00      | 1.27                     |
| Matthew Young     | 150.00      | 1.06                     |
| David Lee         | 120.00      | 0.85                     |
| Susan Clark       | 90.00       | 0.63                     |
| Margaret Scott    | 85.00       | 0.60                     |
| Lisa Martinez     | 80.00       | 0.56                     |
| Mike Brown        | 75.00       | 0.53                     |
| Patricia Jackson  | 60.00       | 0.42                     |
| Nancy Allen       | 55.00       | 0.39                     |
| Anthony Wright    | 45.00       | 0.32                     |
| Karen Walker      | 40.00       | 0.28                     |
| Sandra Baker      | 30.00       | 0.21                     |
| Barbara Thompson  | 25.00       | 0.18                     |
| Donna Nelson      | 20.00       | 0.14                     |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/cUuoghcrqk7Ao8hRpm6rDx/2)