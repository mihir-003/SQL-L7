use sakila;

CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    region VARCHAR(50),
    product VARCHAR(50),
    sales_person VARCHAR(50),
    amount DECIMAL(10,2),
    sale_date DATE
);

INSERT INTO sales (region, product, sales_person, amount, sale_date) VALUES
('North', 'Laptop', 'Amit', 55000, '2025-01-05'),
('North', 'Mobile', 'Amit', 20000, '2025-01-06'),
('South', 'Laptop', 'Ravi', 60000, '2025-01-07'),
('East', 'Tablet', 'Suman', 15000, '2025-01-08'),
('West', 'Laptop', 'Neha', 58000, '2025-01-09'),

('North', 'Tablet', 'Amit', 12000, '2025-01-10'),
('South', 'Mobile', 'Ravi', 22000, '2025-01-11'),
('East', 'Laptop', 'Suman', 50000, '2025-01-12'),
('West', 'Tablet', 'Neha', 14000, '2025-01-13'),
('North', 'Laptop', 'Amit', 57000, '2025-01-14'),

('South', 'Tablet', 'Ravi', 13000, '2025-01-15'),
('East', 'Mobile', 'Suman', 21000, '2025-01-16'),
('West', 'Laptop', 'Neha', 61000, '2025-01-17'),
('North', 'Mobile', 'Amit', 19000, '2025-01-18'),
('South', 'Laptop', 'Ravi', 62000, '2025-01-19'),

('East', 'Tablet', 'Suman', 16000, '2025-01-20'),
('West', 'Mobile', 'Neha', 23000, '2025-01-21'),
('North', 'Tablet', 'Amit', 11000, '2025-01-22'),
('South', 'Mobile', 'Ravi', 25000, '2025-01-23'),
('East', 'Laptop', 'Suman', 52000, '2025-01-24'),

('West', 'Tablet', 'Neha', 13500, '2025-01-25'),
('North', 'Laptop', 'Amit', 59000, '2025-01-26'),
('South', 'Tablet', 'Ravi', 12500, '2025-01-27'),
('East', 'Mobile', 'Suman', 20500, '2025-01-28'),
('West', 'Laptop', 'Neha', 60000, '2025-01-29'),

('North', 'Mobile', 'Amit', 21000, '2025-01-30'),
('South', 'Laptop', 'Ravi', 63000, '2025-01-31'),
('East', 'Tablet', 'Suman', 17000, '2025-02-01'),
('West', 'Mobile', 'Neha', 24000, '2025-02-02'),
('North', 'Tablet', 'Amit', 12500, '2025-02-03'),

('South', 'Mobile', 'Ravi', 26000, '2025-02-04'),
('East', 'Laptop', 'Suman', 54000, '2025-02-05'),
('West', 'Tablet', 'Neha', 15000, '2025-02-06'),
('North', 'Laptop', 'Amit', 61000, '2025-02-07'),
('South', 'Tablet', 'Ravi', 14000, '2025-02-08');


select * from sales;

-- mobile total sales
select sum(amount)
from sales
where product = 'mobile';

select *
from sales;

-- find total sales and average sales for north region but for the product laptop and mobile
select sum(amount), avg(amount)
from sales
where region = 'north' and (product = 'laptop' or product = 'mobile');

-- you need to find out the maximum amount and the minimum amount for the feb month
select max(amount), min(amount)
from sales
where month(sale_date) = 2;

-- find out the total sales we have done foe each region
-- find out the avg sales done vy each person
-- find the total amount an the total transaction done for each product but the amit shoould not be the sales person
-- find the no. of sales done by each person for amount > 10000
-- find the no.  of transactions done from day 1 to day 7 for any month
-- find the total amount , avg amount, max amount for each product for each region
-- find the total transaction amount for each product where the product should be sold more than 13 times
select *
from sales;

-- find out the total sales we have done foe each region
select distinct(region), sum(amount)
from sales
group by region;

-- find out the avg sales done vy each person
select sales_person, avg(amount)
from sales
group by sales_person;

-- find the total amount and the total transaction done for each product but the amit shoould not be the sales person
select product, sum(amount), count(amount)
from sales
where sales_person != 'amit' 
group by product;

-- find the no. of sales done by each person for amount > 10000
select sales_person, count(sales_person)
from sales
where amount > 10000
group by sales_person;

-- find the no.  of transactions done from day 1 to day 7 for any month
select count(amount), sale_date
from sales
where day(sale_date) between 1 and 7
group by sale_date;

-- find the total amount , avg amount, max amount for each product for each region
select product, region, sum(amount), avg(amount), max(amount)
from sales
group by product, region;

-- find the total transaction amount for each product where the product should be sold more than 13 times
select product, count(product), count(amount)
from sales
where count(product) > 12
group by product;

use employees;
select * from employees;