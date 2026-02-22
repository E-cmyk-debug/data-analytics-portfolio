-- Mini Project: Basic Sales Analysis using SQL
-- Dataset: Superstore Sales Dataset (reference)
-- Objective: Analyse retail sales data using SQL
-- Table name assumed: sales
-- Columns used: order_id, order_date, customer_id, customer_name, segment, country, city, region, category, sub_category, product_name, sales
-- Concepts used: SELECT, WHERE, GROUP BY, HAVING, ORDER BY, LIMIT

-- 1. View all records
SELECT *
FROM sales;

-- 2. Total number of orders
SELECT COUNT(order_id) AS total_orders
FROM sales;

-- 3. Total sales across all orders
SELECT SUM(sales) AS total_sales
FROM sales;

-- 4. Average sales value per order
SELECT AVG(sales) AS avg_sales
FROM sales;

-- 5. Total sales by category
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category;

-- 6. Total sales by region
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region;

-- 7. Total sales by customer segment
SELECT segment, SUM(sales) AS total_sales
FROM sales
GROUP BY segment;

-- 8. Categories with total sales greater than 50000
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(sales) > 50000;

-- 9. Top 5 products by total sales
SELECT product_name, SUM(sales) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- 10. Top 5 cities by total sales
SELECT city, SUM(sales) AS total_sales
FROM sales
GROUP BY city
ORDER BY total_sales DESC
LIMIT 5;
