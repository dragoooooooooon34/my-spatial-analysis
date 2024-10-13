--What are the most commonly ordered lab tests?

SELECT
test_name,
COUNT(*) AS test_count
FROM [Healthcare_Database].[dbo].[Lab Results]
GROUP BY test_name
ORDER BY test_count DESC