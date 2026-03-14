-- Q1: List customers with the number of orders they placed

SELECT
c.customer_id,
c.customer_name,
COUNT(o.order_id) AS total_orders
FROM read_csv_auto('datasets/customers.csv') c
LEFT JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;


-- Q2: Top 3 customers by total order value

SELECT
c.customer_name,
SUM(o.total_amount) AS total_value
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_value DESC
LIMIT 3;


-- Q3: Products purchased by customers in Bangalore

SELECT
p.product_name
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
JOIN read_parquet('datasets/products.parquet') p
ON p.product_id = o.product_id
WHERE c.city = 'Bangalore';


-- Q4: Join all datasets together

SELECT
c.customer_name,
o.order_id,
o.order_date,
p.product_name,
o.total_amount
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
JOIN read_parquet('datasets/products.parquet') p
ON p.product_id = o.product_id;
