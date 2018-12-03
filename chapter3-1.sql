select
*
from 
products
where
ProductID not in (
					select
					 ProductID
					from
					 sales
				)
;

select
 EmployeeID
,EmployeeName
from
 employees
where
 EmployeeID IN
 (
  select
   EmployeeID
  from
   Salary
  group by
   EmployeeID
  having
   max(amount) >=300000
 )
;
客名引き出すための問い合わせ;
select
saleid
,Quantity
,CustomerID
,(
 	select
	CustomerName
	from
	customers
	where
	CustomerID = sales.CustomerID
 ) as 顧客名
,(
	select
	ProductName
    from
	products
	where
	sales.ProductID = ProductID	
) as 商品名
from
sales
where
Quantity >=100
;

select
 ProductID
,ProductName
,(
	select
	sum(Quantity)
	from
	 sales
	where
	products.ProductID = ProductID
	group by
	ProductID 
)as 量数

from
 products
 where ProductID in(
 	select
	ProductID
	from
	sales
	group by
	ProductID
	having
	sum(Quantity) >=100
 );
 
 select
 EmployeeID
 ,EmployeeName
 ,(
 	select
	 max(amount)
	from
	 salary
	where
	 EmployeeID = employees.EmployeeID
 	) as 最高金額
 from
 employees
 where EmployeeID in
  		(
  		select
		 EmployeeID
		from
		 salary
		group by
		 EmployeeID
		having
		 max(amount) >=300000
 			) ;
			
select
 saleid
,Quantity
,CustomerID
,(
	select
	CustomerName
	from
	customers
	where
	CustomerID = sales.CustomerID
) as 顧客名
,(
	select
	ProductName
	from
	products
	where
	ProductID = sales.ProductID
) as 商品名
from
sales
where
 Quantity >=100 ;
 
select
*
from
products
where
ProductID in (1,3,4)
;

