\c live024

DROP VIEW IF EXISTS customers_summary;

CREATE OR REPLACE VIEW customers_summary AS 
  SELECT
    customer_id AS "customerID",
    COUNT(id)::INT AS "totalOrders",
    SUM(amount)::FLOAT AS "totalRevenue",
    MAX(amount)::FLOAT AS "maxOrder",
    MIN(amount)::FLOAT AS "minOrder",
    ROUND(AVG(amount), 2)::FLOAT AS "averageTicket"
  FROM orders
  GROUP BY customer_id
  ORDER BY "totalOrders"
;

-- ALTER VIEW customers_summary RENAME COLUMN total_orders TO "totalOrders";

--SELECT * 
--FROM customers_summary
--WHERE total_revenue BETWEEN 500 AND 1000
--ORDER BY total_revenue DESC
--;

--SELECT * 
--FROM pg_views
--WHERE viewname = 'customers_summary';
--;