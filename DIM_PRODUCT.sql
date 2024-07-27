--Cleansed DIM_Products Table--
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] as [Product Item Code],
      p.[EnglishProductName] as [Product Name],
	  ps.EnglishProductSubcategoryName as [Sub Category],
	  pc.EnglishProductCategoryName as [Product Category]
      ,[Color]
      ,[Size]
      ,[ModelName]
      ,p.[EnglishDescription] as [Product Description],
	  ISNULL(p.Status,'Outdated') as [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  left join [AdventureWorksDW2019].[dbo].[DimProductSubcategory] as ps on ps.ProductSubcategoryKey=p.ProductSubcategoryKey
  left join [AdventureWorksDW2019].dbo.DimProductCategory as pc on pc.ProductCategoryKey=ps.ProductSubcategoryKey order by p.ProductKey asc
