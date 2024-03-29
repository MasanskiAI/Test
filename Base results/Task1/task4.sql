--Task 4
SELECT DISTINCT [SalesOrderID],
       [UnitPriceDiscount] * [OrderQty] AS [TotalDiscount]
FROM [Sales].[SalesOrderDetail]
WHERE [UnitPriceDiscount] * [OrderQty] > 5 ORDER BY [UnitPriceDiscount] * [OrderQty] DESC;