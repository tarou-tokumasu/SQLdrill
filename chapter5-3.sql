select
e.EmployeeID
,e.EmployeeName
,x.ym
,sum(case
	when x.amount is null then 0
	else x.amount
 end) as 合計販売金
from
employees e
 left outer join 
  (
  select
 s.EmployeeID
,date_format(s.SaleDate , '%Y-%m') as ym
,s.Quantity * p.Price as amount
 from
 sales s
 join
 products p
 on s.ProductID = p.ProductID
 ) as x
  on e.EmployeeID = x.EmployeeID
 group by
 e.EmployeeID
 ,e.EmployeeName
 ,x.ym
 ;
