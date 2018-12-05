select
x.ym
,sum(case
	when p.CategoryID = 1 then x.Quantity * p.Price
	else 0
	end) as ct1
,sum(case
	when p.CategoryID = 2 then x.Quantity * p.Price
	else 0
	end) as ct2
,sum(case
	when p.CategoryID = 3 then x.Quantity * p.Price
	else 0
	end) as ct3
,sum(case
	when p.CategoryID = 4 then x.Quantity * p.Price
	else 0
	end) as ct4
,sum(case
	when p.CategoryID = 5 then x.Quantity * p.Price
	else 0
	end) as ct5
,sum(case
	when p.CategoryID = 6 then x.Quantity * p.Price
	else 0
	end) as ct6
,sum(case
	when p.CategoryID = 7 then x.Quantity * p.Price
	else 0
	end) as ct7
from
	(
	select
	 s.ProductID as pid
	,date_format(s.SaleDate , '%Y-%m') as ym
	,s.Quantity
	from
	 sales s
	 ) as x 
join
products p
 on x.pid = p.ProductID 
group by
x.ym
;
