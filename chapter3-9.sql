SELECT distinct
  x.氏名
, x.日付
FROM
 (
  SELECT
    e.EmployeeName AS 氏名
  , s.SaleDate AS 日付
  FROM
    Sales AS s
      JOIN
    Employees AS e
      ON s.EmployeeID = e.EmployeeID
 ) AS x
WHERE
  EXISTS
  (
   SELECT
     y.氏名
   , y.日付
   FROM
    (
     SELECT
       e.EmployeeName AS 氏名
     , s.PayDate AS 日付
     FROM
       Salary AS s
         JOIN
       Employees AS e
         ON s.EmployeeID = e.EmployeeID
    ) AS y
   WHERE
     x.氏名 = y.氏名
     AND
     x.日付 = y.日付
  )
;

select distinct
x.氏名
,x.日付
from
	(
	select
	e.EmployeeName as 氏名
   ,s.SaleDate as 日付
	from
	sales as s
	join
	employees as e
	on e.EmployeeID = s.EmployeeID
	) as X
where
 exists
 	(
	select
	y.氏名
   ,y.日付
	from
		(
		select
		e.EmployeeName as 氏名
		,s.PayDate as 日付
		from
		salary as s
		join
		employees as e
		on e.EmployeeID = s.EmployeeID
		) as y
	where
	 x.氏名 = y.氏名
	 and
	 x.日付 = y.日付
	)
	;
共通してそうな項をwhereのとこで手打ちで探す;
1);
select
a.CustomerID as ID
,a.CustomerName as name
from
customers as A
where
 exists(
select
b.EmployeeID as id
,b.EmployeeName as name
from
employees as B
where
a.CustomerName = b.EmployeeName
)
;

2)謎;
select
a.EmployeeID
,a.EmployeeName
from
employees as a
where
exists
 	(
 	select
	b.EmployeeID
	,b.EmployeeName
	from
	employees as b
	where
	b.EmployeeName = a.EmployeeName
 	)
;
