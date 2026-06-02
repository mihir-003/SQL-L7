
-- CTE -> Common Table Expression
-- Storing a result on a temporary

-- sql precedence  : from, where, group by, having, select, distinct, order by, limit / offset.

use sakila;

with test as
(select actor_id, count(film_id) as moviescount
from film_actor
group by actor_id)

select sum(moviesCount) from test where actor_id > 10;

use windowsdb;

select * from
( select *, max(salary) over(partition by dept) as deptMax from employees) as temp
where salary=deptMax;

-- below is with cte
with cte as
(select *, max(salary) over(partition by dept) as deptMax from employees)
select * from cte where salary=deptMax;

-- with xyz as(
-- select dept, max(salary) as deptMax from employees group by dept)
-- select * from employees join xyz on employees.department