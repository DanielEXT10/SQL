select
	name,
	SUBSTRING(name,0,5),
	Position('E' in name),
	SUBSTRING(name,0, POSITION(' ' in name)) as first_name,
	SUBSTRING(name,POSITION(' ' in name)+1) as last_name
from users;

update users
set
first_name = SUBSTRING(name,0, POSITION(' ' in name)),
last_name = SUBSTRING(name,POSITION(' ' in name)+1) ;

SELECT * from users;