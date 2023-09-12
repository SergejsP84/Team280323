SELECT
COUNT (*) as number_of_order,
Customers.CustomerName
FROM Customers
JOIN Orders using (CustomerID)
GROUP BY CustomerID
ORDER BY number_of_order DESC
LIMIT 1