--Task 9
SELECT [SalesOrderID],
       [SalesOrderNumber],
       [OnlineOrderFlag]
FROM [Sales].[SalesOrderHeader]
WHERE (
        (
            [SalesOrderNumber] LIKE 'SO43___'
            OR [SalesOrderNumber] LIKE 'SO44___'
        ) 
        AND [OnlineOrderFlag] = 1
       )
       OR
       (
        NOT
        (
            [SalesOrderNumber] LIKE 'SO43___'
            OR [SalesOrderNumber] LIKE 'SO44___'
        ) 
        AND [OnlineOrderFlag] = 0
       )
    ;