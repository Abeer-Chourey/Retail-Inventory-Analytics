# Retail Inventory Analytics

## Supply Chain & Inventory Management Analytics

An end-to-end **Supply Chain and Inventory Analytics** project that analyzes retail inventory, demand, sales, stockouts, overstock, product performance, store performance, and pricing factors using **Python, SQL, and Power BI**.

The project demonstrates a complete data analytics workflow starting from a processed retail dataset and progressing through exploratory analysis, SQL-based business analysis, and an interactive Power BI dashboard.

---

## 📌 Project Overview

Retail businesses need to maintain the right balance between inventory availability and excess stock.

Too little inventory can lead to stockouts and lost sales, while excessive inventory can increase holding costs and create inventory risk.

This project analyzes retail inventory data to identify:

- Demand and sales patterns
- Inventory performance
- Stockout situations
- Overstock and inventory risk
- Product performance
- Store and regional performance
- Promotion and seasonality effects
- Weather-related demand patterns
- Competitor pricing differences
- Relationships between demand, inventory, orders, and sales

The final results are presented through an interactive **Power BI dashboard** supported by Python and SQL analysis.

---

## 🎯 Business Objectives

The main objectives of the project are:

1. Analyze overall retail sales and demand performance.
2. Understand inventory levels across products, stores, categories, and regions.
3. Identify stockout and inventory-risk patterns.
4. Analyze products and stores based on revenue and sales performance.
5. Examine demand behavior across months, seasons, promotions, and weather conditions.
6. Compare company pricing with competitor pricing.
7. Build an interactive dashboard for business-level inventory monitoring.

---

## 📊 Dataset

The project uses a processed version of the **Retail Store Inventory and Demand Forecasting** dataset obtained from Kaggle.

### Dataset Source

[Kaggle — Retail Store Inventory and Demand Forecasting](https://www.kaggle.com/dsv/11895299)

The final processed dataset used in this project contains:

- **76,000 records**
- **38 columns**
- Retail inventory, sales, demand, pricing, and inventory-related attributes

### Main Data Categories

| Category | Examples |
|---|---|
| Time | Date, Year, Month, Week, Quarter |
| Store & Product | Store ID, Product ID, Category, Region |
| Sales | Units Sold, Revenue, Net Revenue |
| Inventory | Inventory Level, Inventory Value |
| Demand | Demand, Inventory Demand Coverage |
| Orders | Units Ordered, Order-to-Sales Ratio |
| Pricing | Price, Discount, Competitor Pricing |
| External Factors | Weather Condition, Seasonality, Promotion |
| Risk Indicators | Stockout Flag, Initial Inventory Risk, Overstock Flag |
| Competitor Analysis | Competitor Price Difference, Competitor Price Difference % |

---

## 🛠️ Technologies Used

### Python

- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

### SQL

- MySQL
- Aggregations
- GROUP BY
- ORDER BY
- CASE statements
- Subqueries
- Business-oriented analytical queries

### Power BI

- Power Query
- DAX
- Interactive slicers
- KPI cards
- Line charts
- Bar charts
- Column charts
- Donut charts
- Combination charts

---

## 🔄 Project Workflow

```text
Retail Inventory Dataset
          ↓
Data Preparation
          ↓
Python EDA & Analysis
          ↓
SQL Business Analysis
          ↓
Power BI Data Modeling
          ↓
Interactive Dashboard
          ↓
Business Insights
```

---

## 🐍 Python Analysis

The Python analysis was performed in three stages.

### Stage 1 — Initial Data Analysis

The first stage focuses on understanding the dataset and performing initial exploratory analysis.

Key areas include:

- Dataset structure
- Data types
- Descriptive statistics
- Inventory and sales exploration
- Basic demand analysis

### Stage 2 — Inventory & Demand Analysis

The second stage focuses on deeper inventory and demand analysis.

Areas include:

- Demand patterns
- Inventory performance
- Product-level analysis
- Store-level analysis
- Regional analysis
- Stockout analysis
- Overstock analysis
- Demand variability

### Stage 3 — Advanced Analysis

The third stage extends the analysis into additional business factors and risk indicators.

Areas include:

- Product risk
- Inventory risk
- Promotion analysis
- Weather analysis
- Seasonality
- Pricing analysis
- Demand and inventory relationships

The generated analytical outputs are stored in:

```text
Python_Analysis/python_outputs/
```

---

## 🗄️ SQL Analysis

The SQL analysis contains **27 analytical queries** covering different aspects of the retail inventory dataset.

### Analysis Areas

- Total records
- Store and product counts
- Category analysis
- Date range analysis
- Sales and demand metrics
- Inventory metrics
- Pricing analysis
- Category performance
- Regional performance
- Monthly performance
- Store performance
- Top products by revenue
- Stockout analysis
- Inventory risk
- Demand exceeding inventory
- Overstock analysis
- Weather analysis
- Seasonality analysis
- Promotion analysis
- Competitor pricing analysis
- Order and sales relationships

The SQL file also contains the database and table creation statements.

SQL file:

```text
SQL/retail_inventory_analysis.sql
```

---

## 📈 Power BI Dashboard

The Power BI dashboard contains two analytical pages.

### Page 1 — Executive Summary

The executive summary provides an overview of overall business performance.

#### KPIs

- **Total Revenue:** $455M
- **Net Revenue:** $413M
- **Total Units Sold:** 7M
- **Total Demand:** 8M
- **Average Inventory:** 301
- **Stockout Rate:** 0.53%

#### Visualizations

- Monthly Revenue Trend
- Revenue by Category
- Revenue by Region
- Demand vs Units Sold
- Interactive filters for Date, Region, Promotion, and Category

### Page 2 — Inventory & Product Analysis

The second dashboard page focuses on inventory health and product and store performance.

#### Visualizations

- Stockout Rate by Region
- Inventory Risk Distribution
- Average Inventory by Category
- Inventory Risk by Category
- Store Revenue Performance
- Top 10 Products by Revenue

#### Filters

- Region
- Category
- Promotion
- Seasonality

---

## 🔍 Key Analytical Areas

### Inventory Health

Inventory levels are analyzed against sales and demand to identify potential stockout and overstock situations.

### Stockouts

Stockout indicators are used to understand where inventory availability may be insufficient across regions and categories.

### Product Performance

Products are analyzed based on revenue, sales, inventory levels, and risk indicators.

### Store Performance

Store-level revenue and inventory performance are compared to identify differences across locations.

### Demand Analysis

Demand is examined across:

- Time
- Region
- Category
- Seasonality
- Weather
- Promotions

### Pricing Analysis

Company pricing is compared with competitor pricing to understand pricing differences across products and categories.

---

## 💡 Business Value

This project demonstrates how data can be used to support supply chain and inventory-related decision making.

The analysis helps identify:

- Areas with potential stockout risk
- Categories with different inventory patterns
- High-performing products
- Store and regional performance differences
- Demand trends over time
- Inventory-demand relationships
- Potential overstock situations
- Pricing differences against competitors

The project combines **exploratory analysis, database querying, and business intelligence visualization** into one end-to-end analytics workflow.

---

## 📁 Repository Structure

```text
Retail-Inventory-Analytics/
│
├── Dataset/
│   └── retail_inventory_stage2.csv
│
├── PowerBI/
│   └── Inventory_Optimization.pbix
│
├── Python_Analysis/
│   ├── notebooks/
│   │   ├── Retail_Inventory_Optimization_Stage_1.ipynb
│   │   ├── Retail_Inventory_Optimization_Stage_2.ipynb
│   │   └── Retail_Inventory_Optimization_Stage_3.ipynb
│   │
│   └── python_outputs/
│       ├── eda_monthly_demand.csv
│       ├── eda_overstock_category.csv
│       ├── eda_product_performance.csv
│       ├── eda_product_risk.csv
│       ├── eda_region_performance.csv
│       ├── eda_stockout_category.csv
│       └── eda_store_performance.csv
│
├── SQL/
│   └── retail_inventory_analysis.sql
│
├── .gitignore
└── README.md
```

---

## 🚀 How to Use the Project

### 1. Python Analysis

Open the notebooks inside:

```text
Python_Analysis/notebooks/
```

Run the notebooks sequentially:

```text
Stage 1 → Stage 2 → Stage 3
```

The generated analysis outputs are available in:

```text
Python_Analysis/python_outputs/
```

### 2. SQL Analysis

Open:

```text
SQL/retail_inventory_analysis.sql
```

The script contains:

- Database creation
- Table creation
- Analytical SQL queries

The dataset can be imported into MySQL and the queries can then be executed.

### 3. Power BI

Open:

```text
PowerBI/Inventory_Optimization.pbix
```

The dashboard contains the executive summary and inventory/product analysis pages.

---

## 📌 Project Domain

**Primary Domain:** Supply Chain Analytics

**Sub-domain:** Retail Inventory Management

The project focuses on inventory and supply chain operations rather than customer-facing e-commerce behavior.

---

## 👨‍💻 Author

**Abeer Chourey**

B.Tech — Artificial Intelligence & Data Science

NMIMS, Indore

### Skills Demonstrated

`Python` `Pandas` `NumPy` `SQL` `MySQL` `Power BI` `DAX` `Power Query` `Data Analysis` `Exploratory Data Analysis` `Supply Chain Analytics` `Inventory Analytics` `Data Visualization`

---

# 📸 Dashboard Preview

## Executive Summary

<img width="1286" height="727" alt="Retail Inventory Analytics - Executive Summary" src="https://github.com/user-attachments/assets/b3836106-6206-4641-8e07-d48433f8a3b5" />

## Inventory & Product Analysis

<img width="1286" height="725" alt="Retail Inventory Analytics - Inventory and Product Analysis" src="https://github.com/user-attachments/assets/94821c6e-a851-4721-bf19-a58185da2bc2" />
