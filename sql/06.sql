/*
 * List the last names of actors, as well as how many actors have that last name.
 * HINT:
 * Use the count() aggregation function and group by the actor's last name.
 */

select last_name,count(*) as last_name_count from actor
group by last_name
order by last_name_count desc;
