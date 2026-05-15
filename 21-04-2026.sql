use sakila;

select * from customer;

-- function => code logic/task

select first_name, last_name, concat(first_name, ' ', last_name) from customer;
select * from customer
where concat(first_name, ' ', last_name) = 'mary smith';

-- import employee database, string all video