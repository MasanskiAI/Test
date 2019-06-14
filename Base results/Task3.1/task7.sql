--¹ 7.Show the lowest CommissionPct for each person and combine FirstName, MiddleName, LastName AS FullName
SELECT([P].[FirstName]+' '+ISNULL([P].[MiddleName]+' ', '')+[P].[LastName]) AS [FullName],
      MIN([S].[CommissionPct])
FROM [Person].[Person] [P]
     JOIN [Sales].[SalesPerson] [S] ON [P].[BusinessEntityID] = [S].[BusinessEntityID]
GROUP BY [P].[FirstName],
         [P].[MiddleName],
         [P].[LastName] ORDER BY [P].[FirstName],
                                 [P].[MiddleName],
                                 [P].[LastName];