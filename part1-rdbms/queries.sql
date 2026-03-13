~Q1
SELECT c.customer_name,
SUM(oi.quantity * oi.price) AS total_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE c.city = 'Mumbai'
GROUP BY c.customer_name;

~Q2
SELECT p.product_name,
SUM(oi.quantity) AS total_quantity_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 3;

~Q3
SELECT rep_id,
COUNT(DISTINCT customer_id) AS unique_customers
FROM orders
GROUP BY rep_id;

~Q4
SELECT order_id,
SUM(quantity * price) AS total_value
FROM order_items
GROUP BY order_id
HAVING total_value > 10000
ORDER BY total_value DESC

~Q5
SELECT product_name
FROM products
WHERE product_id NOT IN
(SELECT product_id FROM order_items);
