--Cleansed DIM_Customers Table-- 
SELECT 
	  c.CustomerKey as [Customer Key],
      c.FirstName as [First Name],
      c.LastName as [Last Name],
	  c.FirstName+''+c.LastName as [Full Name],
      case c.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender,
	  c.datefirstpurchase as DateFirstPurchase
	  ,g.City as [Customer City]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  left join [AdventureWorksDW2019].[dbo].[DimGeography] as g on c.GeographyKey=g.GeographyKey order by	[Customer Key]
