# Customer Churn Analysis - Power BI Project

A Power BI project that transforms raw telecom customer data into an interactive 3-page dashboard to identify churn drivers, segment customers by risk, and support data-driven retention strategies.


## Overview

This project presents a **Customer Churn Analysis Dashboard** built in Power BI using the Telco Customer Churn dataset from Kaggle.

**Goals of this project:**
- Clean and transform raw customer subscription data
- Build interactive dashboards to monitor churn behaviour
- Identify key factors driving customer churn
- Segment customers by churn risk level
- Provide actionable business recommendations for retention


## Dataset Description

| Field | Details |
|---|---|
| **Source** | Kaggle — Telco Customer Churn Dataset |
| **Type** | Customer subscription and service usage data |

**Key Columns:**

| Column | Description |
|---|---|
| `CustomerID` | Unique customer identifier |
| `Gender` | Customer gender |
| `Tenure Months` | Duration of subscription in months |
| `Contract` | Contract type — Month-to-month / One year / Two year |
| `Internet Service` | DSL / Fiber Optic / No service |
| `Payment Method` | Electronic check / Mailed check / Bank transfer / Credit card |
| `Monthly Charges` | Monthly billing amount |
| `Total Charges` | Cumulative charges over tenure |
| `Churn Label` | Whether the customer churned (Yes / No) |
| `Churn Score` | Predictive churn score (0–100) |
| `CLTV` | Customer Lifetime Value |


## Business Questions

| # | Question |
|---|---|
| 1 | What is the overall customer churn rate? |
| 2 | How many customers have churned vs. remained active? |
| 3 | Which contract types have the highest churn? |
| 4 | How does churn vary across tenure groups? |
| 5 | Which customer segments contribute most to churn? |
| 6 | What services influence customer churn? |
| 7 | Which payment methods are associated with higher churn? |
| 8 | How do monthly charges impact churn behaviour? |
| 9 | Can customers be segmented based on churn risk? |
| 10 | Who are the high-risk customers requiring immediate attention? |
| 11 | What strategies can reduce churn and improve retention? |


## Tools Used

- **Power BI** — Dashboard development and visualisation
- **Power Query** — Data cleaning and transformation
- **DAX (Data Analysis Expressions)** — Custom measures and KPIs


## Approach & Process

### Step 1 — Data Cleaning (Power Query)
- Removed unnecessary columns (location-based and redundant fields)
- Handled null and blank values
- Corrected data types — text, decimal, whole number
- Standardised text fields using Trim, Clean, and proper capitalisation

### Step 2 — Feature Engineering
Created new columns to enable richer segmentation:

| New Column | Logic |
|---|---|
| `Tenure Group` | New (0–12 mo) / Emerging (13–24 mo) / Established (25–48 mo) / Loyal (49+ mo) |
| `Charge Level` | Low / Medium / High based on monthly charges |
| `Risk Category` | High / Medium / Low based on Churn Score |

### Step 3 — DAX Measures
Key business metrics created using DAX:

| Measure | Description |
|---|---|
| `Total Customers` | Count of all customers |
| `Churned Customers` | Count where Churn Label = Yes |
| `Active Customers` | Count where Churn Label = No |
| `Churn Rate %` | Churned / Total × 100 |
| `Avg Monthly Charges` | Average of Monthly Charges |
| `Avg Tenure` | Average tenure in months |

### Step 4 — Dashboard Development
Built a **3-page interactive dashboard** with slicers, drill-throughs, and navigation buttons.

## Dashboard Pages

### Page 1 — Churn Overview
KPI cards, churn distribution donut chart, churn by contract, churn by tenure group, churn by charge level. Slicers: Gender, Internet Service, Contract.

### Page 2 — Customer Behavior & Churn Drivers
Churned customers by internet service, payment method, and contract type. Scatter plot of Charges vs Tenure coloured by Churn Label. Stacked bar charts for Device Protection, Online Security, and Tech Support vs Churn.

### Page 3 — Risk Segmentation & Retention Insights
Risk category donut chart, churn rate by risk tier, churn rate by internet service, and a drill-through table of high-risk customers with their monthly charges, tenure, contract type, and churn score.


## Dashboard KPIs (Page 1)

| Metric | Value |
|---|---|
| Total Customers | 7,043 |
| Churned Customers | 1,869 |
| Active Customers | 5,174 |
| Churn Rate | 26.54% |
| Avg Tenure | 3,237.11% *(aggregated display)* |


## Key Insights

### Churn by Contract Type

| Contract | Churned Customers |
|---|---|
| Month-to-month | 1,655 |
| One year | 166 |
| Two year | 48 |

Month-to-month customers account for **88.5% of all churn**.

### Churn by Tenure Group

| Tenure Group | Churned Customers |
|---|---|
| New (0–12 months) | 1,037 |
| Established | 325 |
| Emerging | 294 |
| Loyal | 213 |

New customers are **~4× more likely to churn** than Loyal customers.

### Churn by Charge Level

| Charge Level | Churned Customers |
|---|---|
| Medium | 1,251 |
| Low | 361 |
| High | 257 |

### Churn by Internet Service

| Internet Service | Churned Customers | Churn Rate |
|---|---|---|
| Fiber Optic | 1,297 | 41.89% |
| DSL | 459 | 18.96% |
| No Service | 113 | 7.40% |

Fiber Optic users churn at more than **double the rate** of DSL users.

### Churn by Payment Method

| Payment Method | Churned Customers |
|---|---|
| Electronic Check | 1,071 |
| Mailed Check | 308 |
| Bank Transfer | 258 |
| Credit Card | 232 |

Electronic check users account for **57% of all churned customers**.

### Risk Segmentation (Page 3)

| Risk Category | % of Customers | Churn Rate |
|---|---|---|
| High Risk | 17.05% | 92.01% |
| Medium Risk | 46.98% | 23.09% |
| Low Risk | 35.96% | — |

High-risk customers (Churn Score = 100) churn at a near-certain rate of **92%**, validating the predictive power of the churn score.

### Service Usage & Churn
Customers **without** Online Security or Tech Support show substantially higher churn compared to those with these services — visible across both the Online Security and Tech Support stacked bar charts on Page 2.


## Business Recommendations

- **Target High-Risk customers immediately** — with a 92% churn rate, even small interventions on this segment can recover significant revenue
- **Incentivise long-term contracts** — Month-to-month customers drive 88.5% of churn; offer discounts for annual or two-year commitments
- **Investigate Fibre Optic service quality** — a 41.89% churn rate suggests pricing or reliability issues that need addressing
- **Discourage electronic check payments** — or offer autopay incentives to shift customers toward lower-churn payment methods
- **Bundle Tech Support and Online Security** — customers without these services churn significantly more; offer them as free trials or add-ons
- **Prioritise onboarding for new customers** — the 0–12 month group has the highest churn (1,037 customers); structured onboarding can improve early retention


## Files in This Repository

| File | Description |
|---|---|
| `Customer_Churn_Dashboard.pbix` | Main Power BI report file |
| `telco_churn_dataset.csv` | Raw dataset |
| `screenshots/` | Dashboard page screenshots |
| `README.md` | Project documentation |


## Dashboard Preview

**Page 1 — Churn Overview**
<img width="1778" height="804" alt="Page 1" src="https://github.com/user-attachments/assets/5c28b428-bdf1-4628-9ee0-4a4dbc003ebd" />


**Page 2 — Customer Behavior & Churn Drivers**
<img width="1740" height="804" alt="Page 2" src="https://github.com/user-attachments/assets/eb7b1c02-6180-4220-8318-2736e6ac8f9e" />


**Page 3 — Risk Segmentation & Retention Insights**
<img width="1734" height="803" alt="Page 3" src="https://github.com/user-attachments/assets/0d0deae3-3b2e-42a1-9ed6-dc59282f8cc8" />



## Conclusion

This project demonstrates how customer subscription data can be transformed into a predictive, actionable Power BI dashboard. By combining data cleaning, DAX-based KPIs, and risk segmentation, businesses can:

- Identify high-risk customers before they churn
- Understand which services, contracts, and payment methods drive attrition
- Design targeted, data-backed retention strategies
- Make proactive decisions to reduce churn and improve customer lifetime value
