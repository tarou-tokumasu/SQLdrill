select
p.ProductID
,p.ProductName
from
products as p
where
not exists
(
select
ProductID
from
sales as s
where
p.ProductID = s.ProductID
)
;

select
*
,
(
select
max(amount)
from
salary
where
e.EmployeeID = salary.EmployeeID
) as max
from
employees as e
where
e.EmployeeID in (
select
EmployeeID
from
salary
group by
EmployeeID
having
max(Amount) >= 300000
)
;

select
s.SaleID
,s.Quantity
,s.CustomerID
,(select
	c.CustomerName
	from
	customers as c
	where
	c.CustomerID = s.CustomerID
) as 顧客名
,	(
	 select
	 p.ProductName
	 from
	 products as p
	 where
	 p.ProductID = s.ProductID
	) 商品名
from
sales as s
where
s.Quantity >=100
;

select
*
,
	(
	select
	pp.ProductName
	from
	products as pp
	where
	pp.ProductID = p.ProductID
	) as しょうひん
from
products as p
where
p.ProductID in
	(
	select
	ProductID
	from
	sales
	group by
	ProductID
	having
	sum(Quantity) >=100
	)
;
