select
d.DepartmentID ID
,d.DepartmentName 部署
,x.ym 年度
,avg(x.am) 平均給与
from
	(
	select
	s.EmployeeID
   ,DATE_FORMAT(s.PayDate , '%Y') as ym
   ,s.Amount as am
   ,s.PayDate as pd
	from
	salary s
	where
	DATE_FORMAT(s.PayDate , '%Y') = '2007'
	) as x
join
employees e
on 
x.EmployeeID = e.EmployeeID
join
belongto b
on e.EmployeeID = b.EmployeeID
and
x.pd > b.StartDate
and
x.pd <
	case
	when b.EndDate is null then '9999-12-31'
	else b.EndDate
	end
join
departments d
on b.DepartmentID = d.DepartmentID
group by
d.DepartmentID
,d.DepartmentName
,x.ym
;
