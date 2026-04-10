# Sales Performance Dashboard (Power BI Project)

## 1. Overview
This project presents an end-to-end Sales Performance Dashboard built using 
Power BI to analyse business performance across regions, products, customers, 
and time using the Superstore dataset.

**Goals:**
- Transform raw sales data into meaningful business insights
- Analyse revenue, profit, and customer behaviour
- Identify high-performing and loss-making areas
- Support data-driven business decision-making


## 2. Dataset Description
- **Source:** Sample Superstore Dataset (public dataset)
- **Type:** Transactional sales data
- **Key Columns:** Order ID, Order Date, Customer Name, Segment, Region,
  Category, Sub-Category, Sales, Profit, Quantity, Discount


## 3. Business Questions
1. What is the total sales and profit performance?
2. How do sales vary across different regions?
3. Which product categories contribute the most revenue?
4. What is the monthly trend of sales and profit?
5. Who are the top customers by sales?
6. Which sub-categories generate the highest and lowest profit?
7. Are there any loss-making products or segments?
8. How does profit vary across regions and categories?
9. Which products have high sales but low profitability?
10. What factors might be impacting profit margins?


## 4. Tools Used
- **Power BI** — Dashboard development and visualization
- **Power Query** — Data cleaning and transformation
- **DAX** — Custom measures and business metrics


## 5. Process

### Data Cleaning (Power Query)
- Verified and corrected data types
- Removed null values and errors
- Created Month and Year columns from Order Date

### DAX Measures Created
- Total Sales, Total Profit, Total Orders (Distinct Count)
- Profit Margin %, Average Order Value, Loss Orders %

### Dashboard Pages

**Page 1 — Executive Sales Overview**
KPI cards, Sales by Region, Sales by Category (%), Monthly Sales Trend,
and interactive slicers (Region, Category, Segment)

**Page 2 — Customer & Product Insights**
Top 10 Customers by Sales, Sales vs Profit Scatter Plot,
Sales and Profit by Sub-Category

**Page 3 — Profitability & Business Insights**
Profit by Region and Category, Sales vs Profit Combo Chart,
Loss-Making Products table


## 6. Key Insights

### Overall Performance
| Metric | Value |
|---|---|
| Total Sales | $2.3M |
| Total Profit | $286.4K |
| Profit Margin | 12.47% |
| Total Orders | 5,009 |
| Average Order Value | $459 |
| Loss-Making Orders | 26.31% of all orders |

### Regional Performance
- **West** leads with **$730K in sales** and **$108K in profit**
- **Central** is the weakest region despite $500K in sales — only **$40K profit**,
  suggesting heavy discounting or unfavorable product mix
- East and South follow at $92K and $47K profit respectively

### Category Performance
- **Technology** dominates profit at **$145K** (36.4% of sales)
- **Office Supplies** earns **$122K** profit on just 32.3% of sales — 
  best profit efficiency
- **Furniture** generates only **$18K** profit on 32.3% of sales — 
  the weakest margin by far

### Sub-Category Highlights
- **Copiers** — highest profit sub-category at **$56K**
- **Phones** — $45K profit on $330K sales
- **Tables** — loss-making at **($17,725)** despite $206K in sales
- **Bookcases** — loss-making at **($3,472)**
- **Supplies** — loss-making at **($1,189)**
- Total losses from these 3 sub-categories: **($22,387)**

### Top Customers
- **Sean Miller** — #1 customer at **$25K** in sales
- **Tamara Chand** — #2 at **$19K**
- Top 10 customers range between $12K–$25K in individual sales

### Sales Trend
- Sales accelerate from mid-year, peaking in **November ($350K)** and 
  **December ($330K)**
- January–February are consistently the weakest months (~$90K–$60K)
- Profit trend fluctuates despite steady sales growth, suggesting 
  discount-driven seasonal spikes


## 7. Business Recommendations
- **Furniture pricing review** — at only $18K profit on ~$730K revenue, 
  margins are critically thin
- **Eliminate or reprice Tables and Bookcases** — both are loss-generating 
  at scale
- **Central region strategy** — $500K in sales with $40K profit needs 
  immediate discount audit
- **Retain top customers** — top 10 customers represent a disproportionate 
  share of revenue; targeted loyalty programs are worth the investment
- **Leverage Q4 demand** — November/December spike should be anticipated 
  with better inventory and targeted promotions


## 8. Conclusion
This dashboard demonstrates how Power BI can convert raw transactional data 
into layered business intelligence. Combining Power Query cleaning, DAX 
measures, and multi-page interactive visuals, the dashboard surfaces critical 
issues — particularly the $22K loss from three sub-categories and Central 
region's margin problem — that would be invisible in a raw data view.
