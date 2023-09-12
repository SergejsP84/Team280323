SELECT Employees.LastName, Employees.FirstName, 
COUNT(Orders.OrderID) as NumberOrders
FROM Employees
JOIN Orders USING(EmployeeID)
GROUP BY  Employees.EmployeeID
ORDER BY NumberOrders DESC
LIMIT 3