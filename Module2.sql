USE Northwind

SELECT * FROM Orders
SELECT * FROM Orders WHERE CustomerID = 'TOMSP'
SELECT * FROM Orders WHERE CustomerID = 'TOMSP' OR CustomerID = 'VINET'
SELECT * FROM Orders WHERE CustomerID IN ('TOMSP', 'VINET', 'HANAR')
SELECT * FROM Orders WHERE CustomerID IN ('TOMSP', 'VINET', 'HANAR')  AND OrderDate > '1996-08-01'

SELECT * FROM Orders 
WHERE CustomerID IN ('TOMSP', 'VINET', 'HANAR')  AND OrderDate >= '1996-07-04' AND OrderDate < '1996-07-06'

SELECT * FROM Employees WHERE LastName = 'Fuller' -- IS 'Fuller'
SELECT * FROM Employees WHERE LastName != 'Fuller' -- IS NOT 'Fuller
SELECT * FROM Employees WHERE LastName LIKE 'D%' -- STARTS WITH 'D'
SELECT * FROM Employees WHERE LastName LIKE '%N' -- ENDS WITH 'N'
SELECT * FROM Employees WHERE FirstName LIKE 'A__e' -- 'A something something e'
SELECT * FROM Employees WHERE FirstName LIKE 'An[d,n]%' -- STARTS WITH (A, N, d or n)
SELECT * FROM Employees WHERE FirstName LIKE 'An[^d]%' -- STARTS WITH (A, N, NOT d)

-- SELECT * FROM ORDERS WHERE OrderDate = 1996-08-01 Interpreted as a number

SELECT ProductID, UnitPrice, Quantity, UnitPrice * Quantity AS TotalPriceOfOrder FROM [Order Details]
WHERE UnitPrice * Quantity > 100