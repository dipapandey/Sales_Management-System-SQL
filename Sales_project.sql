CREATE DATABASE sales_db;
USE sales_db;
CREATE TABLE sales(
Order_id INT PRIMARY KEY,
Order_date date,
Product_name varchar(50),
Category varchar(50),
quantity INT NOT NULL,
Sales decimal(10,2),
Profit decimal(10,2)
);

ALTER TABLE sales ADD region VARCHAR(50);
DESC sales;

INSERT INTO sales (Order_id,  Order_date, Product_name, Category, quantity, Sales, Profit,region) VALUES 
(1,'2025-01-05','Laptop','Electronics',2,120000.00,18000.00,'East'),
(2,'2025-01-06','Mouse','Electronics',5,2500.00,500.00,'West'),
(3,'2025-01-07','Chair','Furniture',3,9000.00,1500.00,'North'),
(4,'2025-01-08','Notebook','Stationery',20,4000.00,800.00,'South'),
(5,'2025-01-09','Printer','Electronics',1,15000.00,2500.00,'East');

SELECT * FROM sales;
SELECT SUM(sales) as Total_sales From sales;
SELECT sum(Profit) as Total_profit from sales;
SELECT region, SUM(sales) as Total_sales FROM sales GROUP BY region;
SELECT Product_name, sales FROM sales order by sales DESC LIMIT 1;
SELECT sum(quantity) AS total_quantity FrOM sales;
SELECT AVG(sales) AS avg_sales FROM sales;
SELECT Product_name, Profit FROM sales ORDER BY profit DESC LIMIT 1;
SELECT * FROM sales WHERE category= 'Electronics';
SELECT Product_name, sales from sales WHERE sales>1000;
SELECT region, SUM(Profit) AS total_profit from sales group by region order by total_profit DESC LIMIT 1;
SELECT COUNT(*) AS total_orders FROM sales;
