/*
1. Create a query that gets the payment data from each client. The required data is: ID, name, last name, amount, date
*/

SELECT payment_id, first_name, last_name, amount, payment_date
FROM payment
         FULL JOIN customer a on a.customer_id = payment.customer_id
;