Q1
SELECT COUNT(*) FROM Orders
LEFT JOIN Shippers ON Shippers.ShipperID = Orders.ShipperID
WHERE Shippers.ShipperName = 'Speedy Express';

54

Q2
SELECT LastName FROM Employees
WHERE EmployeeID = (SELECT TOP 1 EmployeeID FROM
(SELECT EmployeeID, COUNT(OrderID) FROM Orders GROUP BY EmployeeID ORDER BY COUNT(OrderID) DESC));

Peacock

Q3
SELECT ProductName, SUM(Quantity) AS Qty FROM
(((Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID)
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID)
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID)
WHERE Country = 'Germany'
GROUP BY ProductName
ORDER BY SUM(Quantity) DESC

Boston Crab Meat - 160
