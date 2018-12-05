1);
insert
into employees
(
EmployeeID
,EmployeeName
,Height
,Weight
,EMail
,HireFiscalYear
,Birthday
,BloodType)
values
(
31
,'モクモク'
,170
,160
,'moku@nekoyasudo'
,2007
,'1989-08-08'
,'AB')
;

insert
into belongto
(
BelongID
,EmployeeID
,DepartmentID
,StartDate
)
values
(
35
,31
,1
,'2007-09-01')
;

insert
into sales
(
SaleID
,Quantity
,CustomerID
,ProductID
,EmployeeID
,SaleDate)
values
(
1006
,10
,1
,40
,31
,'2007-09-10')
;

insert
into salary
(
SalaryID
,EmployeeID
,PayDate
,Amount)
values
(
354
,31
,'2007-09-05'
,100000)
;

insert
into customers
(CustomerID
,CustomerName
,Address
,CustomerClassID
,PrefecturalID)
values
(
31
,'有限会社貉商会'
,'和歌山県吉野郡'
,1
,30)
