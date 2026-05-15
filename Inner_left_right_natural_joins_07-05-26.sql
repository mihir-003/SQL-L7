
use regexjoin;

insert into orders values (109,99,'Ice-Cream');


-- Inner Join : Returns only matching rows from both tables.
select *
from customers
inner join orders
on customers.customer_id = orders.customer_id;

-- Left Join : All rows from the left table, Matching rows from the right table
select *
from customers
left join orders
on customers.customer_id = orders.customer_id;

-- Right Join : All rows from the right table, Matching rows from left table
select *
from customers
right join orders
on customers.customer_id = orders.customer_id;

-- Null
select customers.customer_id, customers.customer_name, orders.product_name
from customers
left join orders
on customers.customer_id = orders.customer_id
where product_name is null;

-- Not Null
select customers.customer_id, customers.customer_name, orders.product_name
from customers
left join orders
on customers.customer_id = orders.customer_id
where product_name is not null;

-- Natural Join
select customers.customer_id, customers.customer_name, orders.product_name
from customers
natural join orders;
