use sakila;

select first_name, department, salary from employees
order by department, salary;

-- function. => multi-row function
-- applied on multiple row => gives 1 output

-- distinct
select distinct(department) from employees;
select distinct department, salary from employees;

-- calculation on your data => aggregate function

-- count()
select count(department) from employees;
select count(department), count(distinct(department)) from employees;
select count(salary) from employees; -- when we use aggregate function, we cannot use any column directly 

select count(district), count(address_id), count(address2) from address;

-- sum, count, avg, max, min
select sum(salary), count(salary), avg(salary), max(salary), min(salary) from employees;
select sum(salary), sum(distinct salary) from employees;

-- what is group by?