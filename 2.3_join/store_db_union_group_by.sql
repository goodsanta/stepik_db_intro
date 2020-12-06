SELECT 
    source.name AS source_name, SUM(sale_sum) AS sale_sum
FROM
    source
        LEFT OUTER JOIN
    client ON source.id = client.source_id
        LEFT OUTER JOIN
    sale ON sale.client_id = client.id
GROUP BY source_name 
UNION SELECT 
    source.name AS source_name, SUM(sale_sum) AS sale_sum
FROM
    source
        RIGHT OUTER JOIN
    client ON source.id = client.source_id
        RIGHT OUTER JOIN
    sale ON sale.client_id = client.id
GROUP BY source_name
ORDER BY source_name;