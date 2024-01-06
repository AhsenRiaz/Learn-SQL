CREATE TABLE trigger_test(message VARCHAR(100));

DELIMITER $$ 
CREATE TRIGGER my_trigger BEFORE
INSERT ON employee 
FOR EACH ROW BEGIN
INSERT INTO
    trigger_test("a new employee added");

END $ $ DELIMITER;