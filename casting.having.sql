 USE Northwind
 
 
 select OrderID, Sum(Quantity) from [Order Details]
  group by OrderID
Having Sum(Quantity)<200



select C.CategoryID, CategoryName,Convert(nvarchar(MAX),C.description)as [Description],sum(UnitsInStock) from Products P join Categories C on C.CategoryID=P.CategoryID
group by C.CategoryID, c.CategoryName,CAST(C.Description as nvarchar (MAX))


select E.FirstName, E.EmployeeID,Sum(UnitPrice*Quantity) as toplam from Orders O 
join [Order Details] OD on O.OrderID = OD.OrderID 
join Employees E on E.EmployeeID=O.EmployeeID
group by E.EmployeeID,E.FirstName 
order by 2



-----Trigger----- 











