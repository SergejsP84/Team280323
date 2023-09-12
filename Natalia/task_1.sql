--Task 1. Вывести топ-3 менеджеров по ко-ву заказов

SELECT 
	Employees.LastName,
	Employees.FirstName,
	COUNT(*) as total_orders
FROM Orders
Join Employees on Employees.EmployeeID = Orders.EmployeeID
GROUP by Employees.EmployeeID
Order by total_orders DESC
limit 3;

