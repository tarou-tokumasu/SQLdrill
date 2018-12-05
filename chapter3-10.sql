select
a.EmployeeName
from
employees as a
where
not exists(
			select
			 e.EmployeeName
			 from
			 sales as s
			 join
			 employees as e
			 on s.EmployeeID = e.EmployeeID
			 where
			 a.EmployeeName = e.EmployeeName
			)
