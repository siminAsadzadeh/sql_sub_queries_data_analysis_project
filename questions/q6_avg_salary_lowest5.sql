-- Calculate the average salary of the 5 lowest-paid employees.

SELECT AVG(salary) 
FROM (
    SELECT salary
    FROM employees
    ORDER BY salary ASC
    LIMIT 5
) AS salary_table;
