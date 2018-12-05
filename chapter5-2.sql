--フォーマットで日時飛ばせば月別でグループ化できる;
select
a.ym as 年月
,sum(amount) as 販売合計金額
from
		(
		select
			DATE_FORMAT(s.SaleDate , '%Y-%m') as ym
	,	   s.quantity * p.Price as Amount
		from
		sales as s
		join
		products as p
		 on s.ProductID = p.ProductID
		 ) as a
group by
a.ym
;


