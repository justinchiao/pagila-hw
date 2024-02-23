/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */

select * from (select last_name,count(*) as last_name_count from actor
group by last_name) n1
where last_name_count > 1
order by last_name_count desc;
