
-- Recursive CTE
-- It is a sql query that repeats itself until the condition is met

-- UNION : Combines all rows from both queries and removes duplicate rows from the final output.
select *
from sakila.actor
where actor_id between 1 and 3
union
select *
from sakila.actor
where actor_id in (3,5);

-- UNION ALL : Combines all rows from both queries but retains all duplicates.
select *
from sakila.actor
where actor_id between 1 and 3
union all
select *
from sakila.actor
where actor_id in (3,5);

-- INTERSECT : Returns only the distinct rows that exist in the results of both queries
select *
from sakila.actor
where actor_id between 1 and 3
intersect
select *
from sakila.actor
where actor_id in (3,5);

-- EXECPT / MINUS : Returns rows from the first query that are not present in the second query
select *
from sakila.actor
where actor_id between 1 and 3
Except
select *
from sakila.actor
where actor_id in (3,5);


with recursive cte as
(select 1 as n
union all
select n + 1 from cte
where n < 100 )
select * from cte;


create table employees3(emp_id int, emp_name varchar(50), manager_id int);
insert into employees3 values(1, 'CEO', Null),
(2, 'John', 1),
(3, 'Mary', 1),
(4, 'David', 2),
(5, 'Lisa', 2),
(6, 'Tom', 4);

select * from employees3;

with recursive cte as 
(select emp_id as bid, emp_name as bname, emp_name as hi from employees3 where manager_id is null

union all

select emp.emp_id, emp.emp_name, concat(emp_name, '->', cte.hi) as heirarchy
from employees3 as emp
join cte where emp.manager_id = cte.bid)
select * from cte;

-- What are indexes? why we use it.
-- what is the use of explain keyword?
-- what is clustered index and what is non-clustered index?

