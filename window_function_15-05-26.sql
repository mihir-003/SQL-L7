-- Windows Function : A window function perform the calculation on multiple rows and give you the output for each row.

use shadidb;
 select * from employees;
 
 select emp_id, name, avg(salary) over()
 from employees;
 
 select emp_id, name, salary, max(salary) over()
 from employees;
 
 select emp_id, name, salary, sum(salary) over(), concat(round((salary/sum(salary) over()) * 100 ), '%')
 from employees;
 
 select emp_id, name, salary, sum(salary) over(order by salary desc)
 from employees;
 
 select emp_id, name, department, salary, sum(salary) over(order by department)
 from employees;