-- Union allows to call more than 1 SELECT statements together

SELECT first_name AS Company_Names from employee 
UNION
SELECT branch_name from branch
UNION
SELECT client_name from client;