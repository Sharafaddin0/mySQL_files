-- To show how WHERE clause works
SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie';
    
 -- To show specific rows where salary of employee's less than 50000   
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000;

-- To show rows where employees' gender is only male and born after 01 January 1985
-- Usage of logical operators(AND OR NOT)
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female' AND
	birth_date >'1985-01-01';
    
-- To show the employee name Leslie's details as well as who's age more than 55
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' and age = 44) 
	OR age > 55;
    
-- To show the LIKE statement
-- Special characters need to be added (% and _)
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%'
;