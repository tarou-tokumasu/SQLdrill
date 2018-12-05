select
x.ProductID
,x.ProductName
,x.am6 as 6月販売金額
,x.am7 as 7月販売金額
,case
	when x.am6 < x.am7 then '↑'
	when x.am6 = x.am7 then '→'
	else '↓'
 end as 対6月増減
,x.am8 as 8月販売金額
,case
	when x.am7 < x.am8 then '↑'
	when x.am7 = x.am8 then '→'
	else '↓'
 end as 対8月増減
from
	(
	select
	s.ProductID
	,p.ProductName
	,sum(case
			when date_format(s.SaleDate , '%Y-%d') = '2007-06' then s.Quantity * p.Price
			else 0
	     end) as am6
	,sum(case
			when date_format(s.SaleDate , '%Y-%d') = '2007-07' then s.Quantity * p.Price
			else 0
	     end) as am7
 	,sum(case
			when date_format(s.SaleDate , '%Y-%d') = '2007-08' then s.Quantity * p.Price
			else 0
	     end) as am8
	from
	sales s
	left outer join
	products p
	on p.ProductID = s.ProductID
	group by
	p.ProductID
	,p.ProductName
	) as x
;
