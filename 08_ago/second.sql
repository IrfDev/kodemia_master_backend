SELECT c.first_name, c.customer_id, c.last_name, r.rental_date, f.title
FROM customer AS c
         INNER JOIN rental AS r
                    ON c.customer_id = r.customer_id
         INNER JOIN film as f
                    ON f.film_id = r.inventory_id
ORDER BY r.rental_date;
;