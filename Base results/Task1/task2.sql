--Task 2
SELECT [SalesOrderID],
       [OrderDate],
       [CustomerID],
       [SalesPersonID]
FROM [Sales].[SalesOrderHeader]
WHERE YEAR([OrderDate]) = 2005
      AND EOMONTH([OrderDate]) = [OrderDate];