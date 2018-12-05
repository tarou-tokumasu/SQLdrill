update
products
set
 price = price * 0.97
;

1);
update
customers
set
 CustomerCode = CustomerID + 1000
;

2);
update
 employees
set
email = concat(email , 'co.jp')
;

3);
update
employees
set
Height = Height + 2
,weight = weight -5
;

update
departments
set
DepartmentName = concat(DepartmentName , '部')
;

update
customers
set
CustomerName =
case
when CustomerClassID = 1 then concat(CustomerName , '御中')
when CustomerClassID = 2 then concat(CustomerName ,'様')
end
;
--adsfdfda
