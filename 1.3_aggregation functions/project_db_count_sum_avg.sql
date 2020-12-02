SELECT 
    COUNT(*) AS project_count,
    SUM(budget) AS total_cost,
    AVG(DATEDIFF(project_finish, project_start)) AS average_time
FROM
    project;