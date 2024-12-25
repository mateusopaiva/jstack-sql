\c live023

UPDATE customers
SET first_name = 'Mateus', last_name = 'Paiva', email = 'mateus@jstack@gmail.com'
WHERE id = 1
RETURNING *
;