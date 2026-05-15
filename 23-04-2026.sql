use sakila;

select * from customer;

-- string function

-- YYYY-MM-DD
select current_date();
select current_time();
select current_timestamp();
select current_timestamp(), now();

select payment_id, payment_date, now() from payment;

select payment_id, payment_date, adddate(payment_date, 5) from payment;
select payment_id, payment_date, adddate(payment_date, -5) from payment;

-- add month
select payment_id, payment_date, adddate(payment_date, interval 2 month) from payment;

-- add year
select payment_id, payment_date, adddate(payment_date, interval 2 year) from payment;

-- add hour
select payment_id, payment_date, adddate(payment_date, interval 2 hour) from payment;

-- date difference
select payment_id, datediff(now(), payment_date) from payment;

-- month function
select payment_id, payment_date, month(payment_date) from payment where month(payment_date) = 2;

-- year fuction
select payment_id, payment_date, year(payment_date) from payment where year(payment_date) = 2006;

-- Extract Function => extract date, month, year, quarter ... from column
select payment_date, extract(year from	payment_date) from payment;
select payment_date, extract(quarter from payment_date) from payment;

-- Date Format
select payment_date, date_format(payment_date, '%Y') from payment;
