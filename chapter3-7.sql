ex);
select
c.CustomerName
from
customers as c
union all
select
e.EmployeeName
from
employees as e
;


1 & 2);
select
'人事' as テーブル名
,d.DepartmentID as id
,d.DepartmentName
from
departments as d
union all
select
'カテゴリ' as テーブル名
,c.CategoryID as id
,c.CategoryName
from
categories as c
order by
テーブル名
,id;

3 & 4);
select
'人事' as テーブル名
,d.DepartmentID as id
,d.DepartmentName
from
departments as d
union all
select
'カテゴリ' as テーブル名
,c.CategoryID as id
,c.CategoryName
from
categories as c
union all
select
'形式' as テーブル名 
,CustomerClassID as ID
,CustomerClassName as 名前
from
customerclasses
union all
select
'県名' as テーブル名 
,p.PrefecturalID as ID
,p.PrefecturalName as 名前
from
prefecturals as p
;

select
s.SaleID
,s.ProductID
,s.Quantity
,c.CustomerClassID
,c.CustomerName
from
sales as s
join
customers as c
on s.CustomerID = c.CustomerID
where
s.Quantity > 10
and
c.CustomerClassID = 2
union all
select
s.SaleID
,s.ProductID
,s.Quantity
,c.CustomerClassID
,c.CustomerName
from
sales as s
join
customers as c
on s.CustomerID = c.CustomerID
where
s.Quantity > 100
and
c.CustomerClassID = 1
;
