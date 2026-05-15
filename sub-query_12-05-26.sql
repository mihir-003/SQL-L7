use shadidb;

-- Create Table
CREATE TABLE Employees (
EMP_ID INT PRIMARY KEY,
NAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY INT,
MANAGER_ID INT
);

-- Insert Data
INSERT INTO Employees (EMP_ID, NAME, DEPARTMENT, SALARY, MANAGER_ID) VALUES
(101, 'Alice', 'HR', 50000, NULL),
(102, 'Bob', 'IT', 80000, 101),
(103, 'Charlie', 'IT', 75000, 101),
(104, 'Diana', 'Finance', 90000, NULL),
(105, 'Eve', 'HR', 48000, 101),
(106, 'Frank', 'Finance', 95000, 104),
(107, 'Grace', 'IT', 82000, 101);

select * from employees;

select min(salary) from employees;
select * from employees where salary = (select min(salary) from employees);

select * from employees where name = 'alice' or name = 'bob';
select * from employees where department in (select department from employees where name = 'alice' or name = 'bob');

select salary from employees where emp_id != 103 or emp_id != 105;
select * from employees where salary > any (select salary from employees where emp_id = 103 or emp_id = 107);

select salary from employees where department = 'hr';
select * from employees where salary > any(select salary from employees where department = 'hr');

select * from employees where salary > all(select salary from employees where department = 'it');

-- find the emp detail to works in it department and have the salary > the salary of emp_id 101
-- find the name of a person whose salary is > than all the salary of 'hr' or 'it' department
-- find the emp_id and the emp_name of the users whose salary is > than the salary of any emp working under the manager_id 101
-- find the second highest salary from the table

-- ques: 1	find the emp detail to works in it department and have the salary > the salary of emp_id 101
select salary from employees where department = 'it' or emp_id = 101;
select * from employees where department = 'it' and salary > any(select salary from employees where emp_id = 101);

-- ques: 2	find the name of a person whose salary is > than all the salary of 'hr' or 'it' department
select salary from employees where department = 'HR' or department = 'IT';
select * from employees where salary > all(select salary from employees where department = 'HR' or department = 'IT');

-- ques: 3	find the emp_id and the emp_name of the users whose salary is > than the salary of any emp working under the manager_id 101
select salary from employees where manager_id = 101;
select * from employees where salary > all(select salary from employees where manager_id = 101);

-- ques: 4	find the second highest salary from the table
select max(salary) from employees;
select max(salary) from employees where salary < (select max(salary) from employees);