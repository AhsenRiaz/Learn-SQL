-- CTEs are essentially a way to structure and simplify complex queries, allowing you to break down a query into more readable and manageable parts. They are especially useful for situations where a subquery or derived table is needed.

-- Common Table Expressions (CTEs) in SQL are not saved in a database permanently like tables or views. They are temporary result sets that exist only for the duration of the query in which they are defined. Once the query execution is complete, the CTE is discarded, and it doesn't persist in the database.

WITH CTE_Employee AS (
SELECT first_name , last_name , salary,
CASE
	WHEN first_name = 'Stanley' THEN salary + (salary * .20)
	WHEN first_name = 'Andy' THEN salary + (salary * .14)
	ELSE salary + (salary * .02)
END AS raised_salary
FROM employee
)

SELECT first_name from CTE_Employee;

