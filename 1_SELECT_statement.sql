-- To show basic syntax of the SELECT statement
SELECT * 
FROM parks_and_recreation.employee_demographics;

-- To show how the arithmetic operators work (remember PEMDAS)
SELECT 
	first_name,
    last_name,
    age,
    age+10 as new_age
FROM parks_and_recreation.employee_demographics;

-- To show how DISTINCT works
SELECT
	DISTINCT first_name, gender
FROM
	parks_and_recreation.employee_demographics