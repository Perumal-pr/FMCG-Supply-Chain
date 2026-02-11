📦 FMCG Supply Chain Analysis – Atliq Mart
Project Overview

This project demonstrates end-to-end supply chain analytics for a FMCG retail company (Atliq Mart) using Excel, Python (pandas), SQL, and Power BI. The goal is to analyze order fulfillment performance, inventory metrics, and customer service levels, focusing on key KPIs like LIFR, VOFR, On-Time %, In-Full %, and OTIF.

The project simulates a real-world supply chain environment, showing data extraction, cleaning, transformation, and interactive dashboard creation.

💻 Tools & Technologies
Tool	Purpose
Excel	Data cleaning, pivot tables, VLOOKUP/XLOOKUP, basic KPI calculations
Python (pandas)	Data wrangling, aggregation, KPI calculation, CSV/Excel handling
SQL	Querying orders, deliveries, and inventory tables from relational databases
Power BI	Interactive dashboard creation, visualization, conditional formatting, sparklines, slicers

 Data Collection & SQL Queries

Extract orders, deliveries, and inventory from SQL tables:

-- Example: Fetch order and delivery details
SELECT o.OrderID, o.CustomerID, o.ProductID, o.OrderQty, d.DeliveredQty, d.DeliveredDate
FROM Orders o
LEFT JOIN Deliveries d ON o.OrderID = d.OrderID;


Filter by date range, product category, and customers for reporting.

Import cleaned dataset from Python or SQL

Create interactive visuals:

Matrix → Customer vs KPIs (OTIF, LIFR, VOFR)

Sparklines → Trend of OTIF / LIFR per customer

Clustered + Stacked Column → Actual vs Target fulfillment

KPI Cards → Overall OTIF, LIFR, VOFR

Add slicers for:

Customer, Product, Month, Region

Use Conditional Formatting for alerts

Integrating SQL, Python, Excel, and Power BI allows full end-to-end supply chain analysis.

Calculating service-level KPIs (LIFR, VOFR, OTIF) helps monitor customer satisfaction.

Conditional formatting and sparklines in Power BI make trends actionable and visual.

Understanding order, delivery, and inventory logic is critical for real-world FMCG analytics.

