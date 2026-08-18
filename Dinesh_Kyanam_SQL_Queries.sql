Question 1
Customer segment with the highest total unit price for each year

WITH segment_sales AS (
    SELECT
        strftime('%Y', s.OrderDate) AS year,
        c.Segment,
        SUM(s.UnitPrice) AS total_sales
    FROM Sales s
    JOIN Customers c
        ON s.CustomerID = c.CustomerID
    GROUP BY strftime('%Y', s.OrderDate), c.Segment
)

SELECT
    year,
    Segment,
    ROUND(total_sales, 2) AS total_sales
FROM segment_sales
WHERE total_sales = (
    SELECT MAX(s2.total_sales)
    FROM segment_sales s2
    WHERE s2.year = segment_sales.year
)
ORDER BY year;




 Question 2
Product subcategory with the highest growth in units sold from 2024 to 2025

SELECT
    p.Subcategory,
    SUM(CASE WHEN strftime('%Y', s.OrderDate) = '2024'
             THEN s.Quantity ELSE 0 END) AS units_2024,
    SUM(CASE WHEN strftime('%Y', s.OrderDate) = '2025'
             THEN s.Quantity ELSE 0 END) AS units_2025,
    SUM(CASE WHEN strftime('%Y', s.OrderDate) = '2025'
             THEN s.Quantity ELSE 0 END)
    -
    SUM(CASE WHEN strftime('%Y', s.OrderDate) = '2024'
             THEN s.Quantity ELSE 0 END) AS growth
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
WHERE strftime('%Y', s.OrderDate) IN ('2024', '2025')
GROUP BY p.Subcategory
ORDER BY growth DESC
LIMIT 1;



Question 3
Month-over-month change in total unit price by region for 2024

WITH monthly_sales AS (
    SELECT
        Region,
        strftime('%m', OrderDate) AS month,
        SUM(UnitPrice) AS total_sales
    FROM Sales
    WHERE strftime('%Y', OrderDate) = '2024'
    GROUP BY Region, strftime('%m', OrderDate)
),
sales_change AS (
    SELECT
        Region,
        month,
        total_sales,
        LAG(total_sales) OVER (
            PARTITION BY Region
            ORDER BY month
        ) AS previous_month
    FROM monthly_sales
)

SELECT
    Region,
    month,
    ROUND(total_sales, 2) AS total_sales,
    ROUND(total_sales - previous_month, 2) AS month_over_month_change
FROM sales_change
ORDER BY Region, month;


Question 4
Compare average units sold with and without a discount by subcategory

SELECT
    p.Subcategory,
    ROUND(AVG(CASE
        WHEN s.Discount > 0 THEN s.Quantity
    END), 2) AS avg_units_discounted,
    ROUND(AVG(CASE
        WHEN s.Discount = 0 THEN s.Quantity
    END), 2) AS avg_units_no_discount
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY p.Subcategory
HAVING AVG(CASE WHEN s.Discount > 0 THEN s.Quantity END)
       >
       AVG(CASE WHEN s.Discount = 0 THEN s.Quantity END)
ORDER BY avg_units_discounted - avg_units_no_discount DESC;



Question 5
Correct Customer_1096's segment from SMB to Enterprise

UPDATE Customers
SET Segment = 'Enterprise'
WHERE CustomerName = 'Customer_1096';
