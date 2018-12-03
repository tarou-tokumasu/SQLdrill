select
 p.ProductName
,s1.SaleDate
,s1.Quantity
from
 sales as s1
 join
products as p
 on s1.ProductID = p.ProductID
where
s1.Quantity > 
		(
		select
		 avg(Quantity)
		from
		 sales as s2
		where
		 s1.ProductID = s2.ProductID
		)
order by p.ProductID
,s1.SaleDate desc
;

select
*
from
products
where
 not exists
 (
  select
   *
  from
   sales
  where
   products.ProductID = sales.ProductID
  )
;

q3;
select distinct
p.ProductID
,p.ProductName
,s.Quantity
from
sales as s
join
products as p
on s.ProductID = p.ProductID
where
s.Quantity =
	(
	select
	max(Quantity)
	from
	sales as c
	where
	s.ProductID = c.ProductID	
	)
order by
 p.ProductID
;

select distinct
a.ProductID
,b.ProductName
,a.Quantity
from
 sales as a
join
 products as b
  on a.ProductID = b.ProductID
 where
  a.Quantity =(
   select
    max(Quantity)
   from
    sales as c
   where
    a.ProductID = c.ProductID
  )
 order by
 a.ProductID
 ;
 
 q2;
 select
 p.ProductID
,p.ProductName
 from
 products as p
 where
  exists(
  	select
	*
	from
	sales as s
	where
	p.ProductID = s.ProductID
  )
 ;
 
 select
 a.ProductID
 ,a.ProductName
 from
 products as a
 where
 not exists(
  select
   *
  from
   sales as b
  where
   a.ProductID = b.ProductID
 )
 ;
 
 q4;
 select
  a.ProductID
 ,b.ProductName
 ,a.Qu
 from
 (select
 ProductID
 ,max(Quantity) as Qu
  from
  sales
  group by
  ProductID
  ) as a
  join
  products as b
   on a.ProductID = b.ProductID
   order by
   a.ProductID;
  
  
 q5;
 select
 *
 from
 products as p
 where
  ProductID in
  (
   select
    ProductID
   from
    sales as b
   where
    p.ProductID = b.ProductID
   having
    avg(Quantity) <= max(Quantity) / 10
   )
  order by
  ProductID
 ;
