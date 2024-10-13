/* Assess how many patients are considered High, Medium, and Low Risk.

High Risk: patients who are smokers and have been diagnosed with either hypertension or diabetes.
Medium Risk: patients who are non-smokers and have been diagnosed with either hypertension or diabetes.
Low Risk: patients who do not fall into the High or Medium Risk categories. This includes patients who are not
smokers and do not have a diagnosis of hypertension or diabetes.*/


SELECT
CASE
WHEN smoker_status = 'Y' AND (diagnosis = 'Hypertension' OR diagnosis = 'Diabetes') THEN 'High Risk'
WHEN smoker_status = 'N' AND (diagnosis = 'Hypertension' OR diagnosis = 'Diabetes') THEN 'Medium Risk'
ELSE 'Low Risk'
END AS Risk_category,
COUNT(patient_id) AS num_patients
FROM [Healthcare_Database].[dbo].[Outpatient Visits]
GROUP BY
CASE
WHEN smoker_status = 'Y' AND (diagnosis = 'Hypertension' OR diagnosis = 'Diabetes') THEN 'High Risk'
WHEN smoker_status = 'N' AND (diagnosis = 'Hypertension' OR diagnosis = 'Diabetes') THEN 'Medium Risk'
ELSE 'Low Risk'
END
