/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

select first_name, last_name, sum from(
    (select staff_id, sum(amount) from payment where payment_date < '2020-02-01' group by staff_id)n1
    inner join staff
        on n1.staff_id = staff.staff_id)
order by sum;
