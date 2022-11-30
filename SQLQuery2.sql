USE QATSQLPLUS
SELECT ProductID, TransferDate, TransferAmount FROM dbo.BookTransfers

SELECT ProductID, SUM(TransferAmount) AS Stock
FROM dbo.BookTransfers 
GROUP BY ProductID

SELECT ProductID, TransferDate, TransferAmount, SUM(TransferAmount) OVER (PARTITION BY ProductID ORDER BY TransferDate)

AS RunningStock
FROM dbo.BookTransfers


SELECT*
FROM dbo.VendorCourseDelegateCount
GO

SELECT *, RANK()OVER(PARTITION BY Vendorname ORDER BY NumberDelegates DESC)
FROM dbo.VendorCourseDelegateCount

GO
WITH Ranked_Courses AS(
SELECT *,
RANK() OVER (PARTITION BY VendorName ORDER BY NumberDelegates DESC) AS LeaguePos FROM dbo.VendorCourseDateDelegateCount