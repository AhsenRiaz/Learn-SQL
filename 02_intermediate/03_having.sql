-- query to group by employee and get average of their salary and then only get those
-- averages between 50000 to 80000

SELECT JobTitle, AVG(Salary)
FROM EmployeeDemoGraphics
JOIN EmployeeSalary
ON employee.employeeId == employeeSalary.employeeId
GROUP BY JobTitle
HAVING Salary > 50000 AND Salary < 80000
ORDER BY AVG(Salary)