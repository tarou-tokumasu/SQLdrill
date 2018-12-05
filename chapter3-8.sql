0)
select
CustomerName as 氏名
from
customers
union
select
EmployeeName
from
employees
order by
氏名
;

1);
select
CustomerID as id
,CustomerName as 氏名
from
customers
union
select
EmployeeID
,EmployeeName
from
employees
order by
氏名
;

2);
select
EmployeeID as id
,EmployeeName as 氏名
from
employees
union
select
EmployeeID
,EmployeeName
from
employees
order by
ID
;

3);
select
ProductID
from
products
union
select
ProductID
from
sales
order by
ProductID
;

4);
select
CustomerID
,ProductID
from
sales
where
SaleDate  between '2006-10-01' and '2006-12-31'
and
Quantity >=10
union
select
CustomerID
,ProductID
from
sales
where
SaleDate  between '2007-01-01' and '2007-03-31'
and
Quantity >=10
;
