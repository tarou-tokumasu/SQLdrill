-----ex
delete
from
employees
where
EmployeeID = 17
;

------1
delete
from
sales
where
saleid=1006
;

------2
delete
from
salary
where
EmployeeID = 10
and
PayDate = '2007-10-01'
;

-----3
delete
from
customers
where
CustomerID >=10000
;

-----4
delete
from
products
where
CategoryID = 1
;

------5
delete
from
customers
where
CustomerClassID = 2
and
PrefecturalID in (3,5,7,13)


