SELECT 
    temp.Department, temp.Employee, temp.salary
FROM (
    SELECT 
        d.name AS Department, e.name AS Employee, e.Salary AS salary,
        DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS ranks
    FROM 
        Employee e
    LEFT JOIN 
        Department d 
    ON 
        e.departmentId = d.id
) AS temp
WHERE 
    temp.ranks <= 3;
