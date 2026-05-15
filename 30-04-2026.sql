use sakila;

select * from employees;
select sum(salary), count(salary)
from employees
where department = 'finance';

-- group by is a statement used to group similar value
select department, count(department), sum(salary), avg(salary)
from employees
group by department
having count(department) > 4;

-- from these payment table find the total amount and average amount
-- from this payment table find total no. of transaction done by cutomerid 1
-- find the total no. of transaction done by customer id 2 and 5
-- find the average amount spent in the year 2005

select * from payment;

select sum(amount), avg(amount)
from payment;

select count(customer_id)
from payment
where customer_id = 1;

 select count(customer_id)
 from payment
 where customer_id = 2 or customer_id = 5;
 
 select avg(amount)
 from payment
 where year(payment_date) = 2005;
 
 -- find the total transaction done by each customer id
 -- find now also get the total transaction and the total amount spend after customer id 3
 -- find the occurance for each amount value 
 -- find the total amount given in your table
 -- find the average amount spent by each staff 
 -- find the total amount spent in each month
 -- get the total amount spent for each month of each year
 
 select * from payment;
 
  -- find the total transaction done by each customer id
  select distinct(customer_id), count(customer_id), sum(amount)
  from payment
  group by customer_id;
  
 -- find now also get the total transaction and the total amount spend after customer id 3 
 select distinct(customer_id), count(customer_id), sum(amount)
 from payment
 where customer_id >= 3
 group by customer_id;
 
 -- find the occurance for each amount value 
 select distinct(amount),count(amount)
 from payment
 group by amount;
 
 -- find the total amount given in your table
 select sum(amount)
 from payment;
 
  -- find the average amount spent by each staff 
  select distinct(customer_id), avg(amount)
  from payment
  group by customer_id;
 
 -- find the total amount spent in each month
 select sum(amount), month(payment_date) as mon
 from payment
 group by mon;
 
 -- get the total amount spent for each month of each year
 select sum(amount), month(payment_date) as m, year(payment_date) as y
 from payment
 group by m,y;