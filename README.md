# 🇵🇰 Pakistan Ecommerce Sales Analysis | Advanced SQL Project

## 📌 Project Overview

This project is an end-to-end **Advanced SQL analysis** of Pakistan's e-commerce sales data.

The project focuses on exploring, validating, analyzing, and extracting meaningful business insights from sales transactions.

The analysis covers:

* Sales performance
* Customer behavior
* Product performance
* Category analysis
* Payment methods
* Order status
* Discounts
* Monthly revenue trends

Advanced SQL techniques such as **Common Table Expressions (CTEs), Window Functions, Subqueries, LAG(), RANK(), DENSE_RANK(), Running Totals, and Revenue Contribution Analysis** were used to generate actionable business insights.

---

## 🎯 Project Objectives

The main objectives of this project are:

* Explore and understand the e-commerce dataset
* Perform data quality and validation checks
* Analyze overall sales performance
* Identify revenue and order trends
* Analyze monthly sales growth
* Identify top-performing products and categories
* Analyze customer purchasing behavior
* Segment customers based on spending
* Identify repeat and one-time customers
* Analyze payment methods and order status
* Evaluate discount impact on revenue
* Generate advanced business insights using SQL

---

## 🛠️ Tools & Technologies

* **MySQL**
* **SQL**
* **MySQL Workbench**

---

## 📊 Dataset

The dataset contains Pakistan e-commerce transaction data with information related to orders, products, customers, payments, discounts, and sales.

### Dataset Features

The dataset includes fields such as:

* Item ID
* Order Status
* Created Date
* SKU
* Product Price
* Quantity Ordered
* Grand Total
* Order ID
* Product Category
* Sales Commission Code
* Discount Amount
* Payment Method
* Working Date
* BI Status
* Year
* Month
* Fiscal Year
* Customer ID

### 📁 Dataset Availability

The original dataset is **not included in this GitHub repository** because of its size and data-distribution considerations.

The repository contains the SQL analysis scripts used to analyze the dataset.

---

# 🔍 Project Analysis

## 1️⃣ Data Exploration

The project starts by understanding the dataset structure and basic information.

Key analysis includes:

* Total rows
* Unique items
* Unique orders
* Unique customers
* Payment method distribution
* Product category distribution
* Order status distribution
* Date range analysis
* Year, Month, and Fiscal Year distribution
* Price and quantity statistics
* Revenue and discount statistics

---

## 2️⃣ Data Quality Checks

Data validation was performed to identify potential data quality issues.

Checks include:

* Missing values
* Blank values
* Duplicate records
* Negative prices
* Invalid quantities
* Negative revenue
* Negative discounts
* Date validation
* Year and Month consistency
* Price and quantity validation

---

## 3️⃣ Sales Performance Analysis

Overall sales performance was analyzed using:

* Total Revenue
* Total Orders
* Total Units Sold
* Average Order Value
* Average Product Price
* Total Discount
* Average Discount

---

## 4️⃣ Monthly Sales Analysis

Monthly performance was analyzed using:

* Monthly Revenue
* Monthly Orders
* Monthly Units Sold
* Monthly Average Order Value
* Best Performing Month
* Worst Performing Month
* Month-over-Month Growth

---

# 5️⃣ Advanced SQL Analysis

Advanced SQL techniques were used to analyze sales trends and performance.

### Common Table Expressions (CTEs)

CTEs were used to break complex analysis into smaller and more readable steps.

### Window Functions

Window functions were used for:

* Running Revenue
* Revenue Contribution
* Product Ranking
* Category Ranking

### LAG()

`LAG()` was used to compare current month revenue with the previous month's revenue and calculate month-over-month changes.

### RANK()

`RANK()` was used to rank SKUs and product categories based on revenue.

### DENSE_RANK()

`DENSE_RANK()` was used to identify top-performing products within each category.

---

## 6️⃣ Product & SKU Analysis

Product performance analysis includes:

* Total Units Sold
* Total Revenue
* Total Orders
* Average Selling Price
* Top 10 SKUs
* SKU Revenue Contribution
* SKU Ranking
* Top SKUs Within Categories
* SKUs Performing Above Average Revenue

---

## 7️⃣ Category Analysis

Category analysis includes:

* Category Revenue
* Category Orders
* Category Units Sold
* Revenue Contribution
* Category Ranking
* Top 5 Categories
* Cumulative Revenue Analysis

---

## 8️⃣ Customer Analysis

Customer behavior was analyzed using:

* Customer Lifetime Value
* Customer Spending
* Customer Segmentation
* Repeat Customers
* One-Time Customers
* Top Customers

Customers were segmented into:

* **High Value Customers**
* **Medium Value Customers**
* **Low Value Customers**

---

## 9️⃣ Business Insights

Business performance was analyzed through:

* Discount Impact
* Payment Method Performance
* Order Status Performance
* Category Revenue Contribution
* Customer Spending Behavior
* Product Revenue Performance

---

# 🧠 Advanced SQL Concepts Used

This project demonstrates the use of:

```sql
SELECT
WHERE
GROUP BY
ORDER BY
HAVING
LIMIT
Aggregate Functions
Subqueries
CTEs
CASE WHEN
Window Functions
LAG()
RANK()
DENSE_RANK()
SUM() OVER()
Running Totals
Revenue Contribution Analysis
NULLIF()
TRIM()
LOWER()
```

---

# 📈 Key Business Questions Answered

This project answers important business questions such as:

1. What is the total revenue generated?
2. How many unique customers and orders exist?
3. What is the average order value?
4. Which month generated the highest revenue?
5. Which month generated the lowest revenue?
6. How is revenue changing month over month?
7. Which SKUs generate the most revenue?
8. Which products perform above average?
9. Which categories generate the highest revenue?
10. Which categories contribute the most to total revenue?
11. Who are the highest-value customers?
12. How many customers are repeat customers?
13. Which payment methods generate the most revenue?
14. How do discounts impact sales?
15. Which order statuses generate the most revenue?

---

# 📂 Project Structure

```text
Pakistan-Ecommerce-Sales-SQL-Analysis
│
├── sql
│   └── ecommerce_sales_analysis.sql
│
├── README.md
│
└── dashboard
    └── dashboard_screenshot.png
```

---

# 🚀 Skills Demonstrated

* SQL Data Analysis
* Data Exploration
* Data Quality Validation
* Business Analysis
* Customer Analysis
* Product Analysis
* Sales Analysis
* Advanced SQL
* CTEs
* Window Functions
* Data Aggregation
* Revenue Analysis
* Business Insights

---

# 👨‍💻 Author

**Malik Muhammad Ali Aslam**

Aspiring Data Analyst | SQL | Python | Power BI | Excel

---

## ⭐ If You Like This Project

Feel free to ⭐ **star this repository** and explore the SQL analysis.
