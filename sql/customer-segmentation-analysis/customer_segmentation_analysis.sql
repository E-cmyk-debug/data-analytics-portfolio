USE sql_project;
DROP TABLE online_retail;
CREATE TABLE online_retail (
    InvoiceNo TEXT,
    StockCode TEXT,
    Description TEXT,
    Quantity TEXT,
    InvoiceDate TEXT,
    UnitPrice TEXT,
    CustomerID TEXT,
    Country TEXT
);
SELECT COUNT(*) FROM online_retail;
# Data Cleaning and Datatype conversion
CREATE VIEW clean_data AS 
SELECT
InvoiceNo,
CAST(Quantity AS SIGNED) AS Quantity,
STR_TO_DATE(InvoiceDate, '%m/%d/%Y %H:%i') AS OrderDate,
CAST(UnitPrice AS DECIMAL(10,2)) AS UnitPrice,
CAST(CustomerID AS SIGNED) AS CustomerID,
(CAST(Quantity AS SIGNED) *CAST(UnitPrice AS DECIMAL(10,2))) AS Sales
FROM online_retail
WHERE
CustomerID IS NOT NULL
AND CustomerID != ''
AND Quantity REGEXP '^-?[0-9]+$'
AND UnitPrice REGEXP '^[0-9]+(\\.[0-9]+)?$'
AND CAST(Quantity AS SIGNED) > 0
AND CAST(UnitPrice AS DECIMAL(10,2)) > 0
AND InvoiceNo NOT LIKE 'C%';
SELECT * FROM clean_data;
# How many unique customers do we have?
SELECT COUNT(DISTINCT CustomerID) AS total_customers
FROM clean_data;
# What  is the total revenue generated?
SELECT SUM(sales) AS total_sales
FROM clean_data;
# Creating Customer-level Metrics
CREATE VIEW Customer_metrics AS
SELECT CustomerID,
COUNT(DISTINCT InvoiceNo) AS total_orders,
SUM(Sales) AS total_sales,
MIN(orderdate) AS first_order_date,
MAX(orderdate) AS last_order_date
FROM clean_data
GROUP BY CustomerID;
# Who are the top customers by total spending?
SELECT CustomerID, total_sales
FROM customer_metrics
ORDER BY total_sales DESC
LIMIT 10;
# How frequently do customers make purchase?
SELECT CustomerID, total_orders
FROM customer_metrics
ORDER BY total_orders DESC
LIMIT 10;
# What is the  AOV per customer?
SELECT CustomerID,
ROUND(total_sales / NULLIF(total_orders,0),2) AS avg_order_value
FROM customer_metrics
WHERE total_orders > 1
ORDER BY avg_order_value DESC
LIMIT 10;
# Creating RFM Metrics
CREATE VIEW rfm_metrics AS
SELECT CustomerID,
DATEDIFF(
(SELECT MAX(orderdate) FROM clean_data),last_order_date) AS recency,
total_orders AS frequency,
total_sales AS monetary
FROM Customer_metrics;
SELECT * FROM rfm_metrics;
# which customer purchased recently?
SELECT CustomerID, recency, RANK()OVER (ORDER BY recency ASC) AS rank_recency
FROM rfm_metrics;
# which customer purchased frequently?
SELECT CustomerID, frequency, RANK()OVER (ORDER BY frequency DESC) AS rank_frequency
FROM rfm_metrics;
# which customer spend most?
SELECT CustomerID,Monetary,RANK() OVER (ORDER BY Monetary DESC) AS rank_spend
FROM rfm_metrics;
# Customer Segmentation
# Can customers be grouped into segments like: High value customers, Loyal customers, At risk customers, Low value customers.
CREATE VIEW rfm_scores AS 
SELECT CustomerID, recency, frequency, monetary,
NTILE(4) OVER (ORDER BY recency ASC) AS r_score,
NTILE(4) OVER (ORDER BY frequency DESC) AS f_score,
NTILE(4) OVER (ORDER BY monetary DESC) AS m_score
FROM rfm_metrics;
CREATE VIEW customer_segments AS
SELECT CustomerID, recency, frequency, monetary,r_score, f_score, m_score,
CASE
WHEN r_score =1 AND f_score = 4 AND m_score = 4 THEN 'High value'
WHEN f_score >= 3 THEN 'Loyal'
WHEN r_score >= 3 THEN 'At risk'
ELSE 'Low value'
END AS segment
FROM rfm_scores;
# Which segment contributes the most revenue?
SELECT segment, SUM(monetary) AS total_revenue
FROM customer_segments
GROUP BY segment
ORDER BY total_revenue DESC;
# Which segment needs retention strategies?
SELECT segment, COUNT(*) AS customer_count
FROM customer_segments
WHERE segment IN ('At risk', 'Low value')
GROUP BY segment;
