-- Temporary Tables

-- There are 2 ways to create TEMP TABLES. But the syntax of the most common one
-- As an example, we create temp_table headers
CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
); 
SELECT * -- To access temporary tables we should bring SELECT and FROM statements
FROM temp_table;
-- Insert some data into this taemp table
INSERT INTO temp_table
VALUES ('Alex', 
'Smith',
"Interstellar");

-- Now we can run this table
SELECT * 
FROM temp_table;

-- Let's say we want to access sub-section of data where salary is over 50k
CREATE TEMPORARY TABLE sal_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM sal_over_50k;
