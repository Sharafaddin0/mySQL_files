-- WINDOW functions
-- Average salary of 2 genders MALES and FEMALES
SELECT gender, avg(salary) AS ave_salary
FROM employee_demographics AS demo
JOIN employee_salary AS sal
	ON demo.employee_id = sal.employee_id
GROUP BY gender
;

-- Average salary of everybody 
-- GROUP BY roll everything up to 1 row, but here PARTITION BY performs calculation of different genders unique values
SELECT demo.first_name, demo.last_name, avg(salary) OVER(PARTITION BY gender) AS ave_salary_everyone 
FROM employee_demographics AS demo
JOIN employee_salary AS sal
	ON demo.employee_id = sal.employee_id
;

-- Here we find grand total at the end for each genders
-- For females start from 75000
-- For males start from 50000
SELECT demo.first_name, demo.last_name, sal.salary,
sum(salary) OVER(PARTITION BY gender ORDER BY demo.employee_id) AS rolling_total
FROM employee_demographics AS demo
JOIN employee_salary AS sal
	ON demo.employee_id = sal.employee_id
;

-- Let's look at the row number, rank and dense_rank
SELECT demo.employee_id, demo.first_name, demo.last_name, demo.gender, sal.salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY sal.salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY sal.salary DESC) AS rank_num, -- it is ordered by salary that is why some numbers are same bcs their salary are the same
DENSE_RANK() OVER(PARTITION BY gender ORDER BY sal.salary DESC) AS dense_rank_num -- there is little difference from ordinary rank about counting
FROM employee_demographics AS demo
JOIN employee_salary AS sal
	ON demo.employee_id = sal.employee_id
;
