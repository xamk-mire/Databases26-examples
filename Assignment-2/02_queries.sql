-- 1) Orders with customer names
SELECT o.order_id, o.order_date, c.full_name
FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
ORDER BY o.order_date DESC;

-- 2) Order details with product names
SELECT oi.order_id, p.name, oi.quantity, oi.unit_price
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
ORDER BY oi.order_id, p.name;

-- 3) Full order summary
SELECT o.order_id, o.order_date, c.full_name, p.name, oi.quantity, oi.unit_price
FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
JOIN order_items oi ON oi.order_id = o.order_id
JOIN products p ON p.product_id = oi.product_id
ORDER BY o.order_id, p.name;

-- 4) Customers with order count
SELECT c.full_name, COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.full_name
ORDER BY order_count DESC, c.full_name;

-- 5) Products never ordered
SELECT p.name
FROM products p
LEFT JOIN order_items oi ON oi.product_id = p.product_id
WHERE oi.order_id IS NULL
ORDER BY p.name;
