-- String functions

-- Length, Upper, Lower, and Trim functions
SELECT first_name, LENGTH(first_name) AS length_of_names,
	UPPER(first_name) AS uppercase_names,
    TRIM(   first_name) AS trimmed_names
FROM parks_and_recreation.employee_demographics
ORDER BY 2;

-- Substring function (as well as LEFT and RIGHT functions)
SELECT first_name, 
	LEFT(first_name, 4) as left_cut,
    RIGHT(first_name, 2) as right_cut,
    SUBSTRING(first_name, 3,2) as substring_usage
FROM parks_and_recreation.employee_demographics;

-- REPLACE function
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM parks_and_recreation.employee_demographics;

-- LOCATE function
SELECT LOCATE('x', 'Alexandr') as locate_func;

-- CONCATENATE function
SELECT first_name, last_name, 
	CONCAT(first_name,' ', last_name) AS full_name
FROM parks_and_recreation.employee_salary;