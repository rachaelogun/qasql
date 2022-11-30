USE QATSQLPLUS
GO

SELECT DelegatedID

FROM dbo.DelegateID

FROM dbo.DelegateAttendance AS DA
INNER JOIN dbo.CourseRun AS CR
ON DA.CourseRunID AS CR.CourseRunID
INNER JOIN dbo.Course AS C
ON C.CourseID=CR.CourseID
WHERE C.COURSEName='QATSQL'

SELECT DelegateID
FROM dbo.DelegateAttendance AS DA
INNER JOIN dbo.CourseRun AS CR
ON DA.CourseRunID AS CR.CourseRunID
INNER JOIN dbo.Course AS C
ON C.CourseID=CR.CourseID
WHERE C.COURSEName='QATSQLPLUS'

SELECT DelegateID
FROM dbo.DelegateAttendance AS DA
INNER JOIN dbo.CourseRun AS CR
ON DA.CourseRunID AS CR.CourseRunID
INNER JOIN dbo.Course AS C
ON C.CourseID=CR.CourseID
WHERE C.COURSEName='QATSQL'
INTERSECT
SELECT DelegateID
FROM dbo.DelegateAttendance AS DA
INNER JOIN dbo.CourseRun AS CR
ON DA.CourseRunID AS CR.CourseRunID
INNER JOIN dbo.Course AS C
ON C.CourseID=CR.CourseID
WHERE C.COURSEName='QATSQL'
GO

SELECT DelegateID
FROM dbo.DelegateAttendance AS DA
INNER JOIN dbo.CourseRun AS CR
ON DA.CourseRunID AS CR.CourseRunID
INNER JOIN dbo.Course AS C
ON C.CourseID=CR.CourseID
WHERE C.COURSEName='QATSQL'
EXCEPT
SELECT DelegateID
FROM dbo.DelegateAttendance AS DA
INNER JOIN dbo.CourseRun AS CR
ON DA.CourseRunID AS CR.CourseRunID
INNER JOIN dbo.Course AS C
ON C.CourseID=CR.CourseID
WHERE C.COURSEName='QATSQLPLUS'

SELECT DelegateID
FROM dbo.DelegateAttendance AS DA
INNER JOIN dbo.CourseRun AS CR
ON DA.CourseRunID AS CR.CourseRunID
INNER JOIN dbo.Course AS C
ON C.CourseID=CR.CourseID
WHERE C.COURSEName='QATSQL'
EXCEPT
SELECT DelegateID
FROM dbo.DelegateAttendance AS DA
INNER JOIN dbo.CourseRun AS CR
ON DA.CourseRunID AS CR.CourseRunID
INNER JOIN dbo.Course AS C
ON C.CourseID=CR.CourseID
WHERE C.COURSEName='QATSQLPLUS'
