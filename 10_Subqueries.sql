-- SUBQUERIES
-- To find the employees who worked in actual parks departments
-- Here dept_id that is given in employee salary table must be 1
-- Subquery is in WHERE clause
SELECT employee_id, first_name, last_name 
FROM parks_and_recreation.employee_demographics AS DEMO
WHERE DEMO.employee_id IN(
	SELECT employee_id
	FROM parks_and_recreation.employee_salary AS sal
	WHERE sal.dept_id = 1
);
 
-- Subquery in SELECT statement
-- To find the if actual salary of every worker is below or above the average salary
SELECT first_name, last_name, salary,
	(SELECT AVG(SALARY) as ave_salary
    FROM employee_salary) as ave_salary
FROM employee_salary
;

-- Subquery in FROM statement
SELECT gender, avg(age), max(age), count(age)
FROM employee_demographics
GROUP BY gender;

SELECT avg(max_age)
FROM (
SELECT gender, avg(age), max(age) as max_age, count(age)
FROM employee_demographics
GROUP BY gender
) AS agg_table
;