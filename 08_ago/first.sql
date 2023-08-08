SELECT payment_id, first_name, last_name, amount, payment_date
FROM payment
         FULL JOIN customer a on a.customer_id = payment.customer_id
;