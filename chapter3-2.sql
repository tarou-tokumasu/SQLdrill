短縮形;
select
e.EmployeeID
,e.EmployeeName
from
employees as e
;

;fromの次にjoin;
select
customers.PrefecturalID
,prefecturals.PrefecturalName as 県名
,count(*) as 顧客数
from
customers
join
prefecturals 
on customers.PrefecturalID = prefecturals.PrefecturalID
where
 customers.CustomerClassID = 1
group by
customers.PrefecturalID
,prefecturals.PrefecturalName
;

select
a.EmployeeName
,b.PayDate
,b.Amount
from
employees as a
join
salary as b
on
a.EmployeeID=b.EmployeeID
order by
a.EmployeeID
;

select
d.ProductID
,d.ProductName as 商品名
,a.Quantity as 合計
from
 sales as a
join
 customers as b
 on a.CustomerID = b.CustomerID
join
 employees as c
 on a.EmployeeID = c.EmployeeID
join
 products as d
 on a.ProductID = d.ProductID
where
 a.Quantity >=200
;

select
a.ProductID
,b.ProductName
,sum(a.Quantity) as 合計数量
from
sales as a
join
products as b
on a.ProductID = b.ProductID
group by
 a.ProductID
having
sum(a.Quantity) >=300
;

select
a.Quantity
,b.CustomerName
,c.EmployeeName
,d.ProductName
from
sales  a
,customers b
,employees c
,products d
where
b.CustomerID = a.CustomerID
and
c.EmployeeID = a.EmployeeID
and
d.ProductID = a.ProductID
and
a.Quantity >=200
;

select
b.PrefecturalName 県名
,a.CustomerName 顧客名
,c.CustomerClassName 形式
from
customers a
,prefecturals b
,customerclasses c
where
a.PrefecturalID= b.PrefecturalID
and
a.CustomerClassID = c.CustomerClassID
order by
b.PrefecturalID
;
