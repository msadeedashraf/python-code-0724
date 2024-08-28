SELECT  p.Name --ProductCategoryID AS Category, ProductName
FROM Production.Product p 
ORDER BY Category ASC, Price DESC;

SELECT TOP 10 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

select distinct a.City, a.StateProvince 
from SalesLT.Address a
order by a.city asc

select * --p.Color,p.ProductNumber,  p.Size, p.Name 
from SalesLT.Product as p

--Identity --seeding