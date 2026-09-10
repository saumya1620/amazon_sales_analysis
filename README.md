## 🛠️ Tech Stack & Tools
![Python](https://shields.io)
![SQL](https://shields.io)
![Tableau](https://shields.io)

# Amazon E-Commerce Sales Analysis

## 📌 Project Overview

This project is an end-to-end analysis of Amazon e-commerce sales data designed to uncover meaningful business insights related to sales performance, products, customer segments, geography, order status, and fulfilment operations.

The project demonstrates the complete data analytics workflow using:

**Python → SQL → Tableau**

---

## 🎯 Business Objective

The objective of this project is to analyze Amazon e-commerce sales data and answer important business questions such as:

- How is overall sales performance?
- Which categories and products generate the most revenue?
- Which states and cities contribute the most sales?
- How do sales change over time?
- Which fulfilment method handles more orders?
- What is the cancellation rate?
- Which categories and fulfilment methods have higher cancellation rates?

---

## 🛠️ Tools & Technologies

- **Python** – Data cleaning, preprocessing and exploratory data analysis
- **Pandas & NumPy** – Data manipulation and analysis
- **SQL** – Business analysis and querying
- **Tableau** – Interactive dashboards and data visualization
- **Git & GitHub** – Project version control and portfolio management

---

## 📂 Dataset

The project uses the **Amazon E-Commerce Sales Dataset** from Kaggle.

The main dataset contains Amazon sales transaction information including:

- Order details
- Order status
- Fulfilment method
- Product category
- SKU
- Quantity
- Sales amount
- Shipping information
- Customer location
- B2B/B2C information
- Date and time information

---

## 🔄 Project Workflow

### 1. Data Collection

The Amazon sales dataset was obtained from Kaggle and imported into Python for analysis.

### 2. Data Cleaning & Preparation

Python was used to:

- Inspect the dataset structure
- Identify missing values
- Handle missing values
- Check for duplicate records
- Convert columns into appropriate data types
- Convert date fields
- Create additional time-based features
- Prepare the cleaned dataset for SQL analysis and visualization

### 3. SQL Analysis

SQL was used to perform business-focused analysis including:

- Overall sales performance
- Revenue analysis
- Order analysis
- Monthly sales trends
- Category performance
- State and city analysis
- Fulfilment analysis
- Order status analysis
- Cancellation analysis
- Revenue contribution by category

## 4. Tableau Dashboard Architecture

The dashboard is structured into three distinct analytical pillars, all unified by a global category toggle filter:

### 1. Executive Sales & Regional Performance
*   **Core Metrics (KPIs):** Instant calculation cards for Total Revenue (Amount), Total Volume (Quantity), Unique Products (ASINs), Active Sizes, and Categories.
*   **Geographic Sales Map:** An interactive choropleth map plotting quantity distributions by Indian states to isolate top regional markets.
*   **Top 10 States Breakdown:** A sorted horizontal bar chart identifying performance leads, segmented by delivery urgency profiles (*Expedited vs. Standard*).

### 2. Weekly Trends & Product Performance
*   **Weekly Quantity Trend:** A stacked bar chart visualizing distribution volumes over time by product group.
*   **Weekly Revenue Tracking:** A multi-line trend chart monitoring revenue trajectory and seasonality fluctuations.
*   **Size Distribution Matrix:** A horizontal stacked bar chart profiling volume demands across sizing lines.

### 3. Operations & Business Segmentation
*   **Order Status Tracking:** A horizontal bar chart tracking exact operational processing fulfillment stages (*Shipped, Cancelled, Delivered to Buyer, Lost*).
*   **Courier Allocation Metrics:** A donut chart showing percentage distributions for logistics tracking updates.
*   **Sales Channel & Client Base Tables:** Distinct highlight matrices outlining channel allocations and **B2B vs. B2C** procurement density percentages.

---

## 📊 Key Business Questions

Some of the major questions explored in this project include:

1. What is the total revenue generated?
2. How many unique orders are there?
3. What is the total quantity sold?
4. What is the average order value?
5. How does revenue change month over month?
6. Which category generates the highest revenue?
7. Which products/SKUs contribute the most revenue?
8. Which states generate the highest sales?
9. Which cities have the highest number of orders?
10. How does B2B performance compare with B2C?
11. Which fulfilment method handles the most orders?
12. What is the overall cancellation rate?
13. Which categories have the highest cancellation rates?
14. How does cancellation vary by fulfilment method?
15. What percentage of total revenue does each category contribute?

---

## 📈 Dashboard

The Tableau dashboard provides an interactive view of Amazon's sales and operational performance.

### Tableau Dashboard Preview

![Amazon E-Commerce Dashboard](images/Tableau.jpg)

---

## 📁 Project Structure

```text
amazon_sales_analysis/
│
├── data/
│   └── cleaned.xlsx
│
├── python/
│   └── project.ipynb
│
├── sql/
│   ├──buisiness_questions.sql
│
├── tableau/
│   └── Amazon_sales.twbx
│
├── images/
│   └── Tableau.jpg
│   └── amazon logo 2.png
│
└── README.md
