-- 1) All categories
SELECT * FROM categories;

-- 2) All products
SELECT * FROM products;

-- 3) Only product names and prices
SELECT name, price
FROM products;

-- 4) All products that cost more than 50
SELECT *
FROM products
WHERE price > 50;

-- 5) Product names and prices sorted from most expensive -> cheapest
SELECT name, price
FROM products
ORDER BY price DESC;
