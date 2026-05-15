use sakila;

select * from actor;
select * from film_actor;
select * from film;

-- select actor id, full name and film id
-- get the film id the film title and the actor id
-- find the actor id , actor name and the movie he has worked
-- find theactor id, actor name and only for the movie whose length is greater than 120 min
-- get the actor id , actor name, and the total no. of movies he has worked
-- get the film title and the no. of actor that has worked on that film

-- select actor id, full name and film id
select a.actor_id, concat(first_name,' ', last_name) as full_name, fa.film_id
from actor as a
join film_actor as fa
on a.actor_id = fa.actor_id;

-- get the film id the film title and the actor id
select fa.actor_id, fa.film_id, f.title
from film_actor as fa
join film as f
on fa.film_id = f.film_id;

-- find the actor id , actor name and the movie he has worked
select actor_id, concat(first_name,' ', last_name), title
from actor as a
join film as f
on