# BI Reporting Engineer Technical Assignment

## Overview

This repository contains my submission for the BI Reporting Engineer technical assignment. The analysis covers sales performance across 2023–2025 using Power BI and SQL.

## Files

- `Dinesh_Kyanam_BI_Reporting_Assignment.pbix` - Power BI dashboard
- `Dinesh_Kyanam_SQL_Queries.sql` - SQL queries for the five requested questions
- `Sales.csv` - transactional sales data
- `Customers.csv` - customer and segment data
- `Products.csv` - product hierarchy data
- `Calendar.csv` - date dimension

## Power BI Setup

The four CSV files were loaded into Power BI Desktop and modeled using a star schema, with Sales as the fact table and Customers, Products, and Calendar as dimension tables.

The report contains one executive summary page covering revenue, quantity, average selling price, revenue after discount, year-over-year growth, monthly trends, category and segment performance, regional performance, and top products.

## SQL Setup

The SQL queries were tested using SQLite.

To reproduce the SQL analysis:

1. Create a SQLite database.
2. Import `Sales.csv`, `Customers.csv`, `Products.csv`, and `Calendar.csv` as separate tables.
3. Keep the table names as Sales, Customers, Products, and Calendar.
4. Run the queries in `Dinesh_Kyanam_SQL_Queries.sql`.
5. Keep the original CSV column names unchanged during import.
6. Use SQLite 3.25 or newer because the month-over-month query uses the LAG() window function.


## Summary of Key Insights

- Technology is the strongest-performing product category by revenue, making it the primary driver of overall sales performance.
- The SMB segment contributes the largest share of revenue, highlighting it as a key customer segment for continued growth and retention efforts.
- The West region leads overall revenue performance, while lower-performing regions present opportunities for deeper analysis and targeted improvement.
- Revenue trends vary across months, emphasizing the importance of monitoring period-over-period performance to identify seasonality and changes in demand.
- A relatively small group of top-performing products contributes a meaningful share of revenue, making product-level performance an important area for inventory and sales planning.
- Discount-adjusted revenue provides a more realistic view of business performance than gross revenue alone and helps identify the impact of discounting on realized sales.
- Overall, the dashboard enables leadership to quickly identify the strongest categories, customer segments, regions, and products while also highlighting areas that may require further investigation.
