-- Q1: Total revenue by product category per month
SELECT
p.category,
d.month,
SUM(f.sales_amount) AS total_revenue
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY p.category, d.month
ORDER BY total_revenue DESC;

-- Q2: Top 2 performing stores by revenue
SELECT
s.store_name,
SUM(f.sales_amount) AS revenue
FROM fact_sales f
JOIN dim_store s ON f.store_id = s.store_id
GROUP BY s.store_name
ORDER BY revenue DESC
LIMIT 2;

-- Q3: Month-over-month sales trend
SELECT
d.month,
SUM(f.sales_amount) AS monthly_sales
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.month
ORDER BY d.month;
