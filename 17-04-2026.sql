use sakila;

select * from customer;

select * from customer where address_id = 6;
-- Range of values filter => between
select * from customer where customer_id between 2 and 5; -- range lower to higher
select * from customer where customer_id between 10 and 10;
select * from customer where first_name between 'Lisa' and 'Patricia';
select * from customer where address_id between 1 and 6;
-- In => specific values
select * from customer where customer_id in (2,5);
select * from customer where first_name in ('Lisa', 'Patricia');
-- OR
select * from customer where customer_id = 2 or customer_id >= 7;
select * from customer where first_name = 'Marion' and store_id = 2;

