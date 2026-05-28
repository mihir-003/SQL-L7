

select * from mysql.user;

create user max identified by '123';

select current_user();

create database testdb4;
use testdb4;

create table emp(id int, name varchar(20));
insert into emp values(20, 'abhi'), (21, 'naina');
select * from emp;

show grants for max;

grant select on testdb4.emp to max;
grant delete on testdb4.emp to max;

-- also create one more table 
-- revoke this delete previledge from the max user
-- give select and insert previledge to a particular table
-- create a table with three column and insert at least 2 row
-- now give one column access to the select statement and also give thw update previledge to the second and third column
-- remove all the previledges from this max user


create table department(id int, dept varchar(20));
insert into department values(21, 'HR'), (22, 'IT'), (23, 'Finance'), (24, 'Marketing');
select * from department;


grant delete on testdb4.department to max;
revoke delete on testdb4.department from max;

grant select on testdb4.department to max;
grant insert on testdb4.department to max;

create table Hospital(id int, name varchar(20), disease varchar(50));
insert into Hospital values(111, 'ajay', 'Fever'), (222, 'jay', 'Joint pain');
select * from Hospital;

grant select(id) on testdb4.Hospital to max;
grant update(name) on testdb4.Hospital to max;
grant update(disease) on testdb4.Hospital to max;
-- revoke * on testdb4.Hospital from max;

-- create three users and create a group/roll(sales)
-- give permission select, insert, update to roll
-- add user into the rollback
-- login in roll and check permission granted or not

create user max2 identified by '123';
create user max3 identified by '123';