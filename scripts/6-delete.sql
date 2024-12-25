\c live023

DELETE 
FROM customers
WHERE id = 5
RETURNING *
;