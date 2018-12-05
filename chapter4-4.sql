--ex
update
customers
set
Address = '世田谷区たがやせ一丁目'
where
CustomerID = 5
;



---------1
update
employees
set
Height = Height + 5
where
EmployeeID = 10
;

---------2
update
salary
set
amount= amount + 20000
where
EmployeeID = 5
and
PayDate = '2007-03-25'
;
--------3
update
employees
set
height= height -2
,weight = weight + 3
where
BloodType = 'AB'
;
--------4
update
sales
set
Quantity = Quantity + 10
where
CustomerID = 10
and
ProductID = 5
and
saledate >= '2007-05-31'
;
-------5
update
products
set
price =
	case
	 when price >=2000 then price * 0.80
	 else price * 0.90
	end
where
CategoryID = 7
and
price >=1000
;
