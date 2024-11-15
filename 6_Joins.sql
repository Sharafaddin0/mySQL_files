-- JOINS
SELECT *
FROM parks_and_recreation.employee_salary;

-- To show how INNER JOIN works, it returns rows that are the same in both tables
SELECT *
FROM parks_and_recreation.employee_demographics as demo
INNER JOIN employee_salary as salary
	ON demo.employee_id = salary.employee_id	
;

-- To show how LEFT OUTER JOIN works, it returns matches from Right Table by taking everything from Left Table even if there is no match
SELECT *
FROM parks_and_recreation.employee_demographics as demo
LEFT JOIN employee_salary as salary
	ON demo.employee_id = salary.employee_id	
;

-- RIGHT OUTER JOIN is vice versa of LEFT OUTER JOIN
-- Second row will get NULL values because the Left Table does not contain data about second row
SELECT *
FROM parks_and_recreation.employee_demographics as demo
RIGHT OUTER JOIN employee_salary as salary
	ON demo.employee_id = salary.employee_id	
;

-- SELF JOIN
-- This Join helps us to tie table to itself
SELECT salary1.employee_id as santa,
salary1.first_name as first_name_santa,
salary1.last_name as last_name_santa,
salary2.employee_id as santa,
salary2.first_name as first_name_santa,
salary2.last_name as last_name_santa
FROM parks_and_recreation.employee_salary AS salary1
JOIN parks_and_recreation.employee_salary AS salary2
	ON salary1.employee_id + 1 = salary2.employee_id
;

-- JOINING MULTIPLE TABLES
SELECT *
FROM parks_and_recreation.employee_demographics as demo
INNER JOIN employee_salary as salary
	ON demo.employee_id = salary.employee_id	
INNER JOIN parks_and_recreation.parks_departments as pd
	ON salary.dept_id = pd.department_id
;

SELECT * 
FROM parks_and_recreation.parks_departments;

	