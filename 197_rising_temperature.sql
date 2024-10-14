-- Problem: 197. Rising Temperature
-- Description: Find the IDs of all users who had a rising temperature compared to the previous day.

SELECT a.id 
FROM Weather AS a 
JOIN Weather AS b 
ON DATEDIFF(a.recordDate, b.recordDate) = 1 
WHERE a.temperature > b.temperature;
