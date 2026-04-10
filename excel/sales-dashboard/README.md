# Sales Performance Dashboard (Excel)

## Overview
This project builds an interactive Sales Performance Dashboard in Microsoft Excel using Pivot Tables, Pivot Charts, and Slicers — demonstrating that meaningful business intelligence can be built without specialist BI tools.

> **Note:** This project uses the same Superstore dataset as my E-commerce Sales Analysis (SQL) and Sales Performance Dashboard (Power BI) projects. Each project demonstrates a different skill set — SQL for querying and data extraction, Power BI for advanced interactive visuals, and Excel for accessible, formula-driven dashboards.


## Business Questions
1. Which regions contribute the most to total sales?
2. How does sales share vary across product categories?
3. What is the monthly sales trend throughout the year?
4. Who are the top 10 customers by total sales?
5. How does profit vary across regions and categories?
6. Where are the low-margin or loss-risk areas?


## Tools & Techniques
- Microsoft Excel
- Pivot Tables & Pivot Charts
- Slicers (Region, Category filters)
- KPI Card Design
- Data Cleaning & Validation


## Key Metrics
| Metric | Value |
|---|---|
| Total Sales | $2,297,201 |
| Total Profit | $286,397 |
| Total Orders | 5,009 |
| Profit Margin | 12.47% |
| Average Order Value | $459 |


## Dashboard Features
- KPI header row (Sales, Profit, Orders, Margin, AOV)
- Sales by Region (bar chart)
- Sales Contribution by Category (% bar chart)
- Monthly Sales Trend (line chart)
- Profit by Region and Category (grouped bar chart)
- Top 10 Customers by Sales (table)
- Interactive slicers for Region and Category


## Key Insights

**Regional Performance**
- West leads all regions with **$725,457** in sales, followed by East at **$678,781**
- Central is the weakest region at **$501,239** — and from the profit breakdown, Central also shows the lowest profit across all categories

**Category Performance**
- Technology holds the largest share at **36.4%** of total sales
- Furniture and Office Supplies are nearly equal at 32.3% and 31.3% — But profit by category reveals Furniture significantly underperforms (visible in the Profit by Region and Category chart)

**Monthly Trend**
- Sales peak in **March, September, and November**, suggesting seasonal buying cycles — likely aligned with business procurement and year-end budgets
- February is the lowest month, with sales dipping below $125K

**Top Customers**
- **Sean Miller** is the #1 customer at **$25,043**
- The top 10 customers together account for **$153,811** in sales — about 6.7% of total revenue from just 10 buyers


## Dashboard Preview
<img width="1787" height="779" alt="dashboard" src="https://github.com/user-attachments/assets/b70ed1e2-9e4b-4462-8659-edd5600cacd2" />


## Project Structure
sales-dashboard/
├── Sales_Dashboard.xlsx
├── dataset.csv
├── dashboard.png
└── README.md

## How to Use
1. Download `Sales_Dashboard.xlsx`
2. Open in Microsoft Excel (2016 or later recommended)
3. Use the Region and Category slicers to filter all charts simultaneously
4. KPI cards at the top update automatically with slicer selections


## Key Learnings
- Built a fully interactive dashboard without any BI tool — using only 
  native Excel features
- Designed KPI cards and chart layouts with readability and business 
  context in mind
- Reinforced understanding of how the same dataset tells different stories 
  Depending on the tool and the questions asked
