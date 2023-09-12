SELECT Employees.FirstName,
       Employees.LastName,
        COUNT(*) AS total_orders
FROM Employees
LEFT JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.EmployeeID
ORDER BY  total_orders DESC
LIMIT 3;