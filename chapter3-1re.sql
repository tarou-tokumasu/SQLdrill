select
EmployeeID
,EmployeeName
,(select
max(amount)
from
salary
where
EmployeeID = employees.EmployeeID
) as 最高給料
from
employees
where
EmployeeID in
(select
EmployeeID
from
salary
group by
EmployeeID
having
max(amount) >=300000
)
;

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
CustomerID=sales.CustomerID) as 顧客名
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
Quantity>=100
;

select
ProductID
,ProductName
from
products
where
ProductID in
(select
ProductID
from
sales
group by ProductID
having
sum(Quantity)>=100)
;
