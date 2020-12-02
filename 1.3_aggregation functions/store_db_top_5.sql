/*top 5 product categories based on revenue*/
SELECT 
    category, SUM(price * sold_num) AS revenue
FROM
    store
GROUP BY category
ORDER BY revenue DESC
LIMIT 5;