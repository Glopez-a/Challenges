SELECT 
  CAST(s.transaction_date as date) as day,
  d.name as department,
  COUNT(*) as sale_count
  FROM sale as s
    INNER JOIN department d on d.id = s.department_id
  group by d.name, day
  ORDER BY day 
