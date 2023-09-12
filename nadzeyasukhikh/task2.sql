SELECT Customers.CustomerName,
COUNT(Orders.OrderID) as NumberOrders
FROM Customers 
JOIN Orders USING(CustomerID)
GROUP BY Customers.CustomerID
ORDER BY NumberOrders DESC
LIMIT 1;