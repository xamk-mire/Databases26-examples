-- 1) Store stock list
SELECT s.name AS store_name, p.name AS product_name, st.quantity
FROM stores s
JOIN stocks st ON st.store_id = s.store_id
JOIN products p ON p.product_id = st.product_id
ORDER BY s.name, p.name;

-- 2) Low stock report
SELECT p.name AS product_name, SUM(st.quantity) AS total_quantity
FROM products p
JOIN stocks st ON st.product_id = p.product_id
GROUP BY p.name
HAVING SUM(st.quantity) < 10
ORDER BY total_quantity, p.name;

-- 3) Employees per store
SELECT s.name AS store_name, COUNT(e.employee_id) AS employee_count
FROM stores s
LEFT JOIN employees e ON e.store_id = s.store_id
GROUP BY s.name
ORDER BY s.name;

-- 4) Top stocked products
SELECT p.name AS product_name, SUM(st.quantity) AS total_quantity
FROM products p
JOIN stocks st ON st.product_id = p.product_id
GROUP BY p.name
ORDER BY total_quantity DESC, p.name
LIMIT 5;
