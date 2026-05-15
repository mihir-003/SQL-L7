use sakila;

#  if(condition, True Statement, False Statement)
select first_name, department, salary, if(department='IT', salary + 10000, salary - 10000)
from employees;

select first_name, department, salary, if(department ='IT', salary + 10000, if(department = 'HR', salary + 5000, salary))
from employees;

/*
select col1, col2,
case
	when condition then statement
end
from table_name
*/

select first_name, department, salary,
case
	when department='IT' then 'A'
    when department='HR' then 'B'
    else 'C'
end as Category
from employees;

-- if the hiring date of an employee is before the year 2020 print add senior also in front of job_title, if the year is 2021 print associate
select first_name, job_title, hire_date,
case 
	when year(hire_date) < 2020 then concat('Senior', ' ', job_title)
    when year(hire_date) >= 2020 then concat('Associate', ' ', job_title)
    end as qw
from employees;

-- if the salary is > then 70000 create a category name as average salary, 
-- if the salary is > 80000 high salary, 
-- if salary is > than 100000 then extreme high salary 
-- otherwise print category name as low salary

select first_name, department, salary,
case
	when salary >= 70000 and salary < 80000 then 'Average Salary'
    when salary >= 80000 and salary <100000 then 'High Salary'
    when salary >= 100000 then 'Extreme High Salary'
    else 'Low Salary'
end as Category
from employees;

-- select the job title and print the colm value based on colm condition

select job_title, count(job_title),
case
	when count(job_title)=1 then concat(job_title, 'Position have', count(job_title), 'person')
    when count(job_title)>1 then concat(job_title, 'Position have', count(job_title), 'persons')
end as q
from employees
group by job_title;


-- What is super key?
-- What is primary key?
-- What is foreign key?
-- what is normalization?
-- what is 1 nf?