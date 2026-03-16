# 📊 Sales Performance & Inventory Analytics Dashboard

## 📊 Dashboard Preview

![Sales Overview](dashboard_images/overview.png)

![Branch Performance](dashboard_images/branches.png)

![Product Analysis](dashboard_images/products.png)

![Inventory Rotation](dashboard_images/inventory.png)

## 🧾 Project Overview

This project analyzes sales performance and product behavior across multiple branches using a simulated retail dataset inspired by a real operational problem.

The goal of the project was to practice **SQL for data processing and transformation**, while using **Power BI to develop analytical insights and business-oriented visualizations**.

The analysis focuses on identifying:

• 📈 Sales performance trends  
• 🧮 Product contribution to revenue (Pareto analysis)  
• 🏬 Branch performance differences  
• 📦 Product segmentation by volume and revenue  
• 🔄 Inventory rotation opportunities between branches  

---

## 💼 Business Problem

Retail businesses with multiple branches often face operational challenges such as:

• Uneven product demand between stores  
• Slow inventory rotation in some locations  
• Difficulty identifying the products that truly drive revenue  

This project simulates a real-world scenario where sales data is analyzed to detect **inventory optimization opportunities and product performance patterns**.

---

## 🗂 Dataset

The dataset is **simulated**, but inspired by a real business context from a retail company.

Dataset characteristics:

• 🏬 4 branches  
• 📦 1,728 unique products  
• 📑 23,649 sales records  
• 🧾 ~9,400 transactions  
• 📦 ~71,000 units sold  

💰 Total revenue analyzed:

**$186,239,484**

---

## 🧱 Data Pipeline (SQL)

One of the main goals of this project was to **practice SQL for data preparation and transformation**.

The data pipeline follows these steps:

1️⃣ Raw data ingestion  
2️⃣ Data cleaning and standardization  
3️⃣ Creation of **fact and dimension tables**  
4️⃣ Preparation of an analytical model for BI tools

The final structure follows a **⭐ Star Schema** model.

Tables created:

### Fact Table

`fact_sales`

### Dimension Tables

`dim_products`  
`dim_branches`  
`dim_time`

This structure allows efficient analytical queries and seamless integration with Power BI.

---

## 🧩 Data Model

The final model implemented in Power BI follows a **Star Schema architecture**.

### Fact Table

`fact_sales`

- product_id  
- branch_id  
- date_id  
- transaction_id  
- revenue  
- units_sold  

### Dimensions

`dim_products`

- product_id  
- product_name  

`dim_branches`

- branch_id  
- branch_name  
- city  

`dim_time`

- date_id  
- month  
- year  

This model enables scalable analytics and efficient aggregations.

---

## 📊 Dashboard Structure

The Power BI dashboard is divided into **four analytical sections**.

---

### 1️⃣ Sales Overview

High-level KPIs and monthly performance:

• 💰 Total Revenue  
• 📦 Units Sold  
• 🧾 Total Transactions  
• 📈 Monthly Sales Evolution  
• 🧮 Average Ticket per Month  

---

### 2️⃣ Branch Performance

Analysis of commercial performance across branches:

• 💰 Revenue by branch  
• 📦 Units sold by branch  
• 🌡 Monthly sales intensity heatmap  

This helps identify demand differences across locations.

---

### 3️⃣ Product Performance

Evaluation of product contribution to the business:

• 🏆 Top products by revenue  
• 📦 Top products by units sold  
• 📊 Pareto analysis of revenue concentration  

The Pareto analysis highlights how a **small subset of products drives a large share of total revenue**.

---

### 4️⃣ Inventory Rotation Analysis

This section identifies **inventory transfer opportunities between branches**.

The analysis compares product sales velocity across locations and calculates:

• 🥇 Branch with highest rotation  
• 🐢 Branch with lowest rotation  
• 📉 Velocity gap  
• 🔄 Recommended inventory transfer  

This provides **actionable insights for inventory optimization**.

---

## 🔎 Key Insights

• 📊 Revenue follows a **Pareto distribution**, where a small number of products generate a large share of total sales.

• 🏬 Product demand varies significantly across branches, suggesting location-specific purchasing behavior.

• 🔄 Several products show **high velocity in one branch but low velocity in another**, indicating potential inventory reallocation opportunities.

• 📦 Product segmentation reveals both **high-volume operational items** and **high-revenue niche products**.

---

## 🛠 Tools & Technologies

• SQL  
• Power BI  
• DAX  
• Data Modeling (Star Schema)

---

## 🎯 Project Goals

The main objective of this project was to demonstrate:

• 💻 SQL skills for data transformation and modeling  
• 🧠 Analytical thinking applied to business data  
• 📊 Dashboard design for decision support  
• 📈 Ability to extract actionable insights from data

---

## 🚀 Future Improvements

Possible extensions for this project:

• Add profit margin analysis  
• Implement ABC product classification  
• Integrate demand forecasting  
• Simulate automated inventory recommendations