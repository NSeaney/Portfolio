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