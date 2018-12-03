select
HireFiscalYear as 入社年度
,sum(
		case
			when BloodType = 'A' then 1
			else 0
			end
		)as A型
,sum(
		case
			when BloodType = 'B' then 1
			else 0
			end
		)as B型
,sum(
		case
			when BloodType = 'O' then 1
			else 0
			end
		)as O型
,sum(
		case
			when BloodType = 'AB' then 1
			else 0
			end
		)as AB型
from
employees
group by
HireFiscalYear
;

select
HireFiscalYear as 入社年度
,sum(case 
		when height < 160 then 1
		else 0
	end)as 160cm以下
,sum(case 
		when height < 170 then 1
		else 0
	end)as 170cm以下
,sum(case 
		when height < 180 then 1
		else 0
	end)as 180cm以下
,sum(case 
		when height > 180 then 1
		else 0
	end)as 181cm以上
from
employees
group by
HireFiscalYear
;

select
CategoryID as カテゴリID
,sum(case 
		when price < 100 then 1
		else 0
	end)as 100円未満
,sum(case 
		when price < 400 then 1
		else 0
	end)as 400円未満
,sum(case 
		when price < 1000 then 1
		else 0
	end)as 1000円未満
,sum(case 
		when price > 1000 then 1
		else 0
	end)as 1000円以上
from
products
group by
CategoryID
;

select
CustomerID as 顧客ID
,sum(case 
		when month(saledate)=9 then 1
		else 0
	end) as 9月
	,sum(case 
		when month(saledate)=10 then 1
		else 0
	end) as 10月
	,sum(case 
		when month(saledate)=11 then 1
		else 0
	end) as 11月
from
sales
where 
year(saledate) ='2006'
group by
 CustomerID
;

select
PrefecturalID as 都道府県
,sum(case 
		when CustomerClassID = 1 then 1
		else 0
	end) as 法人
,sum(case 
		when CustomerClassID = 2 then 1
		else 0
	end) as 個人
from
customers
group by
PrefecturalID
;

select
HireFiscalYear as 入社年度
,sum(case 
		when weight < 50 then 1
		else 0
	end) as 50kg以下
	,sum(case 
		when weight < 60 then 1
		else 0
	end) as 51～60
	,sum(case 
		when weight < 80 then 1
		else 0
	end) as 61～80kg
	,sum(case 
		when weight > 80 then 1
		else 0
	end) as 80kg超
from
employees
group by
HireFiscalYear
;


