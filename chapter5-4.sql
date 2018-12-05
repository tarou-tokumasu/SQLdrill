select
pr.ProductID
,pr.ProductName
,x.ym
,sum(x.am * pr.Price)
from
products pr
left outer join
 (
 select
 s.ProductID
 ,date_format(s.SaleDate , '%Y-%m') as ym
 ,s.Quantity as am
 ,p.CategoryID as ca
 from
 products p
 join
 sales s
 on p.ProductID = s.ProductID
 ) as X
 on pr.ProductID = x.ProductID
where
x.ca in (1,3,9)
group by
pr.ProductID
,pr.ProductName
,x.ym
having
sum(x.am * pr.Price) >5000
order by
pr.ProductID
,pr.ProductName
,x.ym desc
;
