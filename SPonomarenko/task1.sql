SELECT Employees.FirstName,
Employees.LastName,
COUNT (*) AS OrdersHandled
FROM [Orders]

JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID
GROUP BY Employees.EmployeeID
ORDER BY OrdersHandled DESC
LIMIT 3