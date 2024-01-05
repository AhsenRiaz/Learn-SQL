-- find all employees ordered by salary in descending order
SELECT * 
FROM employee 
ORDER BY salary DESC;

-- find all employee ordered by sex and name
SELECT  *
FROM employee
ORDER BY sex, first_name, last_name ;

-- find the first 5 employee with lowest salaries
SELECT * 
FROM employee
ORDER BY salary ASC 
LIMIT 5;

-- find the first and lastname of all employees
SELECT first_name, last_name
FROM employee;

-- find the firstname and lastname forename and surname
SELECT first_name AS forename, 
last_name AS surname
FROM employee;

-- find the classes of sex and branch_id in the table 
SELECT DISTINCT sex
FROM employee;

SELECT DISTINCT sex
FROM employee;

SELECT DISTINCT branch_id
FROM employee;

-- find the number of supervisors
SELECT COUNT(super_id) 
FROM employee;

-- find the number of female employees born after 1970
SELECT COUNT(sex)
FROM employee
WHERE sex = 'F'
AND birth_day > '1970=01-01';

-- find the average of salaries of male employees
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

-- find the sum of salaries of all employees
SELECT SUM(salary)
FROM employee

-- find out the count of sex of each employee
SELECT COUNT(sex), sex 
FROM employee
GROUP BY sex;

-- find the sum of total sales done by each employee
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

