select
PrefecturalID as 都道府県
,count(*) as 顧客数
from
customers
group by
PrefecturalID
having
count(*) >=3
;

select
EmployeeID as 社員ID
,count(*) as 支給回数
from
salary
group by
EmployeeID
having
count(*) < 12
;

select
PrefecturalID as 県ID
,count(*) as 顧客数
from
customers
group by
PrefecturalID
having
count(*)>1
;

select
ProductID as 商品ID
,count(*) as 売上レコード数
from
sales
group by
ProductID
having
count(*) between 10 and 50
;

select
BloodType as 血液型
,count(*) as データ数
from
employees
group by 
BloodType
having
count(*)>=10
;

select
ProductID as ID
,sum(Quantity) as 合計
from
sales
group by
ProductID
having
sum(Quantity) between 100 and 200
;
