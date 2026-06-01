
create database if not exists viewdb;
use viewdb;


CREATE TABLE departments (
    dept_id   INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id   INT PRIMARY KEY,
    name     VARCHAR(50),
    dept_id  INT,
    salary   DECIMAL(10,2),
    city     VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES
(1,'HR'), (2,'IT'), (3,'Finance');

INSERT INTO employees VALUES
(101,'Aman',    2, 70000, 'Jaipur'),
(102,'Priya',   1, 45000, 'Delhi'),
(103,'Rahul',   2, 90000, 'Mumbai'),
(104,'Sneha',   3, 55000, 'Jaipur'),
(105,'Vikram',  2, 30000, 'Pune');

select * from departments;
select * from employees;

-- Views
-- A view is a virtual table based on the result of a SQL Query.
-- It do not store any data.
-- It stores a query.

-- Views are used to give the access to specific rows or columns.
-- It is used to make complex query easier.
-- In views we can write joins, aggregations into a view.

create view dept_view as
select *
from departments
where dept_id < 3;
select * from dept_view;

select * from employees;
create view city_sum as
select city, sum(salary)
from employees
group by city;
select * from city_sum;

create view emp_2_col as
select emp_id, name
from employees;
select salary from emp_2_col;		-- Give Error

-- Insert View
insert into emp_2_col values(107, 'yash');
select * from emp_2_col;
select * from employees;

-- Delete View
delete from emp_2_col where emp_id = 107;
select * from emp_2_col;
select * from employees;

-- Update View
update emp_2_col
set name = 'Mihir' where emp_id = 103;
select * from emp_2_col;
select * from employees;

-- View Non-Updatable / Read Only
-- A View generally becomes non-updatable if its definition conatins any of the following:
-- Aggregate Function : SUM, AVG, COUNT, MIN, MAX
-- Group by or Having clauses
-- Distinct
-- Set Operation : UNION, INTERSECTION, EXCEPT/MINUS
-- Joins : 
-- Windows Function : 
-- Computed / Derived Columns : 


select count(emp_id)
from emp_2_col;

select * from employees;
select * from departments;

create view view_join as
select e.emp_id, e.name, d.dept_name
from departments as d
join employees as e
on d.dept_id = e.dept_id;
select * from view_join;

update view_join
set emp_id = 200, name = 'happy'
where emp_id = 105;

