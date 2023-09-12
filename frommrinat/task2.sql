SELECT Customers.CustomerName, COUNT(*) AS quantity_ordered
FROM Customers
JOIN Orders USING(CustomerID)
GROUP BY Customers.CustomerID
ORDER BY quantity_ordered DESC
LIMIT 1;