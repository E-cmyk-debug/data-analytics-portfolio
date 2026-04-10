# Profit Optimisation & Cost Analysis - Excel Project

An Excel-based business analytics project that identifies profit leakages across regions, product categories, and discount strategies using an interactive dashboard.


## Overview

This project analyses a **global e-commerce dataset** using Microsoft Excel to uncover the key factors affecting business profitability. The goal is to pinpoint where the business is losing money and provide actionable recommendations to improve profit margins.

## Dataset Description

| Field | Details |
|---|---|
| **Source** | Kaggle — Global E-Commerce Dataset |
| **Type** | Transaction-level sales data |

**Key Columns:**

| Column | Description |
|---|---|
| `Order_ID` | Unique order identifier |
| `Order_Date` | Date of transaction |
| `Customer_Name` | Name of the customer |
| `Customer_Segment` | Consumer / Corporate / Home Office |
| `Country` | Country of the order |
| `Region` | Geographic region |
| `Product_Category` | Office Supplies / Furniture / Technology / Clothing & Accessories |
| `Product_Name` | Name of the product |
| `Quantity` | Units ordered |
| `Unit_Price` | Price per unit |
| `Discount_Percent` | Discount applied to the order |
| `Total_Sales` | Total revenue from the order |
| `Shipping_Cost` | Logistics cost for the order |
| `Profit` | Net profit from the order |
| `Payment_Method` | Method used for payment |


## Business Questions

| # | Question |
|---|---|
| 1 | Where is the business losing money? |
| 2 | Which regions and product categories are underperforming? |
| 3 | How do discounts impact profitability? |
| 4 | Does shipping cost significantly affect profit margins? |
| 5 | Which categories contribute most to loss-making orders? |


## Tools Used

- **Microsoft Excel**
  - Power Query — data cleaning & transformation
  - Pivot Tables — exploratory analysis
  - Pivot Charts — visualisation
  - Dashboard Design — interactive slicers and KPI cards


## Approach & Process

### Step 1 — Data Cleaning (Power Query)
- Removed duplicates and handled missing values
- Standardised data types for dates, currencies, and percentages

### Step 2 — Feature Engineering
Created calculated columns to support analysis:

| New Column | Formula / Logic |
|---|---|
| `Profit Margin %` | `Profit / Total_Sales × 100` |
| `Discount_Category` | Binned into Low / Medium / High |
| `Shipping Cost Ratio` | `Shipping_Cost / Total_Sales × 100` |
| `Loss Flag` | `1` if Profit < 0, else `0` |

### Step 3 — Exploratory Analysis (Pivot Tables)
- Profit breakdown by Region and Product Category
- Discount impact across profitability tiers
- Shipping cost ratio vs. total profit by region
- Loss-making order concentration by category

### Step 4 — Dashboard
Built an interactive dashboard with slicers for **Customer Segment**, **Region**, and **Product Category**, featuring:
- KPI cards — Total Profit, Total Sales, Avg Profit Margin, % Loss Flag
- Profit by Region — bar chart
- Impact of Shipping Cost on Regional Profitability — combo chart
- Discount Impact on Profitability — combo chart
- Profit by Category — bar chart
- Loss-Making Orders by Product Category — horizontal bar chart


## Dashboard KPIs

| Metric | Value |
|---|---|
| Total Profit | 158,872.32 |
| Total Sales | 484,559.34 |
| Avg Profit Margin | 20.02% |
| % Loss Flag | 13.60% |


## Key Insights

### Profit by Region

| Region | Total Profit |
|---|---|
| Europe | 45,672.16 |
| North America | 45,250.09 |
| Asia Pacific | 39,116.61 |
| South America | 14,680.98 |
| Middle East & Africa | 14,152.48 |

### Profit by Product Category

| Category | Total Profit |
|---|---|
| Furniture | 81,171.57 |
| Technology | 48,268.65 |
| Clothing & Accessories | 26,112.94 |
| Office Supplies | 3,319.16 |

### Shipping Cost Impact
- **South America** has a shipping cost ratio of **134.68%** — shipping costs exceed revenue on many orders
- **Middle East & Africa** follows at **116.65%**, indicating severe logistics inefficiency in both regions
- **Europe** and **North America** maintain ratios below **90%**, reflecting better logistics management

### Discount Impact on Profitability

| Discount Category | Total Profit |
|---|---|
| Low | 1,29,766.94 |
| Medium | 25,808.48 |
| High | 3,296.90 |

Higher discounts cause a sharp drop in profit — **High-discount orders earn ~97% less** than Low-discount orders.

### Loss-Making Orders by Category

| Category | Loss-Making Orders |
|---|---|
| Office Supplies | 224 |
| Clothing & Accessories | 23 |
| Technology | 15 |
| Furniture | 10 |

Office Supplies account for the **vast majority of loss-making transactions** despite being the lowest-profit category overall.


## Business Recommendations

- **Limit excessive discounting** — High discount tiers drastically erode margins; set discount caps by category
- **Optimise logistics in high-cost regions** — South America and MEA have unsustainable shipping cost ratios; renegotiate carrier contracts or adjust pricing to compensate
- **Reassess Office Supplies pricing strategy** — With 224 loss-making orders, this category needs a pricing review or stricter discount controls
- **Invest in Europe and North America** — These regions show the strongest profitability and should be priority markets for growth


## Files in This Repository

| File | Description |
|---|---|
| `Profit_Optimization Dashboard.xlsx` | Main Excel workbook with dashboard |
| `global_ecommerce_sales_dataset.csv` | Raw dataset |
| `screenshots/` | Dashboard screenshots |
| `README.md` | Project documentation |


## Dashboard Preview

<img width="1867" height="809" alt="Profit_Optimisation_Dashboard" src="https://github.com/user-attachments/assets/14404031-4d08-4f0a-8c63-d4133a81097d" />


## Conclusion

This project identifies the key drivers of profit leakage in a global e-commerce business — excessive discounting, high logistics costs in specific regions, and a problematic Office Supplies category. The interactive Excel dashboard allows stakeholders to filter by segment, region, and category to explore insights and support data-driven decisions.
