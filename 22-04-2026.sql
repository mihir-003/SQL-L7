-- functions =>
-- Block of Code => that is perform a task
-- user defined function, pre defined function
-- predefined function =>
-- string, date, number

use sakila;

select first_name, lower(first_name) from customer;

-- length => byte => 1 character 1 byte
-- char length => no. of character
select first_name, lower(first_name), length(first_name), char_length(first_name) from customer;

-- concat
select first_name, concat('Mrs', ' ', first_name, ' ', 'Sharma') from customer;

select first_name, concat_ws('@', 'Mrs', first_name, 'Sharma') from customer;

-- substr
select first_name, email, substr(email, 1) from customer;