-- XXXXXX NESTED QUERIES XXXXXX

-- find the names of all employees who have sold over 30,000 worth to a client
SELECT employee.first_name
FROM employee
WHERE employee.emp_id  IN (
SELECT works_with.emp_id
FROM works_with
WHERE works_with.total_sales > 30000
);

-- find all the clients who are handles by the branch 
-- that Michael Scott manages
-- Assume you know Michael's employee id 

SELECT client.client_name 
FROM client
WHERE client.branch_id = (
SELECT branch.branch_id 
FROM branch 
WHERE branch_id = 102
);
