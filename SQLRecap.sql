CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(100),
    Department VARCHAR(100),
    StartDate DATE,
    Salary DECIMAL(10, 2)
);
INSERT INTO Employees (FirstName, LastName, Position, Department, StartDate, Salary)
VALUES 
('John', 'Doe', 'Software Engineer', 'IT', '2022-01-15', 70000.00),
('Jane', 'Smith', 'Data Analyst', 'Business Intelligence', '2021-05-23', 65000.00),
('Robert', 'Johnson', 'Project Manager', 'Operations', '2019-09-10', 90000.00),
('Emily', 'Davis', 'HR Specialist', 'Human Resources', '2020-02-18', 60000.00),
('Michael', 'Brown', 'Network Engineer', 'IT', '2023-03-01', 75000.00),
('Linda', 'Wilson', 'Marketing Manager', 'Marketing', '2018-11-15', 85000.00),
('David', 'Taylor', 'Accountant', 'Finance', '2017-07-30', 55000.00),
('Susan', 'Anderson', 'Sales Executive', 'Sales', '2021-08-22', 65000.00),
('James', 'Thomas', 'Product Manager', 'Product', '2020-12-01', 90000.00),
('Patricia', 'Jackson', 'UX Designer', 'Design', '2022-06-10', 72000.00),
('Charles', 'White', 'DevOps Engineer', 'IT', '2019-04-25', 78000.00),
('Jennifer', 'Harris', 'Legal Advisor', 'Legal', '2016-01-11', 80000.00),
('Matthew', 'Martin', 'Content Writer', 'Content', '2020-10-18', 53000.00),
('Mary', 'Garcia', 'Business Analyst', 'Business Intelligence', '2021-11-05', 69000.00),
('William', 'Martinez', 'Customer Support', 'Support', '2018-03-20', 47000.00);
