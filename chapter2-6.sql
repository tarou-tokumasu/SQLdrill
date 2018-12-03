select
concat(CustomerName ,'様')  as お名前  mysqlはコンキャット 他は||か+
from
customers
;

select
concat(EmployeeName , 'さん')as 社員名
from
employees
;

select
concat('E-MAIL:' , email) as メールアドレス
from
employees
;

select
concat(EmployeeName , 'さんの' , 'E-MAIL:' , email )as 連絡先
from
employees
;

select
concat(CustomerName , '様のお住まいは' , address)as お得意様連絡先
from
customers
;

select
concat('社員' , EmployeeName , 'さんの血液型は' , bloodtype )as 社員血液型
from
employees
;
