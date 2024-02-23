/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

select film.film_id, title, count from (
    (select count(inventory_id), film_id from inventory group by film_id)n1
    inner join film on n1.film_id=film.film_id) 
    where title ~ '^H.*' order by title desc;
