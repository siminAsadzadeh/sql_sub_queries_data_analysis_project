-- q5_ Calculate the average salary of the top 5 highest-paid employees.

SELECT AVG(salary) 
FROM (
    SELECT salary
    FROM employees
    ORDER BY salary DESC
    LIMIT 5
) AS salary_table;
