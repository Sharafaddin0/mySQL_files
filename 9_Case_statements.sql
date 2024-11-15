-- Case statements
-- To find if employees are old, young or super old
SELECT first_name, last_name, age,
	CASE 
		WHEN age <= 30 THEN 'Young'
        WHEN AGE BETWEEN 31 AND 50 THEN 'OLD'
        WHEN AGE >= 50 THEN "Need to go pension"
	END AS age_comparison
FROM employee_demographics;

-- Pay Increase and Bonus
-- salary < 50000 == 5%
-- salary > 50000 == 7%
-- finance == 10% bonus

SELECT first_name, last_name, salary,
	CASE
		WHEN salary < 50000 THEN salary + (salary * 0.05) 
        WHEN salary > 50000 THEN salary + (salary * 0.07)
	END AS new_salary,
	CASE
		WHEN dept_id = 6 THEN salary + (salary * 0.10)
	END AS bonus
FROM employee_salary;

