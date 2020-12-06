SELECT 
    source.name AS source_name
FROM
    source
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            client
        WHERE
            source.id = client.source_id) 
UNION SELECT 
    source.name AS source_name
FROM
    source
        INNER JOIN
    client ON source.id = client.source_id
        INNER JOIN
    sale ON client.id = sale.client_id
        INNER JOIN
    status ON status.id = sale.status_id
WHERE
    status.name LIKE 'rejected' 
UNION SELECT 
    source.name AS source_name
FROM
    source
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            client
                INNER JOIN
            sale ON client.id = sale.client_id)
