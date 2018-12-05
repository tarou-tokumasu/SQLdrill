select
pr.PrefecturalID
,pr.PrefecturalName
,p.ProductName
,sum(s.Quantity * p.Price) as 合計販売
from
sales s
join
products p
on s.ProductID = p.ProductID
join
customers c
on c.CustomerID = s.CustomerID
join
prefecturals pr
on pr.PrefecturalID = c.PrefecturalID
group by
pr.PrefecturalID
,pr.PrefecturalName
,p.ProductName
;
