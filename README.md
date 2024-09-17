1. En yüksek maaş alan çalışanın bilgilerini getirin.
SELECT * FROM Employees
ORDER BY Salary DESC
LIMIT 1;
2. Departman bazında en düşük maaşı alan çalışanları getirin.
SELECT * FROM Employees e
WHERE Salary = (
    SELECT MIN(Salary) 
    FROM Employees 
    WHERE Department = e.Department
);

3. 2020 yılı ve sonrasında işe başlayan çalışanların isimlerini ve pozisyonlarını listeleyin.
SELECT FirstName, LastName, Position 
FROM Employees 
WHERE StartDate >= '2020-01-01';

4. Her bir departmandaki toplam çalışan sayısını ve ortalama maaşı hesaplayın.
SELECT Department, COUNT(*) AS EmployeeCount, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;

5. Aynı pozisyonda çalışan ve aynı maaşı alan çalışanları getirin.
SELECT FirstName, LastName, Position, Salary 
FROM Employees
WHERE Salary IN (
    SELECT Salary 
    FROM Employees 
    GROUP BY Position, Salary 
    HAVING COUNT(*) > 1
);

6. Her departmanda maaşı departman ortalamasının üzerinde olan çalışanları listeleyin.
SELECT FirstName, LastName, Department, Salary 
FROM Employees e1
WHERE Salary > (
    SELECT AVG(Salary) 
    FROM Employees e2 
    WHERE e1.Department = e2.Department
);

-- 7. En az iki yıl çalışmış olan çalışanların listesini getirin.
SELECT FirstName, LastName, DATEDIFF(CURDATE(), StartDate)/365 AS YearsWorked
FROM Employees
WHERE DATEDIFF(CURDATE(), StartDate) >= 730;

-- 8. Departman bazında maaş aralıklarını (en düşük ve en yüksek) listeleyin.
SELECT Department, MIN(Salary) AS MinSalary, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Department;

-- 9. Her departmandaki pozisyon sayısını ve bu pozisyonlardaki toplam çalışan sayısını getirin.
SELECT Department, Position, COUNT(*) AS PositionCount
FROM Employees
GROUP BY Department, Position;

-- 10. İşe giriş tarihi en eski olan ilk 5 çalışanın bilgilerini getirin.
SELECT * FROM Employees
ORDER BY StartDate ASC
LIMIT 5;
