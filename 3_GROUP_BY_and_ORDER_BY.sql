-- To show the basic syntax
SELECT *
FROM parks_and_recreation.employee_demographics;

-- To group the employees by their gender to show their average age respect to gender
-- As well as find max and min ages respectfully and count
SELECT gender, avg(age), max(age), min(age), count(age)
FROM employee_demographics
GROUP BY gender;

-- To group rows by occupation and salary from employee_salary
SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary;

-- Syntax of ORDER BY
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age;