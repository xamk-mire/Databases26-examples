CREATE TABLE stores (
  store_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  type VARCHAR(20) NOT NULL CHECK (type IN ('ONLINE', 'PHYSICAL')),
  city VARCHAR(100),
  street_address VARCHAR(200)
);

CREATE TABLE stocks (
  store_id INTEGER NOT NULL,
  product_id INTEGER NOT NULL,
  quantity INTEGER NOT NULL CHECK (quantity >= 0),
  CONSTRAINT pk_stocks PRIMARY KEY (store_id, product_id),
  CONSTRAINT fk_stocks_store
    FOREIGN KEY (store_id) REFERENCES stores(store_id) ON DELETE CASCADE,
  CONSTRAINT fk_stocks_product
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE RESTRICT
);

CREATE TABLE employees (
  employee_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  role_title VARCHAR(100) NOT NULL,
  hire_date DATE NOT NULL,
  store_id INTEGER NOT NULL,
  CONSTRAINT fk_employees_store
    FOREIGN KEY (store_id) REFERENCES stores(store_id) ON DELETE RESTRICT
);
