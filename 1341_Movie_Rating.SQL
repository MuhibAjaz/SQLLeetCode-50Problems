(SELECT u.name AS results
FROM Users u
INNER JOIN MovieRating m ON u.user_id = m.user_id
GROUP BY u.user_id
ORDER BY COUNT(m.rating) DESC, u.name
LIMIT 1)

UNION ALL

(SELECT m.title AS results
FROM Movies m
JOIN MovieRating mr ON m.movie_id = mr.movie_id
WHERE MONTH(mr.created_at) = 2 AND YEAR(mr.created_at) = 2020
GROUP BY m.movie_id
ORDER BY AVG(mr.rating) DESC, m.title
LIMIT 1);
