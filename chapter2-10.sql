select
 ProductName as 商品名
,case 
  when price < 1000 then 'C'
  when price < 2000 then 'B' 
  else 'A'
end as ランク
from
products
;

select
EmployeeName as 社員名
,case 
	when height<160 then 'A'
	when height<170 then 'B'
	when height<180 then 'C'
	else 'D'
end as ランク
from
employees
;

select
SalaryID as 給与ID
,case
	when amount < 150000 then 'D'
	when amount < 300000 then 'C'
	when amount < 500000 then 'B'
	else 'A'
end as ランク
from
salary
;

select
EmployeeName as 社員名
,case
	when weight < 60 then 'A'
	when weight < 70 then 'B'
	when weight < 80 then 'C'
	else 'D'
 end as ランク
from
employees
;

select
saleid 
,case 
	when Quantity < 10 then 'B'
	else 'A'
 end as ランク
from
sales
;

select
EmployeeName as 名前
,height as 身長
,case 
	when height <160 then 'A'
	when height <170 then 'B'
	when height <180 then 'C'
	else 'D'
end as ランク
from
employees
;
