
-- TCL => (Transaction Control Language)
--  Transaction => Transaction are the group of sql state ment which work as a unit.
-- This TCL command is ensure my datat is correct by following four properity:
-- ACID Properity
-- 1. Atomicity
-- 2. Consistency
-- 3. Isolation
-- 4. Durability


create database rajdb;
use rajdb;
create table raj45(id int);
insert into raj45 values(10);
select * from raj45;

-- TCL
start transaction;
insert into raj45 values(100), (99);
select * from raj45;
commit;

-- start transaction
-- transaction end :  commit, rollback, ddl statement

start transaction;
update raj45 set id = 500;
SET SQL_SAFE_UPDATES = 0;
select * from raj45;


start transaction;
insert into raj45 values(12), (35), (56);
delete from raj45 where id = 4;
select * from raj45;
rollback;

select * from raj45;
start transaction;
insert into raj45 values(120), (350), (560);
select * from raj45;

savepoint raj45_savepoint;
update raj45 set id = 1000;
rollback to raj45_savepoint;
commit;
select * from raj45;

