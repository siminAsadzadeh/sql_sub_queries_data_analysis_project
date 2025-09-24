-- Display each employee’s ID, salary, and the maximum salary in the company.

SELECT emp_id,
       salary,
       (SELECT MAX(salary) FROM employees) AS max_salary
FROM employees;
