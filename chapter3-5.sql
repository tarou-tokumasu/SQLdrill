select
p1.ProductName
,p2.ProductName
,(p1.Price + p2.Price) as セット価格
from
products as p1
join
products as p2
on p1.ProductID > p2.ProductID
and p1.CategoryID <> p2.ProductID
where
(p1.Price + p2.Price) > 2500
;

問1;
select
p1.ProductName as 商品名1
,p2.ProductName as 商品名2
from
products as p1
join
products as p2
on p1.ProductID < p2.ProductID
and p1.CategoryID = p2.CategoryID
;

問2;
select
c1.CustomerName as 顧客名1
,c2.CustomerName as 顧客名2
from
customers as c1
join
customers as c2
on c1.CustomerID < c2.CustomerID
and c1.PrefecturalID = c2.PrefecturalID
and c1.CustomerClassID = c2.CustomerClassID
where
c1.PrefecturalID <> 13
;

Q3;
select
c1.Birthday as 年下
,c2.Birthday as 年上
from
employees as c1
join
employees as c2
on c1.EmployeeID > c2.EmployeeID
and c1.Birthday > c2.Birthday
;

q4;
select
c1.CategoryName as cate1
,c2.CategoryName as cate2
from
categories as c1
join
categories as c2
on c1.CategoryID > c2.CategoryID

