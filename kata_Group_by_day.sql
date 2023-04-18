SELECT CAST(created_at AS date) AS day, description, COUNT(name) AS "count" 
FROM events
WHERE name = 'trained'
GROUP BY day, description;

