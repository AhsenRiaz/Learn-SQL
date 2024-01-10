-- A temporary table in SQL is a table that exists temporarily and is typically used to store intermediate results within a session or a specific scope. Temporary tables are particularly useful when you need to store and manipulate data temporarily during the execution of a complex query or a series of queries.

DROP TABLE IF EXISTS TEMP_EMPLOYEES;
CREATE TEMPORARY TABLE TEMP_EMPLOYEES  (  
    first_name VARCHAR(50),  
    last_name VARCHAR(150),
    salary INT
);

INSERT INTO TEMP_EMPLOYEES
SELECT first_name, last_name, salary
FROM employee;

SELECT * FROM TEMP_EMPLOYEES;