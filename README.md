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

## Key Insights

Overall revenue across the three-year period is approximately $18.4M, with about 39K units sold. Technology is the strongest category and contributes the largest share of revenue. Regional performance is relatively balanced, with the West slightly ahead overall. Revenue is also distributed fairly evenly across the three customer segments, with SMB contributing the largest share. Monthly revenue fluctuates throughout the year, with stronger performance visible toward the end of the year. The dashboard also highlights the highest-performing products and allows leadership to filter performance by year.
