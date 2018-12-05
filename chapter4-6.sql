----ex
update
salary
set
amount =
amount +
(select
(2000 - e.HireFiscalYear)* 1000
from
employees as e
where
e.EmployeeID = salary.EmployeeID)
where
PayDate = '2008-02-14'
and
exists
(
select
'X'
from
employees as e
where
salary.EmployeeID = e.EmployeeID)
;

------1
update
customers as c
set
Address = concat
((select
p.PrefecturalName
from
prefecturals as p
where
p.PrefecturalID = c.PrefecturalID),address)
where
exists
(select
'S'
from
prefecturals as p
where
c.PrefecturalID = p.PrefecturalID)
;

------2
update
salary
set
amount= amount +
	(select
	sum(s.Quantity * p.Price) * 0.03
	from
	sales as s
	join
	products as p
	on p.ProductID = s.ProductID
	where
	s.SaleDate < '2007-08-25'
	and
	salary.EmployeeID = s.EmployeeID
	)
where
PayDate = '2007-08-25'
and
exists
(
select
'X'
from
sales as s
where
s.EmployeeID = salary.EmployeeID)
;
-------3
update
products as p
set
price = 
(select
avg(s.Quantity * p.Price)
from
sales as s
where
s.ProductID = p.ProductID
)
where
exists
(select
'X'
from
sales as s
where
p.ProductID = s.ProductID )
;

-------4
update
products as p
set
ProductName =
	concat(p.ProductName , '(' ,
		(
		select
		c.CategoryName
		from
		categories as c
		where
		c.CategoryID = p.CategoryID
		)
		, ')'
	)
where
exists
(
select
'X'
from
categories as c
where
c.CategoryID = p.CategoryID)
;
--------5
update
products as p
set
 ProductName =
	concat((
	select
	sum(s.Quantity)
	from
	sales as s
	where
	p.ProductID = s.ProductID
	)
	,'個も売れてる人気商品！', p.ProductName)
where
(select
sum(s.Quantity)
from
sales as s
where
s.ProductID =p.ProductID) >=500
;
