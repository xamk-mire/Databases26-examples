-- Part 1: add foreign key to products
ALTER TABLE products
  ADD CONSTRAINT fk_products_category
  FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE RESTRICT;

-- Part 2: new tables
CREATE TABLE customers (
  customer_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(255) UNIQUE
);

CREATE TABLE orders (
  order_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  order_date DATE NOT NULL,
  CONSTRAINT fk_orders_customer
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE RESTRICT
);

CREATE TABLE order_items (
  order_id INTEGER NOT NULL,
  product_id INTEGER NOT NULL,
  quantity INTEGER NOT NULL CHECK (quantity >= 1),
  unit_price NUMERIC(10, 2) NOT NULL,
  CONSTRAINT pk_order_items PRIMARY KEY (order_id, product_id),
  CONSTRAINT fk_order_items_order
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
  CONSTRAINT fk_order_items_product
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE RESTRICT
);
