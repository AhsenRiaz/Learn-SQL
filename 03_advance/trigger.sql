
-- the trigger table
CREATE TABLE trigger_test(
	message VARCHAR(100)
);


-- trigger to insert a message each time an employee gets inserted into employee table
DELIMITER $$
CREATE 
	TRIGGER my_trigger BEFORE INSERT
	ON employee
	FOR EACH ROW BEGIN 
		INSERT INTO trigger_test VALUES("a new employee added");
	END$$
DELIMITER ;

-- the above trigger will run before inserting into employee each time we insert into employee
INSERT INTO employee 
VALUES(110, , 'Kevin' , 'Malone', '1978-02-19', 69000, 106, 3);



-- same trigger but now we are grabbing the name of the inserted employee
DELIMITER $$
CREATE 
	TRIGGER my_trigger BEFORE INSERT
	ON employee
	FOR EACH ROW BEGIN 
		INSERT INTO trigger_test VALUES(NEW.first_name);
	END$$
DELIMITER ;

INSERT INTO employee 
VALUES(111, , 'Jason' , 'Mark', '1971-05-11', 57000, 104, 2);

DELIMITER $$
CREATE 
	TRIGGER my_trigger BEFORE INSERT
	ON employee
	FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
		    INSERT INTO trigger_test VALUES('added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES('added female employee')
	END IF;
    END$$
DELIMITER ;


SELECT * FROM trigger_test;

