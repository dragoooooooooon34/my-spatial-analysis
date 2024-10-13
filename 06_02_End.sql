--What is the demographic profile of the patient population, including age and gender distribution?

SELECT
gender,
CASE
WHEN DATEDIFF(year, date_of_birth, GETDATE()) BETWEEN 0 AND 17 THEN 'Pediatric'
WHEN DATEDIFF(year, date_of_birth, GETDATE()) BETWEEN 18 AND 64 THEN 'Adult'
ELSE 'Senior'
END AS age_group,
COUNT(*) AS patient_count
FROM [Healthcare_Database].[dbo].Patients
GROUP BY
gender,
CASE
WHEN DATEDIFF(year, date_of_birth, GETDATE()) BETWEEN 0 AND 17 THEN 'Pediatric'
WHEN DATEDIFF(year, date_of_birth, GETDATE()) BETWEEN 18 AND 64 THEN 'Adult'
ELSE 'Senior'
END