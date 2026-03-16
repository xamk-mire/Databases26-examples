-- Roles
CREATE ROLE role_store_manager;
CREATE ROLE role_sales_associate;
CREATE ROLE role_analyst;

-- Role privileges
GRANT SELECT, INSERT, UPDATE ON stocks TO role_store_manager;
GRANT SELECT ON products, stores, employees TO role_store_manager;

GRANT SELECT ON products, stocks TO role_sales_associate;

GRANT SELECT ON customers, orders, order_items, products, stores, stocks TO role_analyst;

-- Users
CREATE USER manager1 WITH PASSWORD 'manager1';
CREATE USER sales1 WITH PASSWORD 'sales1';
CREATE USER analyst1 WITH PASSWORD 'analyst1';

-- Assign roles
GRANT role_store_manager TO manager1;
GRANT role_sales_associate TO sales1;
GRANT role_analyst TO analyst1;
