# Data Analytics Portfolio
### Dhanya Vijayakumar

A collection of end-to-end data analytics projects spanning SQL, Power BI, 
and Excel — covering data cleaning, exploratory analysis, business 
intelligence dashboards, RFM segmentation, and churn analysis.


## Projects

### 1. Customer Churn Analysis (Power BI)
**Folder:** [`/powerbi-churn`](./powerbi-churn)

3-page interactive dashboard analysing telecom customer churn across 
7,043 customers. Includes risk segmentation using churn scores, 
contract analysis, and service-level churn drivers.

**Skills:** Power Query, DAX, feature engineering, risk segmentation,
drill-through tables, scatter plots, stacked bar charts

**Key findings:**
- Overall churn rate: **26.54%**
- Month-to-month contracts drive **88.5% of all churn**
- Fiber Optic users churn at **41.89%** — more than double DSL users
- High-risk customers (Churn Score = 100) churn at **92%**


### 2. Customer Segmentation Analysis (SQL)
**Folder:** [`/sql-segmentation`](./sql-segmentation)

RFM (Recency, Frequency, Monetary) analysis on 20,000 rows of transactional 
data using a modular, view-based SQL architecture. Customers are scored 
1–4 on each RFM dimension using NTILE() and classified into actionable 
business segments.

**Skills:** Views, Window Functions (NTILE, RANK), REGEXP validation,
CAST, STR_TO_DATE, CASE WHEN, subqueries, aggregate functions

**Key findings:**
- **528 unique customers** identified after cleaning
- **29 At-Risk customers** generating ~£27,926 — require immediate 
  re-engagement
- **235 Low Value customers** account for ~£283,936 — 
  upsell opportunity


### 3. Profit Optimisation & Cost Analysis (Excel)
**Folder:** [`/excel-profit`](./excel-profit)

Identifies profit leakage across regions, categories, and discount 
tiers in a global e-commerce dataset using Power Query, Pivot Tables, 
and an interactive dashboard.

**Skills:** Power Query, feature engineering, Pivot Tables, combo charts,
KPI design, loss flagging, discount analysis

**Key findings:**
- **South America shipping costs = 134.68% of revenue** — 
  logistics costs exceed sales on many orders
- High-discount orders earn **~97% less profit** than low-discount orders
- **Office Supplies**: 224 loss-making orders despite being 
  the lowest-profit category
  

### 4. E-Commerce Sales Analysis (SQL)
**Folder:** [`/sql`](./sql)

Queried the Superstore dataset in MySQL across 5 analytical sections — 
KPIs, regional analysis, product performance, time trends, and 
loss-making order identification.

**Skills:** Data cleaning, GROUP BY, HAVING, subqueries, DATE_FORMAT,
STR_TO_DATE, aggregate functions

**Key findings:**
- Total revenue: **$2.27M** | Profit margin: **12.47%**
- West region leads with **$713K** in sales
- Top product: Canon imageCLASS 2200 Copier at **$61.6K** revenue


### 5. Sales Performance Dashboard (Power BI)
**Folder:** [`/powerbi`](./powerbi)

3-page Power BI dashboard with DAX measures and profitability analysis 
across regions, categories, and customers — built on the Superstore dataset.

**Skills:** DAX, Power Query, KPI cards, scatter plots, combo charts,
loss detection, multi-page navigation

**Key findings:**
- Tables and Bookcases: combined loss of **$21K** despite $320K+ in sales
- Central region: **$500K sales** but only **$40K profit** — 
  worst margin of all regions


### 6. Sales Performance Dashboard (Excel)
**Folder:** [`/excel`](./excel)

Same Superstore dataset rebuilt in Excel using only Pivot Tables and 
Slicers — demonstrating tool-agnostic analytical thinking without 
specialist BI software.

**Skills:** Pivot Tables, Pivot Charts, Slicers, KPI card design

**Key findings:**
- Top 10 customers account for **$153K (6.7%)** of total revenue
- Sales peak in **November ($350K)** — Q4 drives disproportionate revenue


## Skills Summary

| Area | Tools & Techniques |
|---|---|
| **Querying** | MySQL — joins, views, window functions, CTEs, REGEXP |
| **BI Dashboards** | Power BI — DAX, Power Query, drill-through, slicers |
| **Spreadsheet Analytics** | Excel — Power Query, Pivot Tables, dashboard design |
| **Analysis techniques** | RFM segmentation, churn analysis, cost analysis, KPI design |


## Dataset Sources
| Dataset | Used In |
|---|---|
| Superstore (Kaggle) | SQL project, Power BI dashboard, Excel dashboard |
| Online Retail II — UCI (Kaggle) | SQL Customer Segmentation |
| Telco Customer Churn (Kaggle) | Power BI Churn Analysis |
| Global E-Commerce Dataset (Kaggle) | Excel Profit Optimisation |


## Contact
**GitHub:** [E-cmyk-debug](https://github.com/E-cmyk-debug)  
**LinkedIn:** www.linkedin.com/in/dhanya-v-a7114628b
