## 1. Overview

This project presents a Customer Churn Analysis Dashboard built using Power BI to analyze customer churn behavior in a telecom dataset.

The goal of this project is to:

• Clean and transform raw customer data

• Build interactive dashboards to monitor churn

• Identify key factors driving customer churn

• Segment customers based on churn risk

• Provide actionable business insights for retention strategies

## 2. Dataset Description

**• Source**: Kaggle (Telco Customer Churn Dataset)

**• Type**: Customer subscription and service usage data

**Key Columns**:

• CustomerID

• Gender

• Tenure Months

• Contract

• Internet Service

• Payment Method

• Monthly Charges

• Total Charges

• Churn Label

• Churn Score

• CLTV

## 3. Business Questions

1. What is the overall customer churn rate?
2. How many customers have churned vs remained active?
3. Which contract types have the highest churn?
4. How does churn vary across tenure groups?
5. Which customer segments contribute most to churn?
6. What services influence customer churn?
7. Which payment methods are associated with higher churn?
8. How do monthly charges impact churn behavior?
9. Can customers be segmented based on churn risk?
10. Who are the high-risk customers requiring immediate attention?
11. What strategies can reduce churn and improve retention?

## 4. Tools Used

• Power BI

• Power Query (Data Cleaning & Transformation)

• DAX (Data Analysis Expressions)

## 5. Approach / Process

**1. Data Cleaning**

• Removed unnecessary columns (location-based and redundant fields)

• Handled null and blank values

• Corrected data types (text, decimal, whole number)

• Standardised text fields (trim, clean, capitalisation)

**2. Data Transformation**

***• Created new features:***

Tenure Group (New, Emerging, Established, Loyal)

Charge Level (Low, Medium, High)

**3. DAX Measures**

***Created key business metrics:***

• Total Customers

• Churned Customers

• Active Customers

• Churn Rate %

• Average Monthly Charges

• Average Tenure

• Loss Orders (churn count logic)

**4. Risk Segmentation**

***• Created Risk Category using Churn Score:***

High Risk

Medium Risk

Low Risk

***• Enabled identification of customers likely to churn***

**5. Dashboard Development**

***Built a 3-page interactive dashboard:***

**Page 1: Churn Overview**

• KPI cards (Total Customers, Churn Rate, etc.)

• Churn distribution (Donut chart)

• Churn by Contract

• Churn by Tenure Group

• Churn by Charge Level

• Interactive slicers

**Page 2: Customer Behavior & Churn Drivers**

• Churn by Internet Service

• Churn by Payment Method

• Scatter plot (Charges vs Tenure)

• Service-based churn analysis (Tech Support, Security, Protection)

• Tooltips for additional insights

**Page 3: Risk Segmentation & Insights**

• Customer segmentation by risk level

• Churn rate by risk category

• High-risk customer table (Top N)

• Drill-through to detailed customer view

• Navigation buttons for better UX

## 6. Key Insights

**Overall Trends**

• Overall churn rate is ~26.5%, indicating significant customer attrition

**Customer Behaviour Insights**

• Customers on month-to-month contracts show the highest churn

• New customers (0–12 months) are most likely to churn

• Customers with medium monthly charges contribute most to churn volume

**Service-Level Insights**

• Fiber Optic users have the highest churn rate (~42%)

• Customers using electronic checks show the highest churn

• Lack of tech support and online security increases churn significantly

**Risk Segmentation Insights**

• High-risk customers show extremely high churn rate (~92%)

• Medium-risk customers (~23%) are key targets for retention strategies

• High churn is strongly linked to:

     High monthly charges
     Low tenure

## 7. Business Recommendations

• Focus retention strategies on high-risk customers

• Encourage long-term contracts to reduce churn

• Improve service quality for Fiber Optic users

• Provide incentives for customers using high-risk payment methods

• Offer support services (Tech Support, Security) to reduce churn

• Use targeted campaigns for medium-risk customers

## 8. Conclusion

**This project demonstrates how customer data can be transformed into meaningful insights using Power BI.**

**By combining**:

• Data cleaning

• DAX-based analysis

• Interactive dashboards

• Risk segmentation

**Businesses can**:

• Identify high-risk customers

• Understand churn drivers

• Improve customer retention strategies

• Make data-driven decisions
