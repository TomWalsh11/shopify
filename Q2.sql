SELECT COUNT(*) FROM Orders
LEFT JOIN Shippers ON Shippers.ShipperID = Orders.ShipperID
WHERE Shippers.ShipperName = 'Speedy Express';

SELECT LastName FROM Employees
WHERE EmployeeID = (SELECT TOP 1 EmployeeID FROM
(SELECT EmployeeID, COUNT(OrderID) FROM Orders GROUP BY EmployeeID ORDER BY COUNT(OrderID) DESC));

SELECT ProductName, SUM(Quantity) AS Qty FROM
(((Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID)
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID)
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID)
WHERE Country = 'Germany'
GROUP BY ProductName
ORDER BY SUM(Quantity) DESC