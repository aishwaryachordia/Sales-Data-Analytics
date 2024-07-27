SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[SalesAmount]
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where left(OrderDateKey,4)>=YEAR(GETDATE())-6
  order by OrderDateKey asc

  --checking sales of Product Road 150-Red 162 in Perth city
  select sum(SalesAmount) as SalesAmount from [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where CustomerKey in 
  (select c.customerKey
  from  [AdventureWorksDW2019].[dbo].[DimCustomer] c  
  inner join [AdventureWorksDW2019].[dbo].[DimGeography] g
  on c.GeographyKey=g.GeographyKey where City='Perth')
 
