-- To show how LIMIT works (showing older employees)
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3;

-- To show Aliasing
SELECT gender, AVG(age) as ave_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING ave_age > 40;