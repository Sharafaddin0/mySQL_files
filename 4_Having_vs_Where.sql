-- Having vs Where

SELECT occupation, avg(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING avg(salary) > 75000;




