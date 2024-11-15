-- Triggers and Events

-- First, look at TRIGGERS
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- Delimiter will help us to have multiple queries with in our CREATE TRIGGER statement 
DELIMITER $$
CREATE TRIGGER employee_insert 
	AFTER INSERT ON employee_salary -- we specified what event need to take place in order to be triggered (here we can use BEFORE statement as well, but we do not do any deletion or update)
    FOR EACH ROW -- shows trigger gonna activate on each row that is inserted
BEGIN -- here, when we insert new people, we want to take from 'employee_demographics' table - first_name, last_name, employee_id
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

-- To check this table
INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'John', 'Smith', 'entertainment 729 CEO', 100000, NULL);


-- Now let's try EVENTS
-- Generally, we can say trigger happens when the events take place. Events occur scheduled (dayly, monthly, yearly).
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- let's say if there is someone over age 60, he/she will retire automatically
DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND -- we scheduled event to every 30 seconds
DO 
BEGIN
	DELETE
    FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;

-- what if it did not create an event at all
SHOW VARIABLES LIKE 'event%'






