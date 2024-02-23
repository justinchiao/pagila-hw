/*
 * Count the total number of films whose rental price is less than $1.
 * HINT:
 * Use the count() aggregation function and the rental_rate column of the film table.
 */

select count(rental_rate) from film
where rental_rate < 1;
