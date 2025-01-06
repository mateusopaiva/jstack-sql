\c live024

-- Constraint: restrição

--INSERT INTO customers(first_name) VALUES('Zezinho');
--INSERT INTO customers(first_name) VALUES('Vanessinha');

ALTER TABLE customers ALTER COLUMN email SET NOT NULL;

--UPDATE customers SET email = 'zezinho@jstack.com.br' WHERE id = 22;
--SELECT * FROM customers ORDER BY id DESC;