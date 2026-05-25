
create database if not exists datatypedb;

use datatypedb;

-- numeric
create table test1(id tinyint);
insert into test1 values(-1), (10);
insert into test1 values(-129);	-- out of range (1 byte => 8 bit => 2**8 (-128 to 127)
select * from test1;

create table test2(age tinyint unsigned);
insert into test2 values(200);
select * from test2;

-- small int => 2 byte medium int => 3 byte
-- int => 4 byte
-- big int => 8 byte

create table test3(salary float, salary2 double);
insert into test3 values(1989.6743276, 1989.7832478);
select * from test3;

create table test4(price double(6, 2));	-- total is 6,2 is decimal value, 4 are the value before
insert into test4 values(9999.89778324);	-- only 2 decimal value
insert into test4 values(99999);	-- 5 integer values
select * from test4;

create table test5(CountryCode char(3));
insert into test5 values('IND');
insert into test5 values('INDIA');	-- <<------ERROR
insert into test5 values('he           ');	-- <<--------didn't count spaces
select * from test5;

create table test6(CountryCode varchar(3));
insert into test6 values('IND');
insert into test6 values('INDIA');
insert into test6 values('H         ');
select *, char_length(countrycode) from test6;

