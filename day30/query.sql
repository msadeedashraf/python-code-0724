 SELECT SalesLT.Product.Name AS ProductName, SalesLT.ProductCategory.Name AS Category
 FROM SalesLT.Product
 INNER JOIN SalesLT.ProductCategory
 ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID;

 select p.name from  SalesLT.Product as p --295
 select c.name from   SalesLT.ProductCategory c--41

	 select p.name  , c.name
	 from  SalesLT.Product as p inner join SalesLT.ProductCategory c
	 on p.ProductCategoryID = c.ProductCategoryID


SELECT oh.OrderDate, oh.SalesOrderNumber, p.Name AS ProductName, od.OrderQty, od.UnitPrice, od.LineTotal
 FROM SalesLT.SalesOrderHeader AS oh
 JOIN SalesLT.SalesOrderDetail AS od
     ON od.SalesOrderID = oh.SalesOrderID
 JOIN SalesLT.Product AS p
     ON od.ProductID = p.ProductID
 ORDER BY oh.OrderDate, oh.SalesOrderID, od.SalesOrderDetailID;

 transaction_table
 transactionDetails_table

 salesorder
 salesorderdetails


 select * FROM SalesLT.SalesOrderHeader AS oh
 where oh.SalesOrderID = 71780
 select * FROM SalesLT.SalesOrderDetail AS od
 where od.SalesOrderID = 71780
 select * from SalesLT.product as p
 where p.ProductID in (836, 822)



 
 select b.OrderDate,B.SalesOrderNumber, B.ProductName, B.OrderQty, B.UnitPrice, B.LineTotal, A.InvoiceTotal from 
 
 (
 SELECT  sum(od.LineTotal) InvoiceTotal
 FROM SalesLT.SalesOrderHeader AS oh
 JOIN SalesLT.SalesOrderDetail AS od
     ON od.SalesOrderID = oh.SalesOrderID
 JOIN SalesLT.Product AS p
     ON od.ProductID = p.ProductID
where oh.SalesOrderID = 71786

 ) as a
 ,
 (
 SELECT oh.OrderDate, oh.SalesOrderNumber, p.Name AS ProductName, od.OrderQty, od.UnitPrice, od.LineTotal
 FROM SalesLT.SalesOrderHeader AS oh
 JOIN SalesLT.SalesOrderDetail AS od
     ON od.SalesOrderID = oh.SalesOrderID
 JOIN SalesLT.Product AS p
     ON od.ProductID = p.ProductID 
	 where oh.SalesOrderID = 71786
 ) AS b
 
 ORDER BY oh.OrderDate, oh.SalesOrderID, od.SalesOrderDetailID;




 customertable
 customeraddresses 
 
 paymentmethods


 815
  SELECT * FROM SalesLT.Customer---847
  SELECT * FROM SalesLT.SalesOrderHeader --32
 
 
 SELECT c.FirstName, c.LastName, oh.SalesOrderNumber
 FROM SalesLT.Customer AS c
 INNER JOIN SalesLT.SalesOrderHeader AS oh
     ON c.CustomerID = oh.CustomerID
 ORDER BY c.CustomerID;

 SELECT c.FirstName, c.LastName, oh.SalesOrderNumber
 FROM      SalesLT.SalesOrderHeader AS oh RIGHT OUTER JOIN SalesLT.Customer AS c
     ON c.CustomerID = oh.CustomerID
	 WHERE SalesOrderNumber IS NULL 
 ORDER BY c.CustomerID;



 SELECT p.Name, c.FirstName, c.LastName, c.EmailAddress
 FROM SalesLT.Product AS p
 CROSS JOIN SalesLT.Customer AS c;