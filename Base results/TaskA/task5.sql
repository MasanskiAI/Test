--5. Get Employee's average rate by JobTitle and amount of employees who has that JobTitle. (*use only latest Employee's Rate value)
--Output: JobTitle, AverageRate, Employee's Count
--*UsedEmployee's = amount of employees for JobTitle
--Order by: AverageRate DESC
WITH cte_EmployeePayHistoryRanked AS
(   
    SELECT 
            BusinessEntityID, 
            Rate,
            ROW_NUMBER() OVER (PARTITION BY BusinessEntityID ORDER BY RateChangeDate DESC) rankByChangeDate          
        FROM [HumanResources].[EmployeePayHistory]
)
SELECT 
        e.JobTitle, 
        [AverageRate] = AVG(cte.Rate),
        [Employee's Count] = COUNT(1)
FROM [HumanResources].[Employee] e
    INNER JOIN cte_EmployeePayHistoryRanked cte ON cte.BusinessEntityID = e.BusinessEntityID AND cte.rankByChangeDate = 1
GROUP BY e.JobTitle
ORDER BY AverageRate DESC, e.JobTitle;