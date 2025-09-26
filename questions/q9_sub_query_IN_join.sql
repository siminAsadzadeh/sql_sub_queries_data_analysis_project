-- q9_ Retrieve job information for roles held by employees whose birth year is after 1976, and also list those employees.

SELECT
  j.job_title,
  j.min_salary,
  j.max_salary,
  j.job_ident
FROM jobs AS j
WHERE j.job_ident IN (
  SELECT e.job_id
  FROM employees AS e
  WHERE YEAR(e.b_date) > 1976
);

--***OR

SELECT
  e.emp_id,
  e.f_name,
  e.l_name,
  e.b_date,
  j.job_title,
  j.job_ident
FROM employees AS e
JOIN jobs AS j
  ON e.job_id = j.job_ident
WHERE YEAR(e.b_date) > 1976
ORDER BY e.b_date;

