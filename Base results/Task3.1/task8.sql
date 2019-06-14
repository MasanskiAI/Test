--# 8.Show individual order records along with the grand total of all sales, the annual revenue for the year of the order and the total customer revenue for the customer that placed the order. 
SELECT YEAR([OrderDate]) AS [Year],
       [SalesOrderID],
       [CustomerID],
       [TotalDue],
       SUM([TotalDue]) OVER() AS 'Total Business Sales',
       SUM([TotalDue]) OVER(PARTITION BY YEAR([OrderDate])) AS 'Total Annual Sales',
       SUM([TotalDue]) OVER(PARTITION BY [CustomerID]) AS 'Total Customer Sales'
FROM [Sales].[SalesOrderHeader] ORDER BY [CustomerID],
                                         YEAR([OrderDate]);