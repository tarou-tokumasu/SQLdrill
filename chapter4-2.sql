insert
into salary
(salaryID
,EmployeeID
,PayDate
,Amount)
select
 s.EmployeeID + 100000
 ,s.EmployeeID
 ,'2008-02-14'
 ,sum(s.Quantity * p.Price * 0.001)
from
 sales as s
  join
 products as p
  on s.ProductID = p.ProductID
 group by
 s.EmployeeID + 100000
 ,s.EmployeeID
;

insert
into salary
(
SalaryID
,EmployeeID
,PayDate
,Amount)
select
EmployeeID + 20000
,EmployeeID
,'2007-10-01'
,20000
from
employees
where
HireFiscalYear <= 1993
;

insert
into customers
(CustomerID
,CustomerCode
,CustomerName
,Address
,CustomerClassID
,PrefecturalID
)
select
EmployeeID + 10000
,EmployeeID + 10000
,EmployeeName
,'江戸川区西小岩'
,2
,13
from
employees
where
HireFiscalYear <= 1988
;

insert
 into sales
 (
 SaleID
 ,Quantity
 ,CustomerID
 ,ProductID
 ,SaleDate)
 select
 EmployeeID + 30000
 ,10
 ,10
 ,20
 ,'2007-09-01'
 from
 employees
 where
 BloodType = 'O'
;

insert
into sales
(
SaleID
,Quantity
,EmployeeID
,ProductID
,SaleDate)
select
CustomerID + 40000
,20
,5
,21
,'2007-09-05'
from
customers
where
PrefecturalID = 8
;

insert
into sales
(
SaleID
,Quantity
,CustomerID
,EmployeeID
,SaleDate)
select
ProductID + 50000
,30
,15
,2
,'2007-09-10'
from
products
where
CategoryID = 5
;
