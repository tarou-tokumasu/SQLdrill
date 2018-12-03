select
count(*) as 子がつく社員の人数
from
employees
where
EmployeeName like '%子'
;

select
CustomerName as 会社名
from
customers
where
CustomerName like '%株式会社%'
;

select
avg(height) as 平均身長
from
employees
where
EmployeeName like '%ー%'
;

select
count(*) as 顧客数
from
customers
where
CustomerName not like '%株式会社%'
;

select
EmployeeName
,height
from
employees
where
EmployeeName like '%リ%'
and
height <=160
;
