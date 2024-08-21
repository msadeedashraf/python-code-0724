 --Select everything from a table_name
  select * from SalesLT.Customer --847


  select * from SalesLT.CustomerAddress as ca --417
  order by ca.AddressID

  select * from SalesLT.Address as a --450
  order by a.AddressID

--Subquery  
  select * from SalesLT.Customer as c ---106
  where c.CustomerID in (
							select ca.CustomerID from SalesLT.CustomerAddress as ca--107
							where ca.AddressID in (
													select a.AddressID from SalesLT.Address as a--115
													where a.CountryRegion= 'Canada'
													)
  
						)

--joins ---SQL89
select * from SalesLT.Customer as c, SalesLT.CustomerAddress as ca,SalesLT.Address as a
where c.CustomerID = ca.CustomerID
and ca.AddressID = a.AddressID
and a.CountryRegion= 'Canada'


--joins ---SQL92
select * from SalesLT.Customer as c  
inner join SalesLT.CustomerAddress as ca
on c.CustomerID = ca.CustomerID
inner join SalesLT.Address as a
on ca.AddressID = a.AddressID
and a.CountryRegion= 'Canada'

 --select all column and rows from a table
 SELECT * FROM SalesLT.Product;
 
 
 --select all column and rows from a table and assigning a alias
 SELECT * FROM SalesLT.Product as p;
 
 --selecting column from the table
 SELECT p.Name,p.StandardCost, p.ListPrice FROM SalesLT.Product as p;


 SELECT Name,ListPrice ,StandardCost, ListPrice - StandardCost
 FROM SalesLT.Product;

 SELECT Name AS ProductName, ListPrice - StandardCost AS Markup
 FROM SalesLT.Product;

 SELECT ProductNumber, Color, Size, Color + ', ' + Size AS ProductDetails
FROM SalesLT.Product;

 SELECT ProductNumber, cOLoR, Size, Color + ', ' + Size AS ProductDetails
FROM SalesLT.Product;

select c.FirstName+' ' + c.MiddleName+' ' +c.LastName as 'Full Name' from SalesLT.Customer as c
