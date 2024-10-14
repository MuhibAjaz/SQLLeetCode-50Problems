SELECT employees.name, EmployeeUNI.unique_id
FROM employees
LEFT JOIN EmployeeUNI
ON employees.id = EmployeeUNI.id;
