--¹ 6. Show total UnitPriceof each SalesOrderID in the year 2005.
SELECT SalesOrderID, SUM(UnitPrice) AS TotalUnitPrice
FROM  Sales.SalesOrderDetail
WHERE ModifiedDate BETWEEN '20050101' AND '20051231'  
GROUP BY SalesOrderID 
ORDER BY SalesOrderID  