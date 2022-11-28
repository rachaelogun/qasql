SELECT
CompanyName,
CHARINDEX('',ContactName),
ContactName,
Phone

FROM
dbo.Customers


SELECT CompanyName, Left(ContactName,CHARINDEX('',ContactName)) AS FirstName, SUBSTRING(ContactName, CHARINDEX('',ContactName) +1,50)
AS LastName, Phone 
FROM dbo.Customers
UNION ALL

SELECT CompanyName,
LEFT(ContactName, CHARINDEX('',ContactName))
AS FirstName, SUBSTRING (ContactName, CHARINDEX('',ContactName)+1,50)
AS LastName,
Phone
FROM dbo.Suppliers
UNION ALL
SELECT 'Northwind Trders', FirstName, LastName, Extension
FROM dbo.Employees

ORDER BY LastName