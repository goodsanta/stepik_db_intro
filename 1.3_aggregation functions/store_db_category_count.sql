/*product categories order by count*/
SELECT 
    category, COUNT(*) AS count
FROM
    store
GROUP BY category
ORDER BY category;