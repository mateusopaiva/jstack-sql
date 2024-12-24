\c live023

DO $$
DECLARE
  i INT := 1;
  customer_id INT;
  created_customers INT := 0;
BEGIN
  WHILE i <= 20 LOOP
    INSERT INTO customers(first_name, last_name, email)
    VALUES('Customer-' || i, 'Doe-' || i, 'customer.'|| i || '@email.com')
    RETURNING id INTO customer_id;

    INSERT INTO orders(amount, customer_id)
    VALUES(RANDOM() * 1000, customer_id);

    i := i + 1;
    created_customers := created_customers+1;
  END LOOP;

  RAISE NOTICE '% customers succesfully created', created_customers;
END $$;
