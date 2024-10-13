/*What are the most common appointment times throughout the day, and how does the distribution of apppointment
times vary across different hours?*/

SELECT
DATEPART (hour, appointment_time) AS appointment_hour,
COUNT(*) AS appointment_count
FROM [Healthcare_Database].[dbo].Appointments
GROUP BY
DATEPART (hour, appointment_time)
ORDER BY appointment_count DESC