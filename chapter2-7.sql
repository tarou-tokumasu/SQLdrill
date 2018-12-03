select
 avg(price) as 平均単価  avg平均　count個数　sum総和 max最大 min最小　演算含めてもok
from
 products
;

select
count(*) as お得意様数
from
customers
;

select
sum(weight) as 社員体重合計
from
employees
;

select
max(price)as 最高額価格
from
products
;

select
min(weight) as 最軽量体重
from
employees
;

select
avg(height)as 平均身長
,avg(weight) as 平均体重
from
employees
;
