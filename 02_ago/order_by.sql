/*
ORDER BY: FIRST EXERCISE
*/


/*
1. Name, last name sort by last name. Asc
*/
SELECT first_name, last_name FROM customer ORDER BY last_name;

/*
2. Name, last name sort by last name. Desc
*/
SELECT first_name, last_name FROM customer ORDER BY last_name desc;


/*
3. Name, last name sort by first asc and last name desc
*/
SELECT first_name, last_name FROM customer ORDER BY first_name, last_name desc;


/*
4. Name, and char length of name. Sort by char length
*/
SELECT first_name, length(first_name) as len FROM customer ORDER BY len;