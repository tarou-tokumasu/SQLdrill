select
PrefecturalID as 都道府県
,count(*) as 顧客数
from
customers
where 
CustomerClassID =1
group by
PrefecturalID
having
count(*) >=2
;

select
PrefecturalID as 県ID
,count(*) as 顧客数
from
customers
where
PrefecturalID >=10
group by
PrefecturalID
having
count(*) >1
;

select
EmployeeID as 社員ID
,count(*) as 支給回数
from
salary
where
EmployeeID >=20
group by
EmployeeID
having
count(*) >=12
;

select
ProductID as 商品ID
,count(*) as 売上レコード数
from
sales
where
ProductID between 20 and 30
group by
ProductID
having
count(*)>=30
;

select
BloodType as 血液型
,count(*) as 165以上
from
employees
where
height >=165
group by
BloodType
having
count(*) >=5
;

select
ProductID as ID
,sum(Quantity) as 合計
from
sales
where
saledate >= '2007-06-01'
group by
ProductID
having
sum(Quantity) >=200
;
