
create view SatisRaporlari as
select FirstName Adı,LastName Soyadı,TitleOfCourtesy Ünvanı,Title Görevi,
HireDate [İşe başlama tarihi],CompanyName  [Firma adı],ContactName as [Firma Temsilci adı],
Phone [Firma Telefonu] ,Quantity [Sifarişin adeti],OD.UnitPrice [Satış Fiyatı],
ProductName [Ürünün adı] ,UnitsInStock [Stok miktarı],P.UnitPrice [Birim fiyatı],
CategoryName [Kategori adı]
from Employees E 
join Orders O on E.EmployeeID=O.EmployeeID 
join Customers C on O.CustomerID=C.CustomerID
join [Order Details] OD on O.OrderID = OD.OrderID
join Products P on OD.ProductID = P.ProductID
join Categories CA on P.CategoryID = P.CategoryID



alter view Kategoriler as
select CategoryID,CategoryName, [Description] from Categories

select *  from Categories



insert into Kategoriler (CategoryName,Description) values ('kategori adi','Ekleme iselmi basrisiz olacak')


delete from Kategoriler where CategoryId>8



select * from Employees where City='London'

--create view OgrenciListesi 
alter view OgrenciListesi 
--with encryption
as select EmployeeID OgrencId , FirstName Adi,LastName SoyAdi,City Sehir  from Employees
where City = 'London'
with check option 

select * from OgrenciListesi 


insert into Ogrencilistesi  values ('Mehmet','vuranok','Baku')



SELECT TOP (100) PERCENT EmployeeID AS OgrencId, FirstName AS Adi, LastName AS SoyAdi, City AS Sehir
FROM      dbo.Employees
WHERE   (City = 'London')
ORDER BY OgrencId

--1) Yol
select TitleOfCourtesy,FirstName,LastName from Employees where FirstName='Michael'
--2) yol
select TitleOfCourtesy,FirstName,LastName from Employees where FirstName like  'Michael'

select TitleOfCourtesy,FirstName,LastName from Employees where LEFT(FirstName,1)='A'



--2.yol

select TitleOfCourtesy,FirstName,LastName from Employees where FirstName like  'A%'

--Soyadinin son harfi n olanlARI TAPIN 

select TitleOfCourtesy,FirstName,LastName from Employees where LastName like  '%N'














