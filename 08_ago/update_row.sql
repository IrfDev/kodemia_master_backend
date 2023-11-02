-- Update name of customer 606
UPDATE
  customer
SET
  first_name = 'Juan',
  last_name = 'Ramos'
WHERE
  customer_id = 603 RETURNING * { first_name :'juan' };

UPDATE
  category
SET
  category.name = "Noticiaas",
  category.description = "Las mejores noticias del pueblo"
WHERE
  category_id = 1 RETURNING *;