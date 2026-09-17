CREATE DATABASE IF NOT EXISTS amazon_sales_db;

USE amazon_sales_db;

CREATE TABLE dim_customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    ship_city VARCHAR(100),
    ship_state VARCHAR(100),
    ship_postal_code INT,
    ship_country VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(100),
    style VARCHAR(100),
    category VARCHAR(100),
    size VARCHAR(20),
    asin VARCHAR(50)
);

CREATE TABLE dim_date (
    date_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    day INT,
    month INT,
    quarter INT,
    year INT
);

CREATE TABLE fact_sales (
    sales_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(50),
    customer_id INT,
    product_id INT,
    date_id INT,
    status VARCHAR(100),
    fulfilment VARCHAR(100),
    sales_channel VARCHAR(100),
    ship_service_level VARCHAR(100),
    courier_status VARCHAR(100),
    qty INT,
    currency VARCHAR(10),
    amount DECIMAL(12,2),
    promotion_ids TEXT,
    b2b BOOLEAN,
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);