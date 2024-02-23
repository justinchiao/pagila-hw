/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

select n1.name as name, count(*) as sum from(
    (category join film_category on category.category_id=film_category.category_id)n1 join(
        film join language on film.language_id=language.language_id)n2 on n1.film_id=n2.film_id)
where n2.name='English'
group by n1.name;
