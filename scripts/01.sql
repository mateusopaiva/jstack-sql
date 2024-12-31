\c live024

-- INSERT INTO customers(first_name) VALUES ('Mateus');
-- UPDATE customers SET email = 'customer.20@email.com' WHERE id = 21;
-- SELECT * FROM customers ORDER BY id DESC LIMIT 2;
-- SELECT COUNT(DISTINCT email) AS total_of_customers FROM customers;
-- INSERT INTO orders(customer_id, amount) VALUES (1, 1000);

SELECT 
  SUM(amount) AS "totalOrders",
  COUNT(id) AS "totalSales"
  FROM orders
;
