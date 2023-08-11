-- Delete customers with name Irving Suarez

DELETE
FROM customer
WHERE first_name = 'Irving'
  AND last_name = 'Suarez'
RETURNING customer_id;