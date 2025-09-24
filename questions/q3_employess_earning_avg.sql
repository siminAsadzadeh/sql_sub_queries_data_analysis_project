-- q3_ Find all employees who earn less than the company’s average salary.

SELECT *
FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees);
