--Task 8
SELECT [BusinessEntityID],
       [Name],
       [PurchasingWebServiceURL]
FROM [Purchasing].[Vendor] ORDER BY CASE
                                        WHEN [PurchasingWebServiceURL] IS NULL
                                        THEN 1
                                        ELSE 0
                                    END,
                                    [PurchasingWebServiceURL];