SELECT 
    SUM(id) / COUNT(DISTINCT player_id) AS fraction
FROM (
    SELECT 
        player_id, 
        DATEDIFF(event_date, MIN(event_date) OVER (PARTITION BY player_id)) = 1 AS id
    FROM activity
) AS subquery;
