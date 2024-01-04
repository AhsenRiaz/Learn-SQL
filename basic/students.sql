
-- xxxxxxxxx BASICS OF A TABLE xxxxxxxxx
CREATE TABLE student (
	student_id INT PRIMARY KEY AUTO_INCREMENT ,
	name VARCHAR(20)  NOT NULL,
	major VARCHAR(20) NOT NULL
);

-- describe the table structure
DESCRIBE student;

-- add a column attribute to table
ALTER TABLE student ADD gpa DECIMAL(3,2);
-- drop a column attribute from table
ALTER TABLE student DROP COLUMN gpa;
-- drop the entire table
DROP TABLE student;
--  see inside the table
SELECT * FROM student;

--  xxxxxxxx INSERTING DATA INTO TABLE xxxxxxxx
INSERT INTO student(name, major) VALUES('Alice', 'Sociology'); 
INSERT INTO student(name, major) VALUES('Bob', 'Computer Science');
INSERT INTO student(name, major) VALUES('John', 'Psychology');
INSERT INTO student(name, major) VALUES('Doe', 'Criminology');
INSERT INTO student(name, major) VALUES('Mike', 'Bio');
INSERT INTO student(name, major) VALUES('Rok', 'Chemistry');
INSERT INTO student(name, major) VALUES('Rok', 'Robotics');

-- xxxxxxxxx UPDATING AND DELETING ROWS xxxxxxxx
SELECT * FROM student

UPDATE student 
SET major = 'Soc' 
where student_id = 1;

UPDATE student 
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry'

UPDATE student 
SET major = 'Food and Science', name = 'Kelly'
WHERE student_id = 3;

DELETE FROM student;

DELETE FROM student
WHERE name = 'Rok' AND major = 'Robotics';

-- xxxxxxxxx READING DATA FROM TABLE xxxxxxxxxxx
-- <, >, <=, >=, =, <>, AND, OR
SELECT * FROM student;
SELECT name, major from student;
SELECT student.name, student.major from student;

SELECT * from student
ORDER BY student_id ASC; 

SELECT * from student
WHERE name = 'Rok'
ORDER BY student_id DESC;

-- where id != 3
SELECT * from student
WHERE student_id <> 3; 

SELECT * from student
WHERE student_id <= 3 AND name <> 'Bob'; 

-- select where name is from these group of values 
SELECT * FROM student
WHERE name IN ('Bob', 'Doe', 'Frank');

SELECT * FROM student
WHERE major IN ('Chemistry', 'Criminology', 'Psychology');
