SELECT
CompanyName,
CHARINDEX('',ContactName),
ContactName,
Phone

FROM
dbo.Customers
