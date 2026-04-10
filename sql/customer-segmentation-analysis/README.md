# Customer Segmentation Analysis — SQL Project

A SQL-based analytics project that transforms raw transactional data into meaningful customer segments using the **RFM (Recency, Frequency, Monetary)** framework.

## Overview

This project performs **Customer Segmentation Analysis** on the [Online Retail Dataset](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci) from Kaggle.

The dataset originally contained **541,910 rows**, from which a **20,000-row sample** was used for efficient analysis.

**Goals of this project:**
- Clean and validate raw transactional data
- Transform it into customer-level metrics
- Apply RFM analysis to score each customer
- Segment customers into actionable business groups


## Dataset Description

| Field | Details |
|---|---|
| **Source** | Kaggle — Online Retail Dataset |
| **Type** | Transactional sales data |
| **Original Size** | 541,910 rows |
| **Sample Used** | 20,000 rows |

**Key Columns:**

| Column | Description |
|---|---|
| `InvoiceNo` | Unique invoice identifier (prefix `C` = cancellation) |
| `StockCode` | Product code |
| `Description` | Product description |
| `Quantity` | Units purchased per transaction |
| `InvoiceDate` | Date and time of transaction |
| `UnitPrice` | Price per unit |
| `CustomerID` | Unique customer identifier |
| `Country` | Country of the customer |


## Business Questions

| # | Question |
|---|---|
| 1 | How many unique customers do we have? |
| 2 | What is the total revenue generated? |
| 3 | Who are the top customers by total spending? |
| 4 | How frequently do customers make purchases? |
| 5 | What is the average order value (AOV) per customer? |
| 6 | Which customers purchased most recently? *(Recency)* |
| 7 | Which customers purchase most frequently? *(Frequency)* |
| 8 | Which customers spend the most? *(Monetary)* |
| 9 | Can customers be grouped into meaningful segments? |
| 10 | Which segment contributes the most revenue? |
| 11 | Which segment needs retention strategies? |


## Tools Used

- **Database:** MySQL
- **Client:** MySQL Workbench
- **Language:** SQL — DDL, DML, Views, Window Functions


## Approach & Process

### Step 1 — Data Ingestion
All columns are imported as `TEXT` to prevent type-mismatch errors during bulk CSV import. Type conversion is handled downstream in a view.

### Step 2 — Data Cleaning (`clean_data` view)
- Removed rows with `NULL` or blank `CustomerID`
- Excluded cancelled transactions (invoices starting with `'C'`)
- Filtered out zero or negative `Quantity` and `UnitPrice` values
- Validated numeric fields using `REGEXP`
- Cast `Quantity`, `UnitPrice`, and `CustomerID` to proper types using `CAST`
- Parsed `InvoiceDate` using `STR_TO_DATE`
- Derived a `Sales` column: `Quantity × UnitPrice`

### Step 3 — Customer-Level Aggregation (`customer_metrics` view)
Aggregated each customer's history into:
- `total_orders` — distinct invoice count
- `total_sales` — cumulative revenue
- `first_order_date` and `last_order_date`

### Step 4 — RFM Metrics (`rfm_metrics` view)

| Metric | Definition |
|---|---|
| **Recency** | Days since last purchase (vs. dataset's latest order date) |
| **Frequency** | Total number of orders placed |
| **Monetary** | Total amount spent |

### Step 5 — RFM Scoring (`rfm_scores` view)
Each customer is scored 1–4 on each dimension using `NTILE(4)`:
- **R Score:** Lower recency → higher score (more recent = better)
- **F Score:** Higher frequency → higher score
- **M Score:** Higher spend → higher score

### Step 6 — Customer Segmentation (`customer_segments` view)

| Segment | RFM Criteria | Description |
|---|---|---|
| 🏆 **High Value** | R=1, F=4, M=4 | Recent, frequent, and high-spending |
| 💛 **Loyal** | F ≥ 3 | Consistent repeat buyers |
| ⚠️ **At Risk** | R ≥ 3 | Previously active, now lapsing |
| 🔵 **Low Value** | All others | Infrequent or low-spend customers |


## Key SQL Concepts Used

- `CREATE VIEW` — modular, reusable query layers
- `CAST` and `STR_TO_DATE` — type conversion
- `REGEXP` — field validation on raw text data
- `NTILE()` — percentile-based RFM scoring
- `RANK() OVER` — customer ranking per RFM dimension
- `CASE WHEN` — rule-based segment classification
- `NULLIF` — safe division (avoids divide-by-zero in AOV)
- Aggregate functions — `SUM`, `COUNT`, `MIN`, `MAX`


## Key Insights

**Dataset Overview:**
- **528 unique customers** identified after cleaning
- **Total revenue: ~₹399,971**

**Customer Behaviour:**
- A small group of customers drives a significant portion of total revenue
- Some customers have very high AOV, indicating premium buyers
- High-frequency customers form a stable, loyal user base

**RFM Insights:**
- Multiple customers have `recency = 0`, indicating very recent activity
- High-frequency customers are consistent revenue contributors
- High monetary customers are the key business drivers

**Segmentation Insights:**

| Segment | Customers | Revenue | Notes |
|---|---|---|---|
| Low Value | 235 | ~₹283,936 | Large volume, low individual contribution |
| Loyal | — | ~₹88,108 | Stable, repeat buyers |
| At Risk | 29 | ~₹27,926 | Require immediate retention action |
| High Value | — | — | Priority for premium engagement |


## Business Recommendations

- **At Risk customers** → Launch targeted re-engagement and win-back campaigns
- **High Value customers** → Provide exclusive offers, early access, and VIP treatment
- **Loyal customers** → Reward with loyalty programs and referral incentives
- **Low Value customers** → Apply upsell and cross-sell strategies to increase order value


## How to Run

1. Open MySQL Workbench (or any MySQL-compatible client).
2. Create the schema and table:
   ```sql
   USE sql_project;
   CREATE TABLE online_retail (
       InvoiceNo TEXT, StockCode TEXT, Description TEXT,
       Quantity TEXT, InvoiceDate TEXT, UnitPrice TEXT,
       CustomerID TEXT, Country TEXT
   );
   ```
3. Import the CSV using your client's import wizard or `LOAD DATA INFILE`.
4. Run the SQL script top-to-bottom — each view depends on the one before it.

> **Important:** Import all columns as `TEXT`. The `clean_data` view handles all type casting and validation. Attempting typed imports directly often fails due to inconsistent raw data.


## Conclusion

This project demonstrates how raw transactional data can be transformed into meaningful business intelligence using only SQL.

By applying RFM analysis and customer segmentation, businesses can:
- Identify and retain high-value customers
- Detect at-risk customers before they churn
- Design targeted marketing strategies for each segment
- Optimise marketing spend by focusing on the right customers
