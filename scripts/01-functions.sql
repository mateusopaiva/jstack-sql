\c live024

-- INSERT INTO customers(first_name) VALUES ('Mateus');
-- UPDATE customers SET email = 'customer.20@email.com' WHERE id = 21;
-- SELECT * FROM customers ORDER BY id DESC LIMIT 2;
-- SELECT COUNT(DISTINCT email) AS total_of_customers FROM customers;
-- INSERT INTO orders(customer_id, amount) VALUES (1, 1000);
-- SELECT amount FROM orders ORDER BY amount DESC LIMIT 1;
-- SELECT amount FROM orders ORDER BY amount ASC LIMIT 1;
-- INSERT INTO orders(customer_id, amount) VALUES(2, 50);

-- Funções de Agregação (Aggregate Functions)
SELECT
  customer_id,
  COUNT(id) AS total_orders,
  SUM(amount) AS total_revenue,
  MAX(amount) AS max_order,
  MIN(amount) AS min_order,
  ROUND(AVG(amount), 2) AS average_ticket
FROM orders
-- WHERE total_orders > 1
GROUP BY customer_id
HAVING SUM(amount) BETWEEN 500 AND 1000
ORDER BY average_ticket DESC
-- LIMIT 3
;