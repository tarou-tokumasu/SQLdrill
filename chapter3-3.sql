select
c.DepartmentName as 部門名
,avg(a.Amount) as 部門別平均給与額
from
salary  a
,belongto b
,departments c
where
b.EmployeeID = a.EmployeeID
and
c.DepartmentID = b.DepartmentID
group by
 c.DepartmentName
;

select
c.CategoryID
,c.CategoryName as カテ名
,sum(s.Quantity) as 合計
from
sales s
,products p
,categories c
where
s.ProductID = p.ProductID
and
p.CategoryID = c.CategoryID
group by
 p.CategoryID
;

select
sum(s.Quantity) as 合計数量
,p.PrefecturalID
,p.PrefecturalName as 県名
from
sales s
,customers c
,prefecturals p
where
s.CustomerID = c.CustomerID
and
c.PrefecturalID = p.PrefecturalID
group by
 p.PrefecturalID
;

select
max(s.Quantity) as 最大数量
,cc.CustomerClassID
,max(cc.CustomerClassName)
from
 sales s
,customers c
,customerclasses cc
where
 s.CustomerID = c.CustomerID
and
 c.CustomerClassID = cc.CustomerClassID
group by
c.CustomerClassID
;

ビューの作成;
create view test2
(aiueo,kakikukeko
)
as
select
d.DepartmentName as 部門名
,avg(s.Amount) as 部門別平均給与額
from
 salary as s
,belongto as b
,departments as d
where
 s.EmployeeID = b.EmployeeID
and
 b.DepartmentID = d.DepartmentID
group by
 d.DepartmentName
;

select 
* 
from 
test 
where 
dpname = '販売'
;
