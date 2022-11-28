SELECT CompanyName,LEFT (ContactName,CHARINDEX (1

AS FirstName,SUBSTRING (ContactName,CHARINDEX ('', Contactame)+1,50)

ContactName)

+ 1,

50)

AS LastName, Phone

FROM dbo.Suppliers

UNION ALL

SELECT 'Northwind Traders" FirstName, LastName, Extension

FROM dbo.Employees



USE Northwind;

SELECT
	CompanyName,
	ContactName,
	Phone
FROM
	dbo.Customers

UNION ALL

SELECT CompanyName,LEFT (ContactName,CHARINDEX (1

AS FirstName, SUBSTRING (ContactName,CHARINDEX ('', Contactame)+1,50)
/*
UNION ALL

SELECT
	CompanyName,
	ContactName,
	Phone
FROM
	dbo.Suppliers

UNION ALL

SELECT
	'Northwind Traders',
	FirstName + ' ' + LastName,
	Extension
FROM
	dbo.Employees
	*/