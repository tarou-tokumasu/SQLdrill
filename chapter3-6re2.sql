select
*
from
sales as s1
join
products as p
on p.ProductID = s1.ProductID
where
s1.Quantity > 
				(
				select
				avg(s2.Quantity)
				from
				sales as s2
				where
				s1.ProductID = s2.ProductID
				)
;


select
p.ProductID
,p.ProductName
,s.Quantity
from
products as p
join
sales as s
on p.ProductID = s.ProductID
where
s.Quantity = (
				select
				max(s2.Quantity)
				from
				sales as s2
				where
				s2.ProductID = p.ProductID
				)
group by
p.ProductID
;


select
*
from
products as p
where
not exists
	(
	select
	'x'
	from
	sales as s
	where
	p.ProductID = s.ProductID
	)
;

select
b.ProductID
,b.ProductName
,a.qu
from
	(
	select
	s.ProductID
	,max(s.Quantity) as qu
	from
	sales as s
	group by
	s.ProductID
	) as A
join products as B
on A.ProductID = B.ProductID
	;
	
select
*
,
(select
  max(Quantity) /10
  from
  sales
  where
  sales.ProductID = p1.ProductID
  ) as max_waru_10
,
(select
  avg(Quantity)
  from
  sales
  where
  sales.ProductID = p1.ProductID
  ) as avg
from
products as p1
where
ProductID in
			(
			select
			ProductID
			from
			sales as s
			group by
			ProductID
			having
			avg(s.Quantity) < max(Quantity) / 10)
;
