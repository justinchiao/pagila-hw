/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

select title, film.film_id, count as actor_count from(
    (select film_id, count(actor_id) from film_actor group by film_id)n1 
    inner join film on n1.film_id=film.film_id) order by count, title;
