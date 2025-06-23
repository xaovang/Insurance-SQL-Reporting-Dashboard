# Insurance-SQL-Reporting-Dashboard

This project showcases a business-focused SQL analysis and dashboard using a synthetic insurance dataset containing 10,000 rows. The goal was to simulate a real-world Business Systems Analyst workflow — from writing SQL queries to generating insights and visualizing them in Excel.

---

## Project Summary

**Dataset**: `synthetic_insurance_data.csv` (10,000 rows)  
**Tools Used**: MySQL Workbench, Excel

This project answers key business questions around customer behavior, conversion, claims, and pricing. All results were exported from MySQL and visualized in an interactive Excel dashboard.

---

## Business Questions Answered

1. **What is the average premium by policy type?**  
2. **How many conversions occurred in each region?**  
3. **Which regions had the highest claims frequency?**  
4. **What is the average time to conversion by lead source?**  
5. **Which regions receive the most total discounts?**

---

## SQL Queries

All queries were written in standard SQL using `GROUP BY`, `WHERE`, `ORDER BY`, `AVG()`, and `COUNT()` clauses. The key queries used in this analysis are saved in the `queries.sql` file.

Example:
sql:
SELECT Policy_Type, ROUND(AVG(Premium_Amount), 2) AS avg_premium
FROM synthetic_insurance_data
GROUP BY Policy_Type;

## Dashboard Preview

The Excel dashboard includes:

- Bar Chart: Average Premium by Policy Type
- Pie Chart: Conversions by Region
- Column Chart: Top 5 Regions by Claims Frequency
- Line Chart: Average Time to Conversion by Lead Source
- Horizontal Bar Chart: Average Total Discount by Region
- All charts are combined into one interactive sheet for easy exploration.

## insurance-sql-reporting
- insurance_data.csv # Raw data
- insurance_sql_dashboard.xlsx # Main Excel dashboard with visuals
- Queries.sql # Saved SQL queries
- schema.sql # Table creation script
- README.md # This file
