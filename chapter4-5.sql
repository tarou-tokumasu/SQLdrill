--------Ex
update
products
set
price = price * 1.01
where
ProductID in
		(
		select
		 ProductID
		from
		 sales
		group by
		 ProductID
		having
		 sum(Quantity) > 100
		);
		
-------1
update
products
set
price = price * 0.97
where
ProductID not in
		(
		select
		ProductID
		from
		sales
		)
		;
-------2
update
salary
set
Amount = Amount * 0.90
where
PayDate = '2007-10-01'
and
EmployeeID not in
	(select
	EmployeeID
	from
	sales
	group by
	EmployeeID
	having
	count(*) < 10
	)
;
-------3
update
salary
set
Amount = Amount * 1.10
where
PayDate = '2007-10-01'
and
EmployeeID  in
	(select
	EmployeeID
	from
	sales
	group by
	EmployeeID
	having
	count(*) > 50 
	)
;
-------4
update
salary
set
Amount = Amount *0.90
where
PayDate = '2007-08-25'
and
EmployeeID not in
			(
			select
			EmployeeID
			from
			sales
			where
			SaleDate < '2007-08-25'
			)
;
-------5
update
salary
set
amount = Amount * 1.10
where
PayDate = '2007-08-25'
and
EmployeeID  in
			(
			select
			EmployeeID
			from
			sales
			join
			customers
			on customers.CustomerID = sales.CustomerID
			where
			SaleDate < '2007-08-25'
			and
			CustomerClassID = 1
			)
