CREATE DATABASE companydb;

USE companydb;

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO department (dept_id, dept_name)
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    hire_date DATE,
    city VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO employee (emp_id, emp_name, salary, dept_id, hire_date, city)
VALUES
(101, 'Aditi', 50000, 2, '2022-01-10', 'Pune'),
(102, 'Rahul', 40000, 1, '2021-07-23', 'Mumbai'),
(103, 'Sneha', 60000, 3, '2020-03-15', 'Delhi'),
(104, 'Karan', 45000, 2, '2023-05-05', 'Pune'),
(105, 'Meera', 70000, 3, '2022-11-18', 'Bangalore');


SELECT * FROM employee;
SELECT * FROM department;

--select
SELECT emp_name, salary FROM Employee;
SELECT emp_id, emp_name,city  FROM employee;

-- WHERE
SELECT * FROM employee WHERE city = 'Pune';
SELECT * FROM employee WHERE emp_id=104;

-- AND 
SELECT * FROM employee WHERE city = 'Pune' AND salary > 48000;
SELECT * FROM employee WHERE city = 'Pune' && salary > 48000;

-- OR
SELECT * FROM employee WHERE city = 'Delhi' OR salary < 50000;
SELECT * FROM employee WHERE city = 'Delhi' || salary < 50000;

-- LIKE
SELECT * FROM employee WHERE emp_name LIKE 'S%';   

-- BETWEEN
SELECT * FROM employee WHERE hire_date BETWEEN '2021-01-01' AND '2022-12-31';

--ORDER BY
SELECT emp_name, salary FROM employee ORDER BY salary;                  --default   
SELECT emp_name, salary FROM employee ORDER BY salary DESC; 

-- Difference = vs IN
SELECT * FROM employee WHERE city = 'Pune';                    --single values 
SELECT * FROM employee WHERE city IN ('Pune', 'Delhi');        -- multiple values

--limts
SELECT * FROM employee LIMIT 3;

--Aliasing
SELECT emp_name AS employee, salary AS Monthly_Salary FROM employee;

-- DISTINCT → remove duplicates
SELECT DISTINCT city FROM employee;




