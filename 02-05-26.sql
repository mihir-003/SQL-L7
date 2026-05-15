use sakila;

select * from sales;

-- where clause is used to filter the data on gthe table
-- where clause cannot be applied on aggregate function
select product, sum(amount)
from sales
-- where sum(amount) > 200000;
group by product
having sum(amount) > 200000;

-- i need to find how many sales are done by each person
select sales_person, count(*)
from sales
group by sales_person;

-- find the total transcation done by each person in the desc order
select sales_person, count(amount)
from sales
group by sales_person
order by count(amount) desc;

select sales_person, product, count(amount)
from sales
group by sales_person, product
having sales_person = 'amit';

select sales_person, count(amount)
from sales
group by sales_person;

select sales_person, product, sum(amount)
from sales
group by sales_person, product;

select * from payment;

show databases;

show tables;

select year(payment_date), month(payment_date), sum(amount)
from payment
group by year(payment_date), month(payment_date);

