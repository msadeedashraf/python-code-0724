
use AdventureWorks

select sum(A.individual_count) from (
select a.CountryRegion,count(*) individual_count  from SalesLT.Address as a--450
group by a.CountryRegion
) A

select a.CountryRegion,city, count(*) individual_count  from SalesLT.Address as a--450
group by a.CountryRegion,city
order by CountryRegion desc, city desc




SELECT OrderDate, COUNT(salesOrderID) AS Orders
FROM SalesLT.SalesOrderHeader
GROUP BY OrderDate
HAVING COUNT(salesOrderID) > 1
ORDER BY OrderDate DESC;


use TSQL
select * from Sales.Orders

SELECT OrderDate, COUNT(OrderID) AS Orders
FROM Sales.Orders
GROUP BY OrderDate
--HAVING COUNT(OrderID) > 1
ORDER BY 2 DESC;

select * from SalesLT.Address as a
where a.city = 'Toronto'


having count(*) > 50
order by 2 desc
