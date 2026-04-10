# E-Commerce Sales Analysis (SQL Project)

## Overview
This project analyses the Superstore e-commerce dataset to extract meaningful 
business insights related to sales performance, customer behaviour, and product 
trends using SQL in MySQL.

**Dataset:** Superstore Sales | **Tool:** MySQL Workbench | **Author:** Dhanya V


## Objectives
- Calculate total sales and profit (KPIs)
- Identify top-performing regions and products
- Analyse monthly and yearly sales trends
- Determine category-wise contribution to revenue
- Identify loss-making orders


## Project Structure
ecommerce-sales-analysis/
│
├── dataset.csv          # Superstore dataset
├── queries.sql          # All SQL queries (sectioned)
└── screenshots/         # MySQL Workbench output screenshots

## Tools Used
- MySQL Workbench (data cleaning, querying, analysis)


## Dataset
- **Source:** Superstore Sales Dataset (Kaggle)
- **Fields:** Order ID, Order Date, Ship Date, Customer Segment, Region,
              Category, Product Name, Sales, Quantity, Discount, Profit


## Key Insights

### Overall Business Performance
- **Total Revenue:** $2,272,449.86
- **Total Profit:** $282,857.75
- **Profit Margin:** ~12.4%

### Regional Performance
- The **West region** leads with **$713,471.34** in total sales

### Product Performance
- **Top product:** Canon imageCLASS 2200 Advanced Copier — $61,599.82 in revenue
- Top 10 products are dominated by office tech and binding equipment

### Time Trends
- **September 2014** recorded a notable spike at $81,496.81 — highest single 
  month in 2014
- **February 2014** was the lowest month at $4,119.82, suggesting 
  post-holiday demand dip

### Loss-Making Orders
- Multiple orders recorded negative profit — concentrated analysis available 
  in `queries.sql` (Section 5)


## SQL Highlights

**Data Cleaning**
```sql
UPDATE orders
SET order_date_clean = STR_TO_DATE(order_date, '%m/%d/%Y'),
    ship_date_clean  = STR_TO_DATE(ship_date,  '%m/%d/%Y');
```

**Category Contribution %**
```sql
SELECT category,
       SUM(sales) AS category_sales,
       (SUM(sales) / (SELECT SUM(sales) FROM orders)) * 100 AS contribution_pct
FROM orders
GROUP BY category
ORDER BY contribution_pct DESC;
```

**Loss-Making Orders**
```sql
SELECT order_id, SUM(profit) AS total_profit
FROM orders
GROUP BY order_id
HAVING total_profit < 0
ORDER BY total_profit;
```
