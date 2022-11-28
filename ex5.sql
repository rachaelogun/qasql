USE Northwind

SELECT * FROM Orders



-- 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

-- COUNT(*) -> 10
-- SUM() -> 55
-- AVG() -> 5.5
-- MIN() -> 1
-- MAX() -> 10

SELECT COUNT(UnitPrice) AS NumProducts FROM Products
SELECT AVG(UnitPrice) AS AveragePrice FROM Products
SELECT MIN(UnitPrice) AS CheapestProduct FROM Products
SELECT MAX(UnitPrice) AS MostExpensive FROM Products

SELECT SUM(UnitPrice * Quantity) AS TotalRevenue FROM [Order Details]

SELECT MIN(OrderDate) AS EarliestOrder FROM Orders
SELECT MAX(OrderDate) AS NewestOrder FROM Orders

SELECT COUNT(Fax) FROM Customers
SELECT COUNT(*) AS CustomersWithoutFaxMachines FROM Customers WHERE Fax IS NULL

SELECT CategoryID, SupplierID FROM Products ORDER BY CategoryID ASC
SELECT 
	CategoryID,
	COUNT(CategoryID) AS NumberOfProducts,
	SUM(UnitPrice) AS TotalPrice,
	MAX(UnitPrice) AS MostExpensive,
	MIN(UnitPrice) AS Cheapest,
	AVG(UnitPrice) AS AveragePrice
FROM Products 
GROUP BY CategoryID, SupplierID
ORDER BY CategoryID