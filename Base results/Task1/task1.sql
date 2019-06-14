--Task 1
SELECT [SalesOrderID],
       [OrderDate],
       [CustomerID],
       [SalesPersonID]
FROM [Sales].[SalesOrderHeader]
WHERE YEAR([OrderDate]) = 2008
      AND MONTH([OrderDate]) = 4;