# Customer Segmentation Analysis (SQL Project)

## 1. Overview

This project performs **Customer Segmentation Analysis** using SQL on the Online Retail dataset.

The dataset originally contained **541,910 rows**, from which a **20,000-row sample** was used for efficient analysis.

The goal of this project is to:

* Clean raw transactional data
* Transform it into customer-level insights
* Apply **RFM (Recency, Frequency, Monetary) analysis**
* Segment customers into meaningful business groups

## 2. Dataset Description

* **Source:** Kaggle (Online Retail Dataset)
* **Type:** Transactional sales data

### Key Columns:

* InvoiceNo
* StockCode
* Description
* Quantity
* InvoiceDate
* UnitPrice
* CustomerID
* Country

## 3. Business Questions

1. How many unique customers do we have?
2. What is the total revenue generated?
3. Who are the top customers by total spending?
4. How frequently do customers make purchases?
5. What is the average order value per customer?
6. Which customers purchased recently? (Recency)
7. Which customers purchase frequently? (Frequency)
8. Which customers spend the most? (Monetary)
9. Can customers be grouped into segments like:

   * High Value Customers
   * Loyal Customers
   * At Risk Customers
   * Low Value Customers
10. Which segment contributes the most revenue?
11. Which segment needs retention strategies?

## 4. Tools Used

* SQL (MySQL)

## 5. Approach / Process

1. **Data Cleaning**

   * Removed null and invalid values
   * Filtered cancelled transactions
   * Converted data types using CAST and STR_TO_DATE
   * Validated numeric fields using REGEXP

2. **Data Transformation**

   * Created **Sales = Quantity × UnitPrice**
   * Built reusable SQL views for structured analysis

3. **Customer-Level Aggregation**

   * Calculated:

     * Total Orders
     * Total Sales
     * First Order Date
     * Last Order Date

4. **RFM Analysis**

   * Recency → Days since last purchase
   * Frequency → Number of orders
   * Monetary → Total spending

5. **Customer Segmentation**

   * Used **NTILE()** for scoring
   * Applied **CASE WHEN** for segment classification

## 6. Key Insights 

* The dataset contains **528 unique customers**
* Total revenue generated is approximately **₹399,971**

### Customer Behaviour:

* A small group of customers contributes a **significant portion of revenue**
* Some customers have **very high average order value**, indicating premium buyers
* Frequent customers (high frequency) represent **loyal user base**

### RFM Insights:

* Multiple customers show **recency = 0**, meaning very recent activity
* High-frequency customers are consistent contributors to revenue
* High monetary customers are key business drivers

### Segmentation Insights:

* **Low Value customers contribute the highest total revenue (~₹283,936)**
  Indicates large volume but low individual contribution

* **Loyal customers contribute ~₹88,108**
  Stable and repeat buyers

* **At Risk customers contribute ~₹27,926**
  Require immediate retention strategies

* **235 customers fall under the Low Value segment**

* **29 customers are At Risk**

## 7. Business Recommendations

* Focus retention campaigns on **At Risk customers**
* Provide exclusive offers to **High Value customers**
* Engage **Loyal customers** with reward programs
* Upsell strategies can convert **Low Value → High Value customers**

## 8. Conclusion

This project demonstrates how raw transactional data can be transformed into meaningful business insights using SQL.

By applying RFM analysis and segmentation, businesses can:

* Identify high-value customers
* Improve retention strategies
* Optimise marketing efforts
