select
p.ProductName
,AVG(
	p.Price *
	case 
		when s.Quantity is null then 0
		else s.Quantity
	end
 ) as 平均販売価格
from
products as p
 left outer join
sales as s
 on s.ProductID = p.ProductID
group by
p.ProductID
;

select
c.CustomerID
,c.CustomerName
,sum(
	case
		when s.Quantity is null then 0
		else s.Quantity 
	end
) 合計個数
from
customers as c
left outer join
sales as s
on c.CustomerID = s.CustomerID
group by
c.CustomerID
;

select
c.CustomerName
,case 
	when su is null then 0
	else su
end as 合計個数
from
customers as c
left outer join
(select
CustomerID
,sum(Quantity) as su
from
sales
group by
CustomerID
) as s
on c.CustomerID = s.CustomerID
;

select
e.EmployeeID
,e.EmployeeName
,case 
 	when cnt is null then 0
	else cnt
 end as count
from
employees as e
left outer join
(select
EmployeeID
,count(*) as cnt
from
sales
group by
EmployeeID)as s
on e.EmployeeID = s.EmployeeID
;

select
e.EmployeeID
,max(e.EmployeeName)
,sum(case
	when s.EmployeeID is null then 0
	else 1
	end)as カウント
 from
employees as e
left outer join
sales as s
on e.EmployeeID = s.EmployeeID
group by
e.EmployeeID
;

select
p.PrefecturalID
,p.PrefecturalName
,case
	when cnt is null then 0
	else cnt
end as count
from
prefecturals as p
left outer join
(
select
PrefecturalID
,count(*) as cnt
from
customers
group by
PrefecturalID) as c
on p.PrefecturalID = c.PrefecturalID
;

select
p.PrefecturalID
,p.PrefecturalName
,sum(case 
		when c.PrefecturalID is null then 0
		else 1
	end) as count
from
prefecturals as p
left outer join
customers c
on c.PrefecturalID = p.PrefecturalID
group by
p.PrefecturalID
;

select
e.EmployeeID
,case 
	when cnt is null then 0
	else cnt
end as count
from
employees as e
left outer join
(select
EmployeeID
,count(*) as cnt
from
sales
group by
EmployeeID)as s
on s.EmployeeID = e.EmployeeID
;

select
e.EmployeeID
,sum(
	case
		when s.EmployeeID is null then 0
		else 1
	end
) as count
from
employees as e
left outer join
sales as s
on s.EmployeeID = e.EmployeeID
group by
e.EmployeeID
;

問5 回答1;
select
e.EmployeeID
,e.EmployeeName
,sum(case
		when s.PayDate = '2007-02-25' then s.Amount
		else 0
	end) as 0225の給与
from
employees e
left outer join
salary s
on e.EmployeeID = s.EmployeeID
group by
e.EmployeeID
;


問5 回答2;
select
e.EmployeeID
,e.EmployeeName
,case 
	when c is null then 0
	else c
end as 0225の給与2
from
employees e
left outer join
(
select
EmployeeID
,Amount as c
from
salary
where
paydate = '2007-02-25'
group by
EmployeeID) as s
on e.EmployeeID = s.EmployeeID
;
