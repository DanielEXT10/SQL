

-- Tarea 2 Aggregations

select count(*), country
from users
where SUBSTRING (email, position ('@' in email) + 1) = 'google.com'
group by country;

Select count(*), country
from users
group by country;

select first_name, last_name, country, last_connection 
from users
where country ='Iceland';

SELECT count(*)
from users
where country = 'Iceland' and last_connection like '112.%';

select first_name, last_name, country, last_connection 
from users
where country ='Iceland' and (last_connection like '112.%' or last_connection like '28.%' or last_connection like '188.%')
order by last_name asc;

select first_name, last_name, country
from users
where country in ('Mexico','Honduras', 'Costa Rica')
order by country asc, first_name asc, last_name asc;

select count(*), country
from users
where country in ('Mexico','Honduras', 'Costa Rica')
group by country