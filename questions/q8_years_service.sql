-- q8- Analyze job history to calculate years of service.

SELECT empl_id,
       YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE, start_date))) AS years_of_service,
       (SELECT AVG(YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE, start_date))))
        FROM job_history) AS avg_years_of_service
FROM job_history;
