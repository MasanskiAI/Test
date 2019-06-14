--2. Write a query that get all ProductModel names that starts with 'Rear'. Also provide ProductDescription to this Names from [Production].[ProductDescription] table.
--Output: ProductModelName, ProductDescription
--Order by: ProductModelName, ProductDescription
SELECT 
    ProductModelName = pm.Name, 
    ProductDescription = pd.Description
FROM [Production].[ProductModel] pm
    LEFT JOIN [Production].[ProductModelProductDescriptionCulture] pmpdc ON pmpdc.ProductModelID = pm.ProductModelID
    LEFT JOIN [Production].[ProductDescription] pd ON pd.ProductDescriptionID = pmpdc.ProductDescriptionID
WHERE pm.Name LIKE 'Rear%'
ORDER BY pm.Name, pd.Description;