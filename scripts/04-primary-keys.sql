\c live024

INSERT INTO customers(id, email) VALUES(1, 'qualquer_coisa');

--ALTER TABLE customers ADD PRIMARY KEY(id);
--SELECT * FROM customers WHERE id = 1;

SELECT constraint_name, constraint_type, table_name
FROM information_schema.table_constraints
WHERE table_schema = 'public';