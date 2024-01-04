-- create employee table
CREATE TABLE employee(
	emp_id INT PRIMARY KEY,
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	birth_day DATE,
	sex VARCHAR(1),
	salary INT,
	super_id INT,
	branch_id INT
);

-- create branch table
CREATE TABLE branch(
	branch_id INT PRIMARY KEY,
	branch_name VARCHAR(40),
	mgr_id INT,
	mgr_start_date DATE,
	FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) 
	ON DELETE SET NULL
);

-- alter employee table
ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;


ALTER TABLE employee 
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;

SELECT * FROM employee;

-- create client table
CREATE TABLE client(
	client_id INT PRIMARY KEY,
	client_name VARCHAR(40),
	branch_id INT,
	FOREIGN KEY(branch_id) REFERENCES branch(branch_id) 
	ON DELETE SET NULL
);

-- CREATE works_with table with foreign key emp_id, client_id as its primary keys
CREATE TABLE works_with(
	emp_id INT,
	client_id INT,
	total_sales INT,
	PRIMARY KEY(emp_id, client_id),
	FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
	FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE	
);

CREATE TABLE branch_supplier (
	branch_id INT,
	supplier_name VARCHAR(40),
	supply_type VARCHAR(40),
	PRIMARY KEY(branch_id, supplier_name),
	FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE	
);


-- insert into 

INSERT INTO employee VALUES(
	100,
	'David',
	'Wallace',
	'1967-11-17',
	'M',
	250000,
	NULL,
	NULL
);

INSERT INTO branch VALUES(
	1,
	'Corporate',
	100,
	'1962-05-11'
);

UPDATE employee 
SET branch_id = 1 
WHERE emp_id = 100;

INSERT INTO employee VALUES(
	106,
	'Josh',
	'Porter',
	'1969-09-05',
	'M',
	78000,
	100,
	NULL
);

INSERT INTO branch VALUES(
	3,
	'Stamford',
	106,
	'1998-04-06'
);

UPDATE employee 
SET branch_id = 3
where emp_id = 106;

INSERT INTO employee VALUES(
	108,
	'Jim',
	'Halpert',
	'1978-10-01',
	'M',
	71000,
	106,
	3
);


-- branch supplier 
INSERT INTO branch_supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Utensils');
INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Stamford Papers', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Hammer Labels', 'Custom Forms');

SELECT * FROM branch_supplier;