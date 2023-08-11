/*
1. Find country_id
2. Create City
3. Create customer address
4. Create store address
5. Create staff address
5. Create staff
3. Create Store
4. Update staff with store_id
4. Create Customer
5. Delete customer
*/

-- Find country_id

SELECT country_id as mexico_country_id
FROM country
WHERE country = 'Mexico';

-- Create City
INSERT INTO city(city, country_id)
VALUES ('CDMX', 60)
RETURNING city_id;
-- [RETURN]: 601

-- Create customer address
INSERT INTO address(address, district, city_id, postal_code, phone)
VALUES ('Av. Coyoacán 189', 'Benito Juárez', 601, '03240', '+52555893645')
RETURNING address_id;
-- [RETURN]: 606


-- Create staff address
INSERT INTO address(address, district, city_id, postal_code, phone)
VALUES ('Av. Universidad 1900', 'Benito Juárez', 601, '03240', '+52555938000')
RETURNING address_id;
-- [RETURN] 607


-- Create store address
INSERT INTO address(address, district, city_id, postal_code, phone)
VALUES ('Amores 1500', 'Benito Juárez', 601, '03240', '+52555821645')
RETURNING address_id;
-- [RETURN] 608


-- Create staff
INSERT INTO staff(first_name, last_name, address_id, email, store_id, username)
VALUES ('Hamidreza', 'Dehbini', 607, 'hdehbini@blockbuster.com', 1, 'hamid')
RETURNING staff_id;
-- [RETURN] 3


-- Create store
INSERT INTO store(address_id, manager_staff_id)
VALUES (608, 3)
RETURNING store_id;
-- [RETURN] 4

-- Update staff with store_id
UPDATE staff
SET store_id = 3
WHERE staff_id = 3;
-- [RETURN] 3

-- Create Customer
INSERT INTO customer(store_id, first_name, last_name, email, address_id, activebool, active)
VALUES (3, 'Irving', 'Suarez', 'any_mail@any_mail.com', 606, true, 1)
RETURNING customer_id;
-- [RETURN] 604

-- Delete customer
DELETE
FROM customer
WHERE customer_id = 604
RETURNING customer_id;