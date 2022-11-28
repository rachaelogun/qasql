SELECT        Products.ProductID, Products.ProductName, Products.SupplierID, Products.CategoryID, Products.QuantityPerUnit, Products.UnitPrice, Products.UnitsInStock, Products.UnitsOnOrder, Products.ReorderLevel, 
                         Products.Discontinued
FROM            account_transactions CROSS JOIN
                         Products