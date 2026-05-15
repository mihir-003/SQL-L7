select current_user();

show databases; -- will show the all databases

use sakila;

show tables;

select * from customer;

select customer_id, first_name, customer_id from customer;

select * from payment;
select payment_id, amount from payment;

select * from customer;

select customer_id, customer_id*10-1+6 from customer;

select customer_id,Customer_id,CUSTOMER_ID from customer;  -- case insensitive

select first_name, last_name, email from customer
where customer_id=4;

select customer_id, first_name, last_name from customer where first_name = 'marion';

show databases;
