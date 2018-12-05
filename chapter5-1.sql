select
concat(
concat(
concat(
concat('insert into pref_back values( '
	 ,PrefecturalID)
	 
	,' ,''')
	,prefecturalname )
	, ''');') as 都道府県
	
from
prefecturals
;

--この変なconcatラッシュは'を挿入するため

select
concat(
 concat(
  concat('insert into pref_back values( ' , PrefecturalID , ',')
 ,'''',PrefecturalName)
 ,''');')
from
prefecturals
;
