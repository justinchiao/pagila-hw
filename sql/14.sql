/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

select title from((select * from(
            category join film_category on category.category_id=film_category.category_id))n1 
    join film on n1.film_id=film.film_id)where name='Family';
