/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

select title, sum(n1.amount) as profit from(
    (payment join rental on payment.rental_id=rental.rental_id)n1 join
    (inventory join film on inventory.film_id=film.film_id)n2 on n1.inventory_id=n2.inventory_id)
group by n2.title 
order by profit desc;
