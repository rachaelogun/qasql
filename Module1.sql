-- USE Northwind
-- comments out the query so it's not run
SELECT * FROM Northwind.dbo.Orders
SELECT * FROM dbo.Orders
SELECT * FROM Orders


SELECT CustomerID, OrderDate FROM Orders

SELECT OrderDate, CustomerID FROM Orders

-- 10 % 4 -> 2

-- camelCase, PascalCase, SNAKE_CASE

SELECT Country + ', ' + City + ', ' +    Address 
				AS 
			FullContactDetails FROM Customers
SELECT ProductID, UnitPrice, Quantity, UnitPrice * Quantity AS TotalPriceOfOrder FROM [Order Details]
