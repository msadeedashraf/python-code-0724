SELECT p.ProductID, m.Name AS Model, p.Name AS Product
FROM SalesLT.Product AS p, SalesLT.ProductModel AS m
WHERE p.ProductModelID = m.ProductModelID;

select p.ProductModelID, p.ProductID,  p.Name AS Product from SalesLT.Product AS p --295

select m.ProductModelID, m.Name AS Model from SalesLT.ProductModel AS m --128

ProductID	Product							Model
680			HL Road Frame - Black, 58		HL Road Frame
707			Sport-100 Helmet, Red			Sport-100

select distinct p.ProductModelID from SalesLT.Product p

--SQL89
select p.ProductID,  p.Name AS Product, m.Name AS Model from SalesLT.Product AS p , SalesLT.ProductModel AS m
where m.ProductModelID = p.ProductModelID
order by 1

--SQL92
select p.ProductID,  p.Name AS Product, m.Name AS Model
from SalesLT.Product AS p join SalesLT.ProductModel m on m.ProductModelID = p.ProductModelID
order by 1


use TSQL

select * from hr.Employees--9



select sum(A.total_invoice) from (
					select od.unitprice*od.qty total_invoice from sales.OrderDetails od
					where od.orderid in (select o.orderid from Sales.Orders o---830
					where o.empid = 1
					) )  as A

)



select sum(od.unitprice*od.qty )total_invoice from sales.OrderDetails od
					where od.orderid in (select o.orderid from Sales.Orders o---830
					where o.empid = 1)

select e.empid, e.lastname, e.firstname from hr.Employees e--9

select o.orderid, o.empid from Sales.Orders o


select e.lastname , o.empid, Sum(od.unitprice*od.qty) Total_sales 
from sales.OrderDetails od ,  Sales.Orders o, hr.Employees e
where od.orderid = o.orderid 
and e.empid = o.empid
group by e.lastname, o.empid
order by 2

lastname	firstname		total_sales
Davis		Sara			202143.71
Funk		Don
Lew			Judy
Peled		Yael
Buck		Sven
Suurs		Paul
King		Russell
Cameron		Maria
Dolgopyatova	Zoya

--SQL92
select e.lastname , o.empid, Sum(od.unitprice*od.qty) Total_sales 
from sales.OrderDetails od  inner join  Sales.Orders o
on od.orderid = o.orderid 
inner join  hr.Employees e on e.empid = o.empid
group by e.lastname, o.empid
order by 2


use AdventureWorks2019

SELECT od.SalesOrderID, m.Name AS Model, p.Name AS ProductName, od.OrderQty
FROM Production.Product AS p
INNER JOIN Production.ProductModel AS m
    ON p.ProductModelID = m.ProductModelID
INNER JOIN Sales.SalesOrderDetail AS od
    ON p.ProductID = od.ProductID
ORDER BY od.SalesOrderID;


