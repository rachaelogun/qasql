SELECT
'TotalReveune'AS RevenuePerYear, [1996],[1997],1998
FROM(
SELECT YEAR(OrderDate) AS OrderYear,UnitPrice * AS OrderPrice FROM
ORDER o
JOIN
[Order Details] od
ON
o.OrderID = od.OrderID
)AS OrdersByYear
PIVOT
(SUM(OrderPrice)FOR OrderYear IN([1996],[1997],[1998])
)AS Pivotted
GO
SELECT CustomerID, [1996],[1997],[1998] FROM
(
SELECT YEAR(OrderDate) AS OrderYear,CustomerID, SUM(UnitPrice * Quantity) AS TotalOrderPrice FROM
ORDER o
JOIN
[Order Details] od
ON
o.OrderID = od.OrderID
)GROUP BY YEAR (OrderDate), o.CustomerID) AS OrderPerCustomerPerYear
PIVOT
(SUM(TotalOrderPrice) FOR OrderYear IN ([1996],[1997],[1998]) AS GetPivotted )
AS pvt --Pivotted Data

SELECT 
OrderYear, CustomerId, TotalOrderPrice
FROM(
SELECT * FROM Pivotted
)AS pvt
UNPIVOT
(
TotalRevenue FOR OrderYear IN ([1996],[1997],[1998])
)

