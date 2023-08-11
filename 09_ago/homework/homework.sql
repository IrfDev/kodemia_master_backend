/*
1. Query returning the payments made by customer 2. Data to retrieve:
- customer_id
- name
- last_name
- email
- address
- city
- country
- amount of payment
- date
*/

SELECT customer.customer_id,
       first_name,
       last_name,
       email,
       a.address,
       c.city,
       co.country,
       p.amount,
       p.payment_date as date
FROM customer
         INNER JOIN payment AS p ON customer.customer_id = p.customer_id
         INNER JOIN address AS a ON customer.address_id = a.address_id
         INNER JOIN city AS c ON a.city_id = c.city_id
         INNER JOIN country AS co ON co.country_id = c.country_id
WHERE customer.customer_id = 2
ORDER BY date DESC
;


/*
2. Query returning the list of all the payments including info from the customer and staff that registered the payment.
Data to return:
- customer_id
- customer name
- Customer last name
- Staff name
- Staff last name
- amount
- payment date
*/

SELECT p.customer_id,
       c.first_name,
       c.last_name,
       s.first_name,
       s.last_name,
       p.amount,
       p.payment_date
FROM payment AS p
         INNER JOIN customer AS c ON p.customer_id = c.customer_id
         INNER JOIN staff AS s ON p.staff_id = s.staff_id
ORDER BY p.payment_date DESC
;


/*
3. Query returning the list of DVD's with stock
Data to return:
- film id
- film title
- sku
- stock
*/

SELECT f.film_id, f.title, i.inventory_id
FROM inventory AS i
         LEFT JOIN film AS f ON i.film_id = f.film_id
ORDER BY f.title
;


/*
3.1 WITH BONUS

When you group rows, each returned registry is going to be one group, where you can access the different fields
of the rows.

Notice that you can only use repeated col values in the SELECT command

EG: i.inventory_id is unique, you can access it to include it into another function though.

*/

SELECT f.film_id, f.title, count(i.film_id), array(i.inventory_id)
FROM inventory AS i
         LEFT JOIN film AS f ON i.film_id = f.film_id
GROUP BY f.film_id, f.title
ORDER BY f.title;


/*
4. Query to create a new film_reviews table:
- review_id
- film_id
- customer_id
- review text
*/

CREATE TABLE IF NOT EXISTS film_reviews
(
    review_id   SERIAL PRIMARY KEY,
    film_id     INT NOT NULL,
    customer_id INT NOT NULL,
    review      TEXT,

    CONSTRAINT pk_film
        FOREIGN KEY (film_id)
            REFERENCES film (film_id),

    CONSTRAINT pk_customer
        FOREIGN KEY (customer_id)
            REFERENCES customer (customer_id)
);


/*
5. Add 5 reviews for 5 movies. With 'Excelent','Awesome','Cool,'Beautiful' as values
*/

-- 1st MOVIE

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (49, 603, 'Excellent');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (49, 599, 'Awesome');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (49, 598, 'Cool');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (49, 597, 'Beautiful');


-- 2nd MOVIE

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (283, 603, 'Excellent');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (283, 599, 'Awesome');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (283, 598, 'Cool');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (283, 597, 'Beautiful');


-- 3rd MOVIE

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (306, 603, 'Excellent');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (306, 599, 'Awesome');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (306, 598, 'Cool');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (306, 597, 'Beautiful');


-- 4th MOVIE

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (177, 603, 'Excellent');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (177, 599, 'Awesome');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (177, 598, 'Cool');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (177, 597, 'Beautiful');


-- 5th MOVIE

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (215, 603, 'Excellent');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (215, 599, 'Awesome');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (215, 598, 'Cool');

INSERT INTO film_reviews(film_id, customer_id, review)
VALUES (215, 597, 'Beautiful');


/*
6. Query returning the list of reviews for each movie
- review
- film movie
*/

SELECT review, f.title
FROM film_reviews
         LEFT JOIN film AS f ON f.film_id = film_reviews.film_id
ORDER BY f.title;


/*
7. List of movies and corresponding actors
- Film title
- Actor name
- Actor last name
*/

SELECT f.title, a.first_name, a.last_name
FROM film as f
         LEFT JOIN film_actor AS fa ON fa.film_id = f.film_id
         INNER JOIN actor AS a ON fa.actor_id = a.actor_id
ORDER BY f.title;
