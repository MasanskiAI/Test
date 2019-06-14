--3. Get all Employee from Engineering department that worked there in year 2004.
--Output: EmployeeFullName, LoginID, JobTitle, DepartmentName
SELECT [EmployeeFullName] = p.FirstName + ' ' + ISNULL(p.MiddleName + ' ', '') + p.LastName,
       e.LoginID,
       e.JobTitle,
       DepartmentName = d.Name
    FROM [HumanResources].[Employee] e
        INNER JOIN [HumanResources].[EmployeeDepartmentHistory] edh ON edh.BusinessEntityID = e.BusinessEntityID
        INNER JOIN [HumanResources].[Department] d ON edh.DepartmentID = d.DepartmentID
        INNER JOIN [Person].[Person] p ON p.BusinessEntityID = e.BusinessEntityID
WHERE d.Name = 'Engineering' AND 2004 BETWEEN YEAR(StartDate) AND ISNULL(YEAR(EndDate), 9999);