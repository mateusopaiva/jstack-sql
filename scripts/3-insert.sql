\c live023

--INSERT INTO customers 
--VALUES( DEFAULT, 'Mateus', 'Paiva', DEFAULT, 'mateus@jstack.com');

--INSERT INTO customers(email, first_name, last_name)
--VALUES('cristiano@jstack.com', 'Cristiano', 'Ronaldo');

-- INSERT INTO customers(first_name, last_name, email)
-- VALUES
--   ('LeBron', 'James', 'lebron@jstack.com'),
--   ('Lionel', 'Messi', 'messi@jstack.com'),
--   ('Neymar', 'Jr', 'neymar@jstack.com'),
--   ('Steph', 'Curry', 'curry@jstack.com')
-- ;

INSERT INTO customers(first_name, last_name, email)
VALUES ('Michael', 'Jordan', 'jordan@jstack.com')
RETURNING id, created_at;