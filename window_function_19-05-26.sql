
use windowsdb;

select * from employees;

select *, row_number() over(order by hire_year),  rank() over(order by hire_year), dense_rank() over(order by hire_year)
from employees;

select *, rank() over(partition by dept order by salary)
from employees;

select *, dense_rank() over(order by hire_year)
from employees;

select *
from employees as e
where salary = (select max(salary) from employees where dept = e.dept);

select *, max(salary) over(partition by dept)
from employees;

select *
from (select *, max(salary) over(partition by dept) as deptSalary from employees) as trh
where salary = deptSalary;

select *
from (select *, rank() over(partition by dept order by salary desc) as rnk from employees) as temp
where rnk=1;


-- Second highest salary
select *
from (select *, dense_rank() over(order by salary desc) as drnk from employees) as qw
where drnk = 2;

select max(salary) from employees where salary < (select max(salary) from employees);

-- select * from employees order by salary asc;
select *
from (select *, dense_rank() over(order by salary asc) as d from employees) as t
where d = 4;