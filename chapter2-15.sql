select
ProductName
,price
from
products
order by
price
;

select
EmployeeID
,EmployeeName
,Birthday
from
employees
order by
Birthday
;

select
SaleID
,Quantity
,CustomerID
,ProductID
,SaleDate
from
sales
order by
CustomerID
,ProductID
,SaleDate desc
;

select
CategoryID as 商品数
,count(*) 
from
products
where
price<=1000
group by
CategoryID
having
count(*) < 5
order by
CategoryID
;

select
EmployeeID
,sum(amount)
from
salary
group by
EmployeeID
order by
sum(amount) desc
;

select
DepartmentID
,count(*)
from
belongto
where
EndDate is null
group by
DepartmentID
order by
count(EmployeeID)
;
