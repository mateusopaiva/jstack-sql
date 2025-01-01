\c live024

DROP VIEW IF EXISTS customers_summary;

CREATE OR REPLACE VIEW customers_summary AS 
  SELECT
    customer_id AS "customerID",
    COUNT(id) AS "totalOrders",
    SUM(amount) AS "totalRevenue",
    MAX(amount) AS "maxOrder",
    MIN(amount) AS "minOrder",
    ROUND(AVG(amount), 2) AS "averageTicket"
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