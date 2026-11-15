
-- Employee Database Analysis
-- Project 1: Basic SQL Queries

-- Create Employee Table
CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Salary INT,
    City VARCHAR(50)
);

-- Insert Sample Data
INSERT INTO Employees VALUES
(1, 'Rahul', 'IT', 45000, 'Hyderabad'),
(2, 'Priya', 'HR', 35000, 'Bangalore'),
(3, 'Arjun', 'IT', 55000, 'Hyderabad'),
(4, 'Sneha', 'Finance', 40000, 'Chennai'),
(5, 'Kiran', 'HR', 30000, 'Hyderabad'),
(6, 'Anjali', 'IT', 60000, 'Pune');

-- 1. Display all employees
SELECT * FROM Employees;

-- 2. Find employees working in IT
SELECT * FROM Employees
WHERE Department = 'IT';

-- 3. Find employees earning above 40000
SELECT * FROM Employees
WHERE Salary > 40000;

-- 4. Calculate average salary
SELECT AVG(Salary) AS AverageSalary
FROM Employees;

-- 5. Count employees by department
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department;

-- 6. Find highest salary
SELECT MAX(Salary) AS HighestSalary
FROM Employees;

-- 7. Display employees based on salary
SELECT *
FROM Employees
ORDER BY Salary DESC;

-- 8. Find lowest salary
SELECT MIN(Salary) AS LowestSalary
FROM Employees;

-- 9. Find employees from Hyderabad
SELECT *
FROM Employees
WHERE City = 'Hyderabad';

-- 10. Find employees earning between 35000 and 55000
SELECT *
FROM Employees
WHERE Salary BETWEEN 35000 AND 55000;
-- 11. Employees earning above average salary
SELECT *
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

-- 12. Find HR employees
SELECT *
FROM Employees
WHERE Department = 'HR';
