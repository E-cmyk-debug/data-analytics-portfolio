-- Project: E-Commerce Sales Analysis
-- Tool: MySQL
-- Dataset: Superstore
-- Author: Dhanya V 
CREATE DATABASE IF NOT EXISTS sql_project;
USE sql_project;
SELECT * FROM orders LIMIT 5;
-- DROP TABLE orders;
-- DATA CLEANING
SELECT COUNT(*) FROM orders;
ALTER TABLE orders
ADD COLUMN order_date_clean DATE,
ADD COLUMN ship_date_clean DATE;
-- Disable safe updates
SET SQL_SAFE_UPDATES = 0;
-- Convert date columns
UPDATE orders
SET order_date_clean = STR_TO_DATE(order_date, '%m/%d/%Y'),
    ship_date_clean = STR_TO_DATE(ship_date, '%m/%d/%Y');
-- Verify conversion
SELECT order_date, order_date_clean
FROM orders
LIMIT 5;
-- ANALYSIS
-- SECTION 1: BASIC KPIs
-- What is the total revenue and total profit?
SELECT SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM orders;
-- How many orders were placed?
SELECT COUNT(order_id) AS no_of_orders
FROM orders;
-- How many unique customers do we have?
SELECT COUNT(DISTINCT customer_id) AS no_of_unique_customers
FROM orders;
-- SECTION 2: REGIONAL ANALYSIS
--  Which region generates the highest sales?
SELECT region, SUM(sales) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC
LIMIT 1;
-- Which region is most profitable?
SELECT region, SUM(profit) AS total_profit
FROM orders
GROUP BY region
ORDER BY total_profit DESC
LIMIT 1;
-- SECTION 3: PRODUCT ANALYSIS
-- Which products generate the most revenue?
SELECT product_name, SUM(sales) AS total_revenue
FROM orders
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;
-- Which products perform poorly?
SELECT product_name, SUM(sales) AS total_revenue
FROM orders
GROUP BY product_name
ORDER BY total_revenue ASC
LIMIT 10;
-- Which category is most profitable?
SELECT category, SUM(profit) AS total_profit
FROM orders
GROUP by category
ORDER BY total_profit DESC;
-- SECTION 4: Time Analysis
-- How does sales change over time?
SELECT DATE_FORMAT(order_date_clean, '%Y-%m') AS month, SUM(sales) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;
-- How is the business growing year by year?
SELECT YEAR(order_date_clean) AS year, SUM(sales) AS total_sales
FROM orders
GROUP BY year
ORDER BY year;
-- SECTION 5: Advanced Business Insights
-- Which category contributes the most to total sales?
SELECT category, SUM(sales) AS category_sales, (SUM(sales) / (SELECT SUM(sales) FROM orders)) * 100 AS contribution_pct
FROM orders
GROUP BY category 
ORDER BY contribution_pct DESC;
-- Which orders are making losses?
SELECT order_id, SUM(profit) AS total_profit
FROM orders
GROUP BY order_id
HAVING total_profit < 0
ORDER BY total_profit;


