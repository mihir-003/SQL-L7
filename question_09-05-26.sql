create database joinpractice;

use joinpractice;


CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    manager_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);



INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Sales');



INSERT INTO employees VALUES
(101, 'Alice', 70000, 1, NULL),
(102, 'Bob', 60000, 2, 101),
(103, 'Charlie', 55000, 2, 102),
(104, 'David', 50000, 3, 101),
(105, 'Eva', 45000, 4, 104),
(106, 'Frank', 75000, 1, 101),
(107, 'Grace', 80000, 2, 102),
(108, 'Helen', 62000, 3, 104),
(109, 'Ian', 47000, 4, 105),
(110, 'Jack', 53000, 2, 102),
(111, 'Kevin', 49000, 3, 104),
(112, 'Laura', 72000, 1, 101),
(113, 'Mike', 58000, 4, 105),
(114, 'Nina', 61000, 2, 107),
(115, 'Oscar', 52000, NULL, 101);

select * from employees;
select * from departments;

-- Display employee names along with their department names.
select emp_name, dept_name
from employees as e
join departments as d
on e.dept_id = d.dept_id;

-- Display all employees and their department names, including employees without departments
select emp_name, dept_name
from employees as e
left join departments as d
on e.dept_id = d.dept_id ;

-- Find the number of employees in each department.
select dept_name, count(emp_name)
from employees as e
join departments as d
on e.dept_id = d.dept_id
group by dept_name;


-- Display all departments and the total salary paid in each department.
select dept_name, sum(salary)
from employees as e
join departments as d
on e.dept_id = d.dept_id
group by dept_name;

-- Find how many employees report to each manager.
select e.manager_id, count(*)
from employees as e
join employees as m
on e.manager_id = m.manager_id
group by manager_id;

-- Display average salary department-wise where average salary is greater than 60000. | dept_name | avg_salary |
select dept_name, avg(salary)
from employees as e
join departments as d
on e.dept_id = d.dept_id
group by dept_name
having avg(salary) > 60000;