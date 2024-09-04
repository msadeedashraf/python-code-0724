SELECT emp.FirstName, ord.Amount
FROM HR.Employees AS emp
INNER JOIN Sales.Orders AS ord
    ON emp.EmployeeID = ord.EmployeeID;


	select * from hr.employees e --9
	
	select  year(o.orderdate), count(*) from Sales.Orders o ---830
	where o.empid = 1
	group by year(o.orderdate)

	select  count(*) from Sales.Orders o ---830
	where o.empid = 1
	


	select  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry, e.lastname employee
	from Sales.Orders o 
	, hr.Employees e
	, sales.Customers c
	where o.empid = e.empid
	and o.custid = c.custid


select * from sales.customers	---91

select * from sales.Orders



select  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry
from Sales.Orders o 
	inner join sales.Customers c
	on o.custid = c.custid


	select  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry
from Sales.Orders o 
	full outer join sales.Customers c
	on o.custid = c.custid
	where  o.custid is null 


	select  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry
from Sales.Orders o 
	inner join sales.Customers c
	on o.custid = c.custid
	



	select  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry
from Sales.Orders o 
	full outer join sales.Customers c
	on o.custid = c.custid
	

	select  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry
from  sales.Customers c 
	left outer join Sales.Orders o
	on o.custid = c.custid
	

	select c.city,  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry
from Sales.Orders o 
	right outer join sales.Customers c
	on o.custid = c.custid
	

	select e.city, e.lastname from hr.employees as e

select e.empid, e.lastname, e.firstname, e.title, m.managername from hr.employees as e
left join hr.managers as m
on m.empid = e.mgrid


manager

mgrid	mgrname
1		Davis Sara
2		Funk Don
3		Lew Judy
5		Buck Sven


select * from hr.Employees


select e.empid, e.lastname, e.firstname, e.title, m.lastname from hr.employees 	as e
left join hr.employees as m
on e.mgrid = m.empid


--create a new table from another table 
select a.* into hr.managers
from 
(
select empid, firstname+' '+lastname ManagerName from hr.employees 
where empid in (select distinct mgrid from  hr.employees where mgrid is not null )
) a


select a.* into hr.employees2
from 
(
select * from hr.employees 
where 1 >2
) a


select a.* into hr.employees3
from 
(
select * from hr.employees 

) a


select * from hr.managers







	select  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry
from Sales.Orders o 
	left outer join sales.Customers c
	on o.custid = c.custid
	

	select  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry
from Sales.Orders o 
	right outer join sales.Customers c
	on o.custid = c.custid
	

	select  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry
from sales.Customers c   left outer join Sales.Orders o
	on o.custid = c.custid
	

	select  o.custid,c.contactname , o.orderdate, o.shipname, o.shipcity, o.shipcountry
from  sales.Customers c right outer join Sales.Orders o
	on o.custid = c.custid
	







	select * from sales.OrderDetails od --2155
