-- Find employees who are older than the average employee age.

SELECT *
FROM employees
WHERE YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE, b_date))) >
      (SELECT AVG(YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE, b_date))))
       FROM employees);
