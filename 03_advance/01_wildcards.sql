-- find any client who is an LLC
SELECT *
FROM client 
WHERE client_name LIKE '%LLC';

-- find those employee who have the letter 'y' in their forename
SELECT *
FROM employee 
WHERE first_name LIKE '%y';

-- find those employee who are born in february
SELECT *
FROM employee
WHERE birth_day LIKE '____-02%';

SELECT *
from client
WHERE client_name LIKE '%school%';