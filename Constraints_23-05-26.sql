

create database const_db;

use const_db;

select database();

create table test1(id int, age int);
insert into test1 values(101, 32),
						(102, 75),
                        (103, 86),
                        (104, null);

select * from test1;

-- Constraints are rules applied to table column to prevent invalid data in the table;


create table test3(id int unique, age int);
insert into test3 values(101, 32),
						(102, 75),
                        (103, 86),
                        (104, null);
                        
                        
create table test4(id int default 100, age int);
insert into test4 (age) values(20);

select * from test4;

-- primary key
create table test5(id int primary key, age int);
insert into test5 values(101, 79),
						(102, 73),
                        (103, 23),
                        (104, 53);

select * from test5;

create table test6(id int, age int, primary key(id, age));
insert into test6 values(101, 79),
						(102, 73),
                        (103, 73),
                        (104, 53);

select * from test6;

desc test6;


create table test7(id int primary key, age int check (age > 18));
insert into test7 values(101, 90),
						(102, 73),
                        (103, 23),
                        (104, 53);

select * from test7;

-- foreign key

create table s_class(cname varchar(20) primary key);
insert into s_class values(10), (8), (9);

create table student(id int, name varchar(20), cname varchar(20), foreign key (cname) references s_class(cname));
insert into student values(1, 'naina', '10');


select * from student;
select * from s_class;