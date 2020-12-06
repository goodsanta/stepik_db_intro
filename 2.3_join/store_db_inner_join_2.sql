/*list of clients with new sales*/
SELECT 
    client.first_name,
    client.last_name,
    COUNT(client_id) AS new_sale_num
FROM
    client
        INNER JOIN
    sale ON client.id = sale.client_id
        INNER JOIN
    status ON sale.status_id = status.id
WHERE
    status.name = 'new'
GROUP BY client_id
ORDER BY first_name;