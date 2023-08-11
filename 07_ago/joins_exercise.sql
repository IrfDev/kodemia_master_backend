/*
    Columns that have
*/

SELECT products.id, short_description, brands.name
FROM products
         LEFT JOIN brands
                   ON brand_id = brands.id;

