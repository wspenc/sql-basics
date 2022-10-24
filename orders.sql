--#1--
CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(200),
  product_price NUMERIC,
  quantity INTEGER
);

--#2--
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (0, 'Basketball', 54.99, 2),
(1, 'Shoes', 84.99, 10),
(2, 'Football', 24.99, 6),
(3, 'Backpack', 100, 1),
(0, 'Cleats', 66.59, 4);

--#3--
SELECT * FROM orders;

--#4--
SELECT SUM(quantity) FROM orders;

--#5--
SELECT SUM(product_price * quantity) FROM orders;

--#6--
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;