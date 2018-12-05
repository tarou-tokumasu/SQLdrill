select
c.CustomerID
,c.CustomerName
,p.ProductName
,sum(p.Price * s.Quantity) as 合計販売金額
from
sales s
join
customers c
on c.CustomerID = s.CustomerID
join
products p
on p.ProductID = s.ProductID
group by
c.CustomerID
,p.ProductID
,p.ProductName
order by
c.CustomerID
,p.ProductID
,p.ProductName
