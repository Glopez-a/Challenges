SELECT COUNT(products.country) AS products, products.country
FROM products
WHERE products.country IN ('Canada', 'United States of America')
GROUP BY (products.country)
ORDER BY (products) DESC
