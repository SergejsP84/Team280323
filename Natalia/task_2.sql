SELECT
	CustomerName,
    COUNT(*) AS total_orders
FROM Customers
join Orders using (CustomerID)
group by Customers.CustomerID
	Order by total_orders DESC
    limit 1;