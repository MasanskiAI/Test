--4. Get amont of all Employees and Employee distribution by Shifts. Also calculate Percentage of Employees that belongs to Every Shift. (*current Employees Shift should be used for distribution calculation)
--Output: ShiftName, OverallEmployees, EmployeesByShift, EmployeesByShiftPercentage
--EmployeesByShiftPercentage = (EmployeesByShift / OverallEmployees) * 100
--Order by: EmployeesByShiftPercentage DESC
SELECT 
       ShiftName = s.Name,
       OverallEmployees = SUM(COUNT(1)) OVER (),
       EmployeesByShift = COUNT(1),
       EmployeesByShiftPercentage = CAST(ROUND(COUNT(1) * 1.0 / SUM(COUNT(1)) OVER () * 100, 2) AS DECIMAL(5,2))
FROM [HumanResources].[Employee] e
    INNER JOIN [HumanResources].[EmployeeDepartmentHistory] edh ON edh.BusinessEntityID = e.BusinessEntityID
    INNER JOIN [HumanResources].[Shift] s ON s.ShiftID = edh.ShiftID
WHERE EndDate IS NULL
GROUP BY s.Name
ORDER BY EmployeesByShiftPercentage DESC;