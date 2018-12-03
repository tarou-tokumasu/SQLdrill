select
weight / (height/100) / (height/100) as BMI 二乗^は使えないrdbmsもある
from
employees
;

select
(height * 3) / (weight *2.5 ) as '結果'
from
employees
;

select
HireFiscalYear / weight + height as '結果'
from
employees
;

select
Quantity + (CustomerID * ProductID * EmployeeID ) as '結果'
from
sales
;

select
price - (ProductCode * CategoryID) as '結果'
from
products
;

select
CustomerID + (CustomerClassID * CustomerClassID * CustomerClassID) as '結果'
from
customers
;
