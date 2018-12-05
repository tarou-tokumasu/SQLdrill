----------ex
delete
from
products
where
ProductID not  in
(select
ProductID
from
sales)
;

---------1
delete
from
salary
where
EmployeeID  not in
(
select
EmployeeID
from
sales)
;

--------2
delete
from
products
where
ProductID  not in
	(
	select
	ProductID
	from
	sales
	group by
	ProductID
	having
	sum(Quantity) >= 20
	);
-------3
delete
from
customers
where
CustomerID not in
	(
	select
	CustomerID
	from
	sales
	)
;
------4
delete
from
employees
where
EmployeeID in
	(
	select
	EmployeeID
	from
	sales
	group by
	EmployeeID
	having
	count(*) <= 5 )
	;
------5
delete 
from
sales
where
EmployeeID in
(select
EmployeeID
from
belongto
where
EndDate is null
and
DepartmentID = 3
);
