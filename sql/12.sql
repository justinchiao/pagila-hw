/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

select customer.customer_id, first_name, last_name, sum from(
    (select sum(amount), customer_id from payment group by customer_id)n1 inner join customer on n1.customer_id=customer.customer_id) order by last_name;
