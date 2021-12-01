SELECT * FROM Departments

SELECT Name FROM Departments

SELECT FirstName, LastName, Salary FROM Employees

SELECT FirstName, MiddleName, LastName FROM Employees

SELECT (FirstName + '.' + LastName + '@softuni.bg') AS [Full Email Address] FROM Employees

SELECT DISTINCT Salary FROM Employees

SELECT * FROM Employees
WHERE JobTitle = 'Sales Representative'

SELECT FirstName, LastName, JobTitle FROM Employees
WHERE Salary BETWEEN 20000 AND 30000

SELECT FirstName + ' ' + MiddleName + ' ' + LastName AS [Full Name] FROM Employees
WHERE Salary IN (25000, 14000, 12500, 23600)

SELECT FirstName, LastName FROM Employees
WHERE ManagerId IS NULL

SELECT FirstName, LastName, Salary FROM Employees
WHERE Salary > 50000
ORDER BY Salary DESC

SELECT TOP(5) FirstName, LastName FROM Employees
ORDER BY Salary DESC

SELECT FirstName, LastName FROM Employees
WHERE NOT (DepartmentID = 4)

SELECT * FROM Employees
ORDER BY Salary DESC, FirstName, LastName DESC, MiddleName
GO

CREATE VIEW V_EmployeesSalaries AS
SELECT FirstName, LastName, Salary FROM Employees
GO


CREATE VIEW V_EmployeeNameJobTitle AS
SELECT FirstName + ' ' + ISNULL(MiddleName, '') + ' ' + LastName AS [Full Name], JobTitle AS [Job Title] FROM Employees
GO


SELECT DISTINCT JobTitle FROM Employees

SELECT TOP(10) * FROM Projects
ORDER BY StartDate, Name

SELECT TOP(7) FirstName, LastName, HireDate FROM Employees
ORDER BY HireDate DESC

BACKUP DATABASE SoftUni TO DISK = 'C:\Users\User\Desktop\Softuni-backup.bak'

UPDATE Employees
SET Salary *= 1.12
WHERE DepartmentID IN(1, 2, 4, 11)

SELECT Salary FROM Employees

USE master
GO

DROP DATABASE SoftUni
GO

RESTORE DATABASE SoftUni FROM DISK = 'C:\Users\User\Desktop\Softuni-backup.bak'
USE SoftUni

USE Geography

SELECT PeakName FROM Peaks
ORDER BY PeakName

SELECT TOP 30 CountryName, [Population] FROM Countries
WHERE ContinentCode = 'EU'
ORDER BY [Population] DESC, CountryName

SELECT CountryName, CountryCode, Currency =
	CASE CurrencyCode
		WHEN 'EUR' THEN 'Euro'
		ELSE 'Not Euro'
	END
FROM Countries
ORDER BY CountryName

USE Diablo

SELECT Name FROM Characters
ORDER BY Name