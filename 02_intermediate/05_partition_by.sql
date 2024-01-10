-- join tables and fetch firstname, lastname, salary, gender along with total gender column

-- PARTITION BY is useful when you need to perform separate calculations within each group and analyze the result set in more detail. On the other hand, GROUP BY is more suitable for summarizing data and performing aggregation operations on groups.

SELECT FirstName, LastName, Gender, Salary, 
COUNT(GENDER) OVER (PARTITION BY Gender) as TotalGender
FROM EmployeeDemoGraphics AS dem
JOIN EmployeeSalary AS sal
ON dem.employeeId == sal.employeeId