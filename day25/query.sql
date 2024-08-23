SELECT Name AS ProductName, Price FROM Production.Product;

select * from Production.Product

SELECT *
--ISNULL(Cellphone, 'None') AS Cellphone 
FROM Sales.Customer;


select * from [Sales].[SalesTerritory]

select * from [Sales].[Store]

select * from [Person].[PersonPhone]


 SELECT Name, ListPrice
 FROM SalesLT.Product
 order by name


  SELECT Name, ListPrice
 FROM SalesLT.Product
 ORDER BY ListPrice DESC;


  SELECT TOP (20) WITH TIES Name, ListPrice
 FROM SalesLT.Product
 ORDER BY ListPrice DESC;

 SELECT TOP (20) Name, ListPrice
 FROM SalesLT.Product
 ORDER BY ListPrice DESC;


 SELECT top 10 Name, ListPrice
 FROM SalesLT.Product
 ORDER BY Name ;


 SELECT  Name, ListPrice
 FROM SalesLT.Product
 ORDER BY Name OFFSET 2 ROWS FETCH NEXT 10 ROWS ONLY



  SELECT ALL Color
 FROM SalesLT.Product;


  SELECT Distinct Color
 FROM SalesLT.Product;

  SELECT Color, count(*)
 FROM SalesLT.Product
 group by color;

 
 select *--Distinct salary 
 from hr.[dbo].[employees]

 select * from hr.[dbo].departments

 

 select * from hr.[dbo].employees as e
 where e.department_id in ( 

 select d.department_id from hr.[dbo].departments as d
 where d.location_id = ( select location_id from hr.[dbo].locations where city = 'London')
 )

 --Not Equal  <>   !=

  SELECT Name, Color, Size
 FROM SalesLT.Product
 WHERE ProductModelID != 6
 ORDER BY Name;


 select * from hr.dbo.employees e 
 where e.email like ''

  SELECT Name, ListPrice
 FROM SalesLT.Product
 WHERE Name LIKE 'HL Road Frame %';

 SELECT Name, ListPrice, ProductNumber
 FROM SalesLT.Product
 WHERE ProductNumber LIKE 'FR-_[0-9][0-9]_-[0-9][0-9]';


SELECT Name, ListPrice, SellEndDate
FROM SalesLT.Product --295
WHERE SellEndDate is not null --98

SELECT Name, ListPrice, SellEndDate
FROM SalesLT.Product
WHERE SellEndDate is null --197


SELECT Name, ListPrice, SellEndDate
FROM SalesLT.Product
WHERE SellEndDate = null --197


SELECT *
FROM SalesLT.Product
WHERE SellEndDate BETWEEN '2006/1/1' AND '2006/12/31';



98 -29 are from 2006

SELECT year(p.SellEndDate), count(*)
FROM SalesLT.Product p
where p.SellEndDate is not null
group by year(p.SellEndDate)


SELECT ProductCategoryID, Name, ListPrice
FROM SalesLT.Product
WHERE ProductCategoryID in  (5,6, 7)



SELECT ProductCategoryID, Count(*)
FROM SalesLT.Product
WHERE ProductCategoryID not in  (5,6, 7)
group by ProductCategoryID
order by 2 desc


SELECT ProductCategoryID, Name, ListPrice, SellEndDate
FROM SalesLT.Product
WHERE ProductCategoryID  IN (5,6,7) 
AND SellEndDate IS not NULL
and SellEndDate BETWEEN '2007/1/1' AND '2007/12/31';



SELECT Name, ProductCategoryID, ProductNumber
FROM SalesLT.Product
WHERE ProductNumber LIKE 'FR%' OR ProductCategoryID IN (5,6,7);