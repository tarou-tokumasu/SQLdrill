ex;

select
p.ProductName
,s.SaleDate
from
sales as s
join
products as p
on s.ProductID = p.ProductID
where
s.Quantity >
	(
	select
	avg(Quantity)
	from
	sales as s2
	where
	s.ProductID = s2.ProductID
	)
order by p.ProductID ,s.SaleDate desc
;


ex2;
select
*
from
products
where
not exists
(
select
'x'
from
sales
where
products.ProductID = sales.ProductID
)
;

select distinct
 s.ProductID
,p.ProductName
,s.Quantity
from
products as p
 join
sales as s
 on p.ProductID = s.ProductID
where
 s.Quantity =(
   select
    max(Quantity)
   from
	sales as s2
   where
    s.ProductID = s2.ProductID
  )
 order by
  p.ProductID
;

select
*
from
products as p
where
 not exists(
	select
	'X'
	from
	sales as s
	where
	s.ProductID = p.ProductID
)
;

select
B.ProductID
,B.ProductName
,A.Qu
from
(
 select
 ProductID
 ,max(Quantity) as Qu
 from
  sales
 group by
  ProductID
) as A
 join
 products as B
 on A.ProductID = B.ProductID
;
