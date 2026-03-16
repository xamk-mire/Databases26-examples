CREATE INDEX idx_stocks_store_product ON stocks (store_id, product_id);
CREATE INDEX idx_employees_store ON employees (store_id);
CREATE INDEX idx_orders_customer ON orders (customer_id);
CREATE INDEX idx_products_name ON products (name);
