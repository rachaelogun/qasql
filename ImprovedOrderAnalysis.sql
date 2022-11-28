USE Northwind;

SELECT
	c.CompanyName,
	COUNT(o.OrderID) AS NumOrders,
	MIN(o.OrderDate) AS MinDate
FROM
	dbo.Customers AS c
LEFT JOIN
	dbo.Orders AS o
ON
	o.CustomerID = c.CustomerID
	WHERE YEAR(o.OrderDate)= 1996
GROUP BY
	c.CompanyName
ORDER BY
	NumOrders

SELECT c.CompanyName, COUNT(o.OrderID) AS NumOrders,
ISNULL(
CONVERT(
VARCHAR(20),
MIN (o.OrderDate), 106),'None placed') AS MinDate 
FROM dbo.Customers AS c
LEFT JOIN dbo.Orders AS o
On o.CustomerID = c.CustomerID
WHERE YEAR(o.OrderDate)=1996
GROUP BY c.CompanyName
ORDER BY NumOrders