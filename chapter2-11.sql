select
PrefecturalID as 都道府県
,count(*) as 顧客数
from
 customers
group by
 PrefecturalID
;

select
CustomerID as 顧客ID
,count(*) as 件数
from
sales
group by
CustomerID
;

select
EmployeeID as 社員ID
,sum(amount) as 合計
from
salary
group by
EmployeeID
;

select
CustomerID as 顧客ID
,ProductID as 商品ID
,sum(Quantity) as 数量
from
sales
group by
CustomerID
,ProductID
;

select
BloodType as 血液型
,avg(height) as 平均身長
,avg(weight) as 平均体重
from
employees
group by
bloodtype
;

select
EmployeeID as ID
,count(*) as レコード数
,avg(amount) as 平均値
from
salary
group by
EmployeeID
;
