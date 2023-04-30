---ADVANTAGES OF VIEWS:
---SIMPLIFIES COMPLEX QUERIES, SECURITY, READ-ONLY

USE WALMART_DB;

--CREATE CUSTOMER TABLE

CREATE OR REPLACE TABLE CUSTOMER_DETAILS
(cust_id         VARCHAR(10) PRIMARY KEY,
 cust_name       VARCHAR(50) NOT NULL,
 phone           VARCHAR(50),
 email           VARCHAR(50),
 address         VARCHAR(250)
);

--PODUCTS TABLE

CREATE OR REPLACE TABLE PRODUCT_INFO
(prod_id         VARCHAR(10) PRIMARY KEY,
 prod_name       VARCHAR(50) NOT NULL,
 brand           VARCHAR(50) NOT NULL,
 price           INT
);

--LET'S CREATE AN ORDERS TABLE AND REFERENCE PRODUCT ID WITH CUSTOMER ID FROM BOTH TABLES

CREATE OR REPLACE TABLE ORDER_DETAILS
(ord_id          BIGINT PRIMARY KEY,
 prod_id         VARCHAR(10) REFERENCES PRODUCT_INFO(prod_id),
 cust_id         VARCHAR(10) REFERENCES CUSTOMER_DETAILS(cust_id),
 quantity        INT,
 discount        INT,
 date            DATE
);

SHOW TABLES;


--INSERT TABLE VALUES

INSERT INTO CUSTOMER_DETAILS VALUES
('C1', 'Alice Johnson', '(646)890-590' , 'alice@demo.com', 'New York'),
('C2', 'James Xavier', '(647)340-132', 'james@demo.com', 'Boston'),
('C3', 'Bob Parker', '(645)456-724', 'bob@demo.com', 'Washington'),
('C4', 'Mark Cooper', '(647)989-555', 'eshal@demo.com', 'Boston');

INSERT INTO PRODUCT_INFO VALUES
('P1', 'Samsung S22', 'Samsung', 800),
('P2', 'Google Pixel 6 Pro', 'Google', 900),
('P3', 'Sony Bravia TV', 'Sony', 600),
('P4', 'Dell XPS 17', 'Dell', 2000),
('P5', 'iPhone 13', 'Apple', 800),
('P6', 'Macbook Pro 16', 'Apple', 5000);

INSERT INTO ORDER_DETAILS VALUES
(1, 'P1', 'C1', 2, 10, '20220-01-01'),
(2, 'P3', 'C1', 1, 0, '20220-01-01'),
(3, 'P2', 'C2', 1, 0, '2020-01-01'),
(4, 'P4', 'C3', 3, 20, '2020-02-01'),
(5, 'P3', 'C4', 1, 0, '2020-02-01'),
(6, 'P6', 'C1', 10, 30, '2020-03-01'),
(7, 'P4', 'C3', 5, 25, '2020-04-01');

--CREATE VIEWS

CREATE OR REPLACE VIEW ORDER_SUMMARY
AS
SELECT o.ord_id, o.date, c.cust_name, p.prod_name, 
       (p.price * o.quantity) - (p.price * o.quantity) * (o.discount::float/100) AS cost
FROM CUSTOMER_DETAILS c
JOIN ORDER_DETAILS o ON o.cust_id = c.cust_id
JOIN PRODUCT_INFO p ON p.prod_id = o.prod_id
ORDER BY o.ord_id, c.cust_name;

SELECT * FROM ORDER_SUMMARY;

INSERT INTO ORDER_DETAILS VALUES
(8, 'P3', 'C1', 1, 0, '2020-04-02'),
(9, 'P5', 'C2', 1, 0, '2020-04-03'),
(10, 'P5', 'C3', 1, 0, '2020-04-04');


SELECT * FROM ORDER_SUMMARY;

--CREATE ANOTHER VIEW

CREATE OR REPLACE VIEW PREMIUM_PRODUCTS
AS
SELECT * FROM PRODUCT_INFO where price > 1000;

SELECT * FROM PREMIUM_PRODUCTS;

SELECT * FROM ORDER_SUMMARY
WHERE PROD_NAME LIKE 'S%'; 

---CREATE A SECURE VERSION


CREATE OR REPLACE SECURE VIEW ORDER_SUMMARY_SECURE
AS
SELECT * FROM ORDER_SUMMARY;


SELECT * FROM ORDER_SUMMARY_SECURE;


CREATE OR REPLACE TABLE LINEITEM AS
SELECT * FROM
"SNOWFLAKE_SAMPLE_DATA"."TPCH_SF10"."LINEITEM";

SELECT * FROM LINEITEM LIMIT 10;





CREATE OR REPLACE VIEW HIGH_TAX_VIEW
AS
SELECT * FROM STORE WHERE L_TAX > 0.05;



