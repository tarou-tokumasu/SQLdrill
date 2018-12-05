create table ta1(c1 varchar(200) , c2 int);

insert
into ta1(c2)
values(1);

insert
into ta1(c1,c2)
values(null,2);

insert
into ta1(c1,c2)
values('NULL' , 3);


insert
into ta1(c1,c2)
values('' , 4);

select
*
from
ta1
;

select
length(c1),c2
from
ta1
;
