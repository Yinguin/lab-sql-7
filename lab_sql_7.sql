USE sakila;

#1
SELECT last_name FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1;

#2.
SELECT last_name FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1;

#3.
SELECT staff_id, COUNT(*) AS total_rentals FROM rental
GROUP BY staff_id;

#4. 
SELECT release_year, COUNT(*) AS total_films FROM film
GROUP BY release_year;

#5.
SELECT rating, COUNT(*) AS total_films FROM film
GROUP BY rating;

#6.
SELECT rating, ROUND(AVG(length),2) AS mean_length FROM film
GROUP BY rating;

#7.
SELECT rating, ROUND(AVG(length),2) AS mean_length FROM film
GROUP BY rating
HAVING mean_length > 120;