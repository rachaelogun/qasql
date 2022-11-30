USE QATSQLPLUS

SELECT ContactName, PhoneNumber
FROM dbo.Vendor

SELECT TrainerName, PhoneNumber
FROM dbo.Trainer

SELECT ContactName, PhoneNumber
FROM dbo.Vendor
UNION
SELECT TrainerName, PhoneNumber FROM dbo.Trainer
SELECT ContactName, PhoneNumber
FROM dbo.Vendor
UNION ALL
SELECT TrainerName, PhoneNumber
FROM dbo.Trainer

SELECT 'Vendor' AS ContactType, ContactName, PhoneNumber
FROM dbo.Vendor
UNION
SELECT 'Trainer' AS ContactType,TrainerName, PhoneNumber
FROM dbo.Trainer



