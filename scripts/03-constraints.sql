\c live024

-- Constraint: restrição

--INSERT INTO customers(first_name) VALUES('Zezinho');
--INSERT INTO customers(first_name) VALUES('Vanessinha');
--INSERT INTO customers(first_name, email) VALUES ('Zé', 'zezinho@jstack.com.br');

--ALTER TABLE customers ALTER COLUMN email SET NOT NULL;
--ALTER TABLE customers ADD CONSTRAINT customers_email_unique UNIQUE(email);
ALTER TABLE customers ADD UNIQUE(email);
--ALTER TABLE customers DROP CONSTRAINT customers_email_unique;

SELECT constraint_name, constraint_type, table_name
FROM information_schema.table_constraints
WHERE table_schema = 'public';