-- find all the branches and the names of their managers

INSERT INTO branch VALUES(4, 'Riverlake', NULL, NULL);


-- Inner join (from -> left table || join -> right table)
SELECT employee.emp_id ,
employee.first_name AS Manager,
branch.branch_name AS Branch
FROM employee 
JOIN branch ON employee.emp_id = branch.mgr_id ;

-- left join (all the rows from the left table and only the matched rows from right table)
SELECT employee.emp_id ,
employee.first_name AS Manager,
branch.branch_name AS Branch
FROM employee 
LEFT JOIN branch ON employee.emp_id = branch.mgr_id;


-- left join (matched rows and the rows from the right table too)
SELECT employee.emp_id ,
employee.first_name AS Manager,
branch.branch_name AS Branch
FROM employee 
RIGHT JOIN branch ON employee.emp_id = branch.mgr_id;

-- full outer join(all rows from employee table and branch table, regardless of match or not)
SELECT employee.emp_id ,
employee.first_name AS Manager,
branch.branch_name AS Branch
FROM employee 
FULL OUTER JOIN branch ON employee.emp_id = branch.mgr_id;

