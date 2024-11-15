-- UNIONS
-- Syntax to show all names and surnames from 2 tables by using UNION ALL
SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION ALL
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary;
;

-- To do this bcs the company tries to push out the oldest and the  most paid eployee to save money. 
-- To find this we use UNION
SELECT first_name, last_name, 'OLD Man' AS label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION 
SELECT first_name, last_name, 'OLD Lady' AS label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'MOST PAID' AS label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;

-- 
