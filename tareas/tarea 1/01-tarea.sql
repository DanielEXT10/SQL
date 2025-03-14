
-- Tarea

-- 1. Ver todos los registros
Select * from users;

-- 2. Ver el registro cuyo id sea igual a 10
SELECT * from users where id = 10;

-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)
Select * from users where name like 'Jim %';


select * from users where name like '% Alexander%';

update users set name = 'Daniel Alfonso' where id = 1;

Select * from users where id = 1;

