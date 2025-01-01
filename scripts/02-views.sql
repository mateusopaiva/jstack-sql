\c live024

DROP VIEW IF EXISTS customers_summary;

--CREATE VIEW customers_summary AS 
--  SELECT
--    customer_id,
--    COUNT(id) AS total_orders,
--    SUM(amount) AS total_revenue,
--    MAX(amount) AS max_order,
--    MIN(amount) AS min_order,
--    ROUND(AVG(amount), 2) AS average_ticket
--  FROM orders
--  GROUP BY customer_id
--  ORDER BY customer_id
--;

--INSERT INTO orders(customer_id, amount) VALUES(4, 1000);

--SELECT * 
--FROM customers_summary
--WHERE total_revenue BETWEEN 500 AND 1000
--ORDER BY total_revenue DESC
--;

SELECT * 
FROM pg_views
WHERE viewname = 'customers_summary';
;