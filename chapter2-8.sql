書き順
select + ;
from
where　条件
列名;

select
EmployeeName as 氏名
from
employees
where
height >=180
;

select
ProductName 
from
products
where
price>=2500
;

select
 EmployeeName 
,weight
from
 employees
where
 weight >=70
;

select
 EmployeeName
,height
from
employees
where
height between 160 and 180
;

select
saleid
from
sales
where
saledate >= '2007-06-01' 
;

select
employeename
,height
,weight
from
employees
where 
height >=170
and
weight >=60
;


