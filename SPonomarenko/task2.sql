SELECT Customers.CustomerName,
COUNT(*) NumberOfOrders
FROM [Orders]
JOIN Customers ON Orders.CustomerID=Customers.CustomerID
GROUP BY Customers.CustomerID
ORDER BY NumberOfOrders DESC
LIMIT 1