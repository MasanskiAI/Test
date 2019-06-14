--1. Write a query over Document table that return Title and DocumentSummary ordered by Title (Titles that have specified DocumentSummary should apper first in ASC order)
--Output: Title, DocumentSummary
SELECT [Title]
      ,[DocumentSummary]
  FROM [Production].[Document]
  ORDER BY CASE WHEN [DocumentSummary] IS NULL THEN 1 ELSE 0 END, [Title];