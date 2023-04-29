SELECT
  RANK () OVER (
		ORDER BY SUM(points) DESC
	) rank,
  COALESCE(nullif(clan, ''), '[no clan specified]') AS clan, 
  SUM(points) AS total_points, 
  COUNT(*) AS total_people

FROM people
GROUP BY clan
