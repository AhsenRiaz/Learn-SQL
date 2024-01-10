SELECT first_name, last_name,
CASE
	WHEN salary > 100000 THEN 'AWESOME'
	WHEN salary BETWEEN 50000 AND 90000 THEN 'GREAT'
	ELSE 'GOOD'
END
FROM employee;

-- query to raise salary of Stanley and Andy to 20 and 14 percent, 
-- other employees will get only 3 percent salary raise
SELECT first_name , last_name , salary,
CASE
	WHEN first_name = 'Stanley' THEN salary + (salary * .20)
	WHEN first_name = 'Andy' THEN salary + (salary * .14)
	ELSE salary + (salary * .02)
END AS raised_salary
FROM employee;