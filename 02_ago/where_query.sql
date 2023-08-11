/*
ORDER BY: Second exercise
*/

/*
1. name, last name from customer filtered by name column value equal to Jami
*/

SELECT last_name, first_name
FROM customer
WHERE first_name = 'Jamie';

/*
2. name, last name from customer filtered by name column value equal to Jamie and last name equal to Rice
*/

SELECT last_name, first_name
FROM customer
WHERE first_name = 'Jamie'
  AND last_name = 'Rice';


/*
3. name, last name from customer filtered by name column value equal to Adam or last name equal to Rodriguez
*/

SELECT last_name, first_name
FROM customer
WHERE first_name = 'Adam'
   OR last_name = 'Rodriguez';


/*
4. name, last name from customer filtered by name column value equal to Ann, Anne or Annie
*/

SELECT last_name, first_name
FROM customer
WHERE first_name IN ('Anne', 'Annie', 'Ann');


/*
5. name, last name from customer filtered by name column value starts with Ann
*/

SELECT last_name, first_name
FROM customer
WHERE first_name LIKE 'Ann%';

/*
6. On Customer table get names and char length of names from all row where the name starts with A and char length
is between sort by char length
*/

SELECT first_name, length(first_name)
FROM customer
WHERE first_name LIKE 'A%'
  AND length(first_name) BETWEEN 3 AND 5
ORDER BY length(first_name)
;


/*
7. name, last name from customer filtered by name column value starts with Bra and his last name
is not Motleyr
*/

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Bra%'
  AND last_name != 'Motley';