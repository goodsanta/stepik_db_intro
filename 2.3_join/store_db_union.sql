SELECT 
    g.name AS good_name, c.name AS category_name
FROM
    good AS g
        LEFT OUTER JOIN
    category_has_good AS chg ON g.id = chg.good_id
        LEFT OUTER JOIN
    category AS c ON c.id = chg.category_id 
UNION SELECT 
    g.name AS good_name, c.name AS category_name
FROM
    good AS g
        RIGHT OUTER JOIN
    category_has_good AS chg ON g.id = chg.good_id
        RIGHT OUTER JOIN
    category AS c ON c.id = chg.category_id
ORDER BY good_name;