-- Step 1: stores
INSERT INTO stores (name, type, city, street_address)
VALUES
  ('TrailShop Online', 'ONLINE', NULL, NULL),
  ('TrailShop Helsinki', 'PHYSICAL', 'Helsinki', 'Mannerheimintie 10'),
  ('TrailShop Kuopio', 'PHYSICAL', 'Kuopio', 'Puijonkatu 5');

-- Step 2: employees
INSERT INTO employees (full_name, role_title, hire_date, store_id)
VALUES
  ('Aino Laine', 'Store Manager', '2023-05-10', 1),
  ('Mikko Saarinen', 'Sales Support', '2024-01-15', 1),
  ('Ella Virtanen', 'Store Manager', '2022-09-01', 2),
  ('Jari Lehtonen', 'Sales Associate', '2023-11-20', 2),
  ('Niko Hakkarainen', 'Store Manager', '2021-04-12', 3),
  ('Salla Niemi', 'Sales Associate', '2024-02-05', 3);

-- Step 3: stocks
INSERT INTO stocks (store_id, product_id, quantity)
VALUES
  -- TrailShop Online
  (1, 1, 20),
  (1, 2, 10),
  (1, 4, 25),
  (1, 7, 12),
  (1, 8, 30),
  -- TrailShop Helsinki
  (2, 1, 8),
  (2, 3, 6),
  (2, 4, 18),
  (2, 5, 14),
  (2, 7, 5),
  -- TrailShop Kuopio
  (3, 1, 5),
  (3, 2, 7),
  (3, 4, 9),
  (3, 6, 22),
  (3, 8, 4);
