select
p.ProductName
,avg(p.Price *
	case 
		when s.Quantity is null then 0
		else s.Quantity
	end) as 平均
from
products p
 left outer join
sales s
 on p.ProductID = s.ProductID
group by
 p.ProductName
;

select
c.CustomerName
,sum(case 
		when s.Quantity is null then 0
		else s.Quantity
	end) as 数量合計
from
customers as c
left outer join
sales as s
on c.CustomerID = s.CustomerID
group by
c.CustomerName
;

select
e.EmployeeID
,max(e.EmployeeName)
,count(*) as 顧客数count
,sum(case
	when s.CustomerID is null then 0
		else 1
	end) as 顧客数sum
from
employees as e
 left outer join
sales as s
 on e.EmployeeID = s.EmployeeID
group by
e.EmployeeID
;

select
p.PrefecturalName
,sum(case
	when c.PrefecturalID is null then 0
	else 1
 end) as 顧客数
from
prefecturals as p
left outer join
customers as c
on p.PrefecturalID = c.PrefecturalID
group by
p.PrefecturalID
;

select
e.EmployeeID
,(case 
	when s.Amount is null then 0
	else s.Amount
end) as 給与
from
employees as e
left outer join
(
select
EmployeeID
,amount
from
salary
where
PayDate = '2007-02-25'
group by
EmployeeID) as s
 on e.EmployeeID = s.EmployeeID
;
