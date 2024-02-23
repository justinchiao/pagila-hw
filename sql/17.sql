/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

select country, sum(amount) as profit from(((customer join address on customer.address_id=address.address_id)n1 join (city join country on city.country_id=country.country_id)n2 on n1.city_id=n2.city_id)n3 join (select payment_id, rental.customer_id, rental.rental_id, amount from(payment join rental on payment.rental_id=rental.rental_id))n4 on n3.customer_id=n4.customer_id) group by country order by country;
