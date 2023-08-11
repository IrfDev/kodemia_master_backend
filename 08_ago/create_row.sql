/*
    Create a customer
*/

INSERT INTO customer(store_id, first_name, last_name, email, activebool, active, address_id)
VALUES (1, 'Irving', 'Suarez', 'iasl96@msn.com', true, 1, 1)
RETURNING customer_id;

/*
    Create multiple customers

    VALUES received muliple
*/

INSERT INTO customer(store_id, first_name, last_name, email, activebool, active, address_id)
VALUES (1, 'Irving', 'Suarez', 'iasl96@msn.com', true, 1, 1),
       (1, 'Alfredo', 'López', 'lopez@hotmail.com', true, 1, 1)
RETURNING customer_id;