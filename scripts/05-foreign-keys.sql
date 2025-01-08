\c live024

-- Sobre a aula: RESTRICT/NO ACTION, CASCADE, SET NULL e SET DEFAULT

-- ALTER TABLE orders ALTER COLUMN customer_id SET DEFAULT 20;

-- ALTER TABLE orders DROP CONSTRAINT orders_fkey;
-- ALTER TABLE orders 
-- ADD CONSTRAINT orders_fkey FOREIGN KEY(customer_id) REFERENCES customers(id)
-- ON UPDATE CASCADE
-- ON DELETE SET DEFAULT
-- ;

--INSERT INTO orders(customer_id, amount) VALUES (12938, 1000);

--DELETE FROM orders WHERE customer_id = 1;
--DELETE FROM customers WHERE id = 1;

--UPDATE customers SET id = 9999 WHERE id = 5;
DELETE FROM customers WHERE id = 6;
SELECT * FROM orders WHERE id = 6;
