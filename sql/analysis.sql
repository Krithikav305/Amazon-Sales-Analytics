-- 1. Revenue by Category

SELECT
    p.category,
    COUNT(*) AS total_sales,
    SUM(f.qty) AS units_sold,
    SUM(f.amount) AS revenue,
    AVG(f.amount) AS average_order_value
FROM fact_sales f
JOIN dim_product p
    ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;


-- 2. Top 10 SKUs by Revenue

SELECT
    p.sku,
    p.category,
    SUM(f.amount) AS revenue
FROM fact_sales f
JOIN dim_product p
    ON f.product_id = p.product_id
GROUP BY p.sku, p.category
ORDER BY revenue DESC
LIMIT 10;


-- 3. Monthly Revenue

SELECT
    d.year,
    d.month,
    SUM(f.amount) AS revenue
FROM fact_sales f
JOIN dim_date d
    ON f.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;


-- 4. Sales and Revenue by Status

SELECT
    f.status,
    COUNT(*) AS total_orders,
    SUM(f.amount) AS revenue
FROM fact_sales f
GROUP BY f.status
ORDER BY revenue DESC;


-- 5. Top 10 Shipping Cities by Revenue

SELECT
    c.ship_city,
    COUNT(*) AS total_orders,
    SUM(f.amount) AS revenue
FROM fact_sales f
JOIN dim_customer c
    ON f.customer_id = c.customer_id
GROUP BY c.ship_city
ORDER BY revenue DESC
LIMIT 10;


-- 6. Revenue by Fulfilment

SELECT
    f.fulfilment,
    COUNT(*) AS total_sales,
    SUM(f.amount) AS revenue,
    AVG(f.amount) AS average_order_value
FROM fact_sales f
GROUP BY f.fulfilment
ORDER BY revenue DESC;


-- 7. B2B vs Non-B2B Sales

SELECT
    f.b2b,
    COUNT(*) AS total_sales,
    SUM(f.amount) AS revenue,
    AVG(f.amount) AS average_order_value
FROM fact_sales f
GROUP BY f.b2b
ORDER BY revenue DESC;