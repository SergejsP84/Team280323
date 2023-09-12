SELECT
COUNT (*) as number_of_order,
Employees.FirstName,
Employees.LastName
FROM Orders
JOIN Employees USING(EmployeeID)
GROUP BY EmployeeID
ORDER BY number_of_order DESC
LIMIT 3