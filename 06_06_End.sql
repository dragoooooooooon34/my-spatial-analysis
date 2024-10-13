/*Typically, fasting blood sugar levels falls between 70-100 mg/dL. Our goal is to identify patients 
whose lab results are outside this normal range to implement early intervention.*/

SELECT
p.patient_id,
p.patient_name,
result_value
FROM [Healthcare_Database].[dbo].Patients AS p
INNER JOIN [Healthcare_Database].[dbo].[Outpatient Visits] AS ov
ON p.patient_id = ov.patient_id
INNER JOIN [Healthcare_Database].[dbo].[Lab Results] AS lr
ON ov.visit_id = lr.visit_id
WHERE lr.test_name = 'Fasting Blood Sugar'
AND (lr.result_value < 70 OR lr.result_value >100)

