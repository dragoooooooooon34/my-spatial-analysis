/* Find out information about patients who had multiple visits within 30 days of their previous medical
visit

- Identify those patients
- Date of initial visit
- Reason of the initial visit
- Readmission date
- Reason for readmission
- Number of days between the initial visit and readmission
- Readmission visit recorded must have happened after the initial visit */

SELECT
ov_initial.patient_id,
ov_initial.visit_date AS initial_visit_date,
ov_initial.reason_for_visit AS reason_for_initial_visit,
ov_readmit.visit_date AS readmission_date,
ov_readmit.reason_for_visit AS reason_for_readmission,
DATEDIFF(day, ov_initial.visit_date, ov_readmit.visit_date) AS days_between_initial_and_readmission
FROM
[Healthcare_database].[dbo].[Outpatient Visits] AS ov_initial
INNER JOIN [Healthcare_database].[dbo].[Outpatient Visits] AS ov_readmit
ON ov_initial.patient_id = ov_readmit.patient_id
WHERE DATEDIFF(day, ov_initial.visit_date, ov_readmit.visit_date) <= 30
AND ov_readmit.visit_date > ov_initial.visit_date




