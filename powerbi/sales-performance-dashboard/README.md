## Sales Performance Dashboard (Power BI Project)
## 1. Overview
This project presents an end-to-end Sales Performance Dashboard built using Power BI to analyze business performance across regions, products, customers, and time.

The goal of this project is to:
• Transform raw sales data into meaningful business insights
• Analyze revenue, profit, and customer behavior
• Identify high-performing and loss-making areas
• Support data-driven business decision-making

## 2. Dataset Description

**• Source**: Sample Superstore Dataset (public dataset)
**• Type**: Transactional sales data

**Key Columns**:
• Order ID
• Order Date
• Customer Name
• Segment
• Region
• Category
• Sub-Category
• Sales
• Profit
• Quantity
• Discount

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
• Power BI
• Power Query (Data Cleaning & Transformation)
• DAX (Data Analysis Expressions)

## 5. Approach / Process

**1. Data Cleaning (Power Query)**
• Verified and corrected data types
• Removed null values and errors
• Cleaned and formatted text fields
• Created Month and Year columns from Order Date

**2. Data Modeling**
• Used a single-table data model for analysis
• Ensured proper relationships between measures and dimensions

**3. DAX Calculations**
Created key business metrics:
• Total Sales
• Total Profit
• Total Orders (Distinct Count)
• Profit Margin %
• Average Order Value
• Loss Orders

**4. Dashboard Development**

***Page 1: Executive Sales Overview***

• KPI Cards (Sales, Profit, Orders, Profit Margin, AOV)
• Sales by Region
• Sales by Category (%)
• Monthly Sales Trend
• Interactive slicers (Region, Category, Segment)

***Page 2: Customer & Product Insights***

• Top 10 Customers by Sales
• Sales by Sub-Category
• Profit by Sub-Category
• Scatter Plot (Sales vs Profit analysis)

***Page 3: Profitability & Business Insights***

• Profit by Region
• Profit by Category
• Sales vs Profit Trend (Combo Chart)
• Loss-Making Products Table
• Key Business Insights

## 6. Key Insights
**Overall Performance**
• Total Sales reached approximately $2.3M
• Total Profit was around $286K with a margin of ~12%

**Regional Insights**
• West region generates the highest sales and profit
• Central and South regions show relatively lower profitability

**Product Insights**
• Technology category contributes the highest profit
• Furniture category shows significantly lower profit margins
• Certain sub-categories like Tables and Bookcases generate losses

**Customer Insights**
• A small group of customers contributes a significant portion of total sales
• Top customers play a key role in revenue generation

**Profitability Insights**
• Some products have high sales but low profit, indicating margin issues
• Loss-making products highlight inefficiencies in pricing or discounting

## 7. Business Recommendations
• Focus on improving margins in low-profit categories like Furniture
• Reduce discounts on loss-making products
• Strengthen sales strategies in underperforming regions
• Retain high-value customers through targeted engagement
• Optimize product portfolio by promoting high-profit items

## 8. Conclusion
This project demonstrates how Power BI can be used to transform raw sales data into actionable business insights.

By combining data cleaning, DAX calculations, and interactive visualizations, the dashboard enables:
• Better understanding of sales and profitability trends
• Identification of key business problems
• Data-driven decision-making
