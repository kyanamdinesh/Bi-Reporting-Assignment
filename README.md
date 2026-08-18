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


## Summary
The business generated about $18.41M in total revenue and sold around 39K units from 2023 to 2025. The average selling price was $471.50, and revenue after discounts was about $17.57M. Technology was the highest-performing product category. Sales were fairly balanced across customer segments, with SMB having the largest share. Among the regions, the West had the highest overall revenue. Monthly sales changed throughout the year, with some stronger months toward the end of the year. Overall, the business performed well across different products, customer segments, and regions.
