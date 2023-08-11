-- Update name of customer 606
UPDATE customer
SET first_name = 'Juan',
    last_name  = 'Ramos'
WHERE customer_id = 603
RETURNING *