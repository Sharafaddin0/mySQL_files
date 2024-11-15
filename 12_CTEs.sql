-- CTEs

-- Here we want to create this query as CTE
WITH CTE_example (Gender, AVG_salary, max_salary, min_salary, total_number) AS (
SELECT gender, 
AVG(sal.salary) AS ave_salary, 
MAX(sal.salary) AS max_salary,
MIN(sal.salary) AS min_salary, 
COUNT(sal.salary) AS total_number
FROM parks_and_recreation.employee_demographics AS demo
JOIN parks_and_recreation.employee_salary AS sal
	ON demo.employee_id = sal.employee_id
GROUP BY demo.gender
)
SELECT *
FROM CTE_example
;

-- We use the CTE bcs of its readability, we can write this using subquery but it will be bit complicated to understand
SELECT AVG(ave_salary)
FROM (
SELECT gender, 
AVG(sal.salary) AS ave_salary, 
MAX(sal.salary) AS max_salary,
MIN(sal.salary) AS min_salary, 
COUNT(sal.salary) AS total_number
FROM parks_and_recreation.employee_demographics AS demo
JOIN parks_and_recreation.employee_salary AS sal
	ON demo.employee_id = sal.employee_id
GROUP BY demo.gender
) AS subquery_example
;

-- Creating multiple CTEs within just one
WITH CTE_example AS 
(
SELECT employee_id, birth_date
FROM parks_and_recreation.employee_demographics -- Remove JOINS and GROUP BY statements after it
WHERE birth_date > '1985-01-01'
),  -- Add a second CTE  
CTE_example2 AS 
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_example
JOIN CTE_example2 -- Join this 2 CTEs together at the end
	ON CTE_example.employee_id = CTE_example2.employee_id
;



