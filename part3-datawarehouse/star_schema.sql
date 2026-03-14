-- Dimension table: Date
CREATE TABLE dim_date (
date_id DATE PRIMARY KEY,
year INT,
month INT,
day INT
);

-- Dimension table: Store
CREATE TABLE dim_store (
store_id INT PRIMARY KEY,
store_name VARCHAR(100),
city VARCHAR(50)
);

-- Dimension table: Product
CREATE TABLE dim_product (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50)
);

-- Fact table
CREATE TABLE fact_sales (
sale_id INT PRIMARY KEY,
date_id DATE,
store_id INT,
product_id INT,
quantity INT,
sales_amount DECIMAL(10,2),

FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);
