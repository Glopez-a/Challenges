-- Replace with your query (in pure SQL)
SELECT cu.customer_id, cu.email, COUNT(pa.payment_id) AS payments_count, CAST(SUM(pa.amount) AS float)  AS total_amount
FROM customer AS cu
INNER JOIN payment AS pa ON pa.customer_id = cu.customer_id
GROUP BY cu.customer_id
ORDER BY total_amount DESC
LIMIT 10
