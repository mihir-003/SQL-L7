
-- Self join

create database joindb;

use joindb;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    manager_id INT,
    salary INT
);

INSERT INTO employees (emp_id, emp_name, department, manager_id, salary) VALUES
(1, 'Amit', 'Management', NULL, 120000),
(2, 'Neha', 'HR', 1, 75000),
(3, 'Raj', 'IT', 1, 90000),
(4, 'Simran', 'Finance', 1, 85000),
(5, 'Karan', 'IT', 3, 70000),
(6, 'Priya', 'IT', 3, 72000),
(7, 'Rohit', 'HR', 2, 50000),
(8, 'Anjali', 'HR', 2, 52000),
(9, 'Vikas', 'Finance', 4, 65000),
(10, 'Sneha', 'Finance', 4, 62000),
(11, 'Arjun', 'IT', 5, 55000),
(12, 'Pooja', 'IT', 5, 53000),
(13, 'Meera', 'HR', 7, 45000),
(14, 'Dev', 'Finance', 9, 48000),
(15, 'Nitin', 'IT', 6, 51000);


select * from employees;


/*

Amit
 ├── Neha
 │    ├── Rohit
 │    │     └── Meera
 │    └── Anjali
 │
 ├── Raj
 │    ├── Karan
 │    │     ├── Arjun
 │    │     └── Pooja
 │    └── Priya
 │           └── Nitin
 │
 └── Simran
      ├── Vikas
      │     └── Dev
      └── Sneha

*/

-- employee.manager_id = manager.emp_id

select emp.emp_id, emp.emp_name, emp.manager_id, mngr.emp_id, mngr.emp_name
from employees as emp
join employees as mngr
on emp.manager_id = mngr.emp_id;

-- you need to find that employee chose department is same as the department of its manager
select emp.emp_id, emp.emp_name, emp.manager_id, emp.department, m.emp_id, m.emp_name, m.department
from employees as emp
join employees as m
on emp.emp_id = m.emp_id and emp.department = m. department;

-- you need to find emp name and its salary if it is > than the salary of its manager.
select e.emp_id, e.emp_name, e.manager_id, e.salary, m.emp_id, m.emp_name, m.salary
from employees as e
join employees as m
on e.emp_id = m.emp_id and e.salary = m.salary
where e.salary > m.salary;

-- show all the emp name with all the manager name
-- show emp and its grand manager
-- find the employees who are also a manager

select e.emp_id, e.emp_name, e.manager_id, m.emp_id, m.emp_name
from employees as e
join employees as m
on e.manager_id = m.emp_id;

select e.emp_name, m.emp_name, gm.emp_name
from employees as e
join employees as m
on e.manager_id = m.emp_id
join employees as gm
on m.manager_id = gm.emp_id;

select e.emp_name, m.emp_name
from employees as e
join employees as m
on e.emp_id = m.emp_id and e.manager_id = m.emp_id;