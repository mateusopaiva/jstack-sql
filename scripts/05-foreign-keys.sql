\c live024

--INSERT INTO orders(customer_id, amount) VALUES (12938, 1000);

--ALTER TABLE orders ADD FOREIGN KEY(customer_id) REFERENCES customers(id);

--DROP TABLE IF EXISTS batatinha;
--CREATE TABLE batatinha(
--  customer_id INT REFERENCES customer(id)
--);

--ALTER TABLE batatinha drop CONSTRAINT chaveestrangeiradabatatinha