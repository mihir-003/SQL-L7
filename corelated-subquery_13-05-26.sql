use shadidb;

create table departments(
 dept_id int,
 dept_name varchar(20),
 location varchar(20));
 
 insert into departments values( 10,"hr","mummbai"),(20,"it","banglore"),(30,"finance","delhi");
 
 select * from employees;
 select * from departments;
 
 -- find out those persons who have the department delhi and banglore location.
 select * from employees where department =any (select dept_name from departments where location in ('banglore', 'delhi'));
 
 -- corelated sub query
 -- corelated sub query is a type of sub query where inner query is executed for each value of the outer query
 -- inner query also refer to the column of outer query
 
 select * from employees;
 
 select max(salary) from employees where department ='IT';
 select * from employees as eout where salary = (select max(salary) from employees where department = eout.department);
 
 
 -- find the department where all employees earn above 70000
 select * from employees as e1 where 70000 <all (select salary from employees where department = e1.department);
 