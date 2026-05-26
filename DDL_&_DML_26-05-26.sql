
use datatypedb;


-- ddl statement
create table test10(id int, name varchar(10));
insert into test10 values(1,'abhi'), (2, 'mihir'), (3, 'jay');
select * from test10;

-- ddl drop statement[drop will delete both database and structure]
drop table test10;	-- drop => drop table structure is dropped/ removed

-- truncate(ddl statement)
truncate test10; -- truncate => data is deleted but not the table structure

-- alter(add column)
alter table test10 add column (salary int default 18);

-- alter(drop column)
alter table test10 drop column salary;

-- alter(rename column)
alter table test10 rename column salary to newSalary;

-- alter(add constraint)
alter table test10 add constraint primary key(id);


desc test10;
select * from test10;

-- add a column before the name column
-- change the data type of name column to int
-- add a not null constraint to the name and age column
-- add a foreign key of a column name department_id which is refer to department

select * from sakila.actor;
select actor_id, first_name from sakila.actor;

-- Create table as select statement
create table maxx as select actor_id, first_name from sakila.actor;
select * from maxx;

-- DML(insert)
insert into maxx values(201, 'Japan');

-- DML(update)
update maxx set first_name = 'urvashi';
update maxx set first_name = 'raj' where actor_id = 2;
select * from maxx;

SET SQL_SAFE_UPDATES = 0;


-- DML(delete)
delete from maxx where actor_id = 4;
select * from maxx;

-- what is ddl and dml statement ?
-- diff between truncate, delete and drop ?
-- what is normalization ?
-- diff between char and varchar data type ?