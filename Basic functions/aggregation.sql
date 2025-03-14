SELECT * from users;


Select
    first_name,
    last_name,
    last_connection
from
    users
where
    last_connection like ('221.%');


Select
    first_name,
    last_name,
    followers
from
    users
where
    --followers >= 4600 and followers <= 4700
	followers BETWEEN 4600 and 4700

Order by
	followers asc;
--Cuantos registros tiene la tabla?

--Aggregate functions COUNT, MIN.MAX, AVG
SELECT count(*),
	MIN(followers) as min_followers,
	MAX(followers) as max_followers,
	AVG(followers) as avg_followers,
	Round(AVG(followers))as rounded_avg_followers,
	SUM(followers)/ count(*) as avg_manual
from users;

SELECT
    first_name,
    last_name,
    followers
from
    users
where
    followers = 4 or followers = 4999;

-- GROUP BY
SELECT
    count(*),
    followers
from
    users
where
    followers BETWEEN 4500
    and 4999
group by
    followers
order by
    followers desc;


-- Having clause
Select
    count(*),
    country
from
    users
group by
    country
Having
    count(*) > 6
order by
    count desc;

-- Distinct
select distinct country from users;

-- Group by con otras funciones
Select
	count(*),
	SUBSTRING(email,position('@' in email) + 1) as domain
from users
GROUP by domain
having count(*)>1
order by count desc;


--Subqueries
SELECT
    domain, total
from
    (
        Select
            count(*) as total,
            SUBSTRING (email, position ('@' in email) + 1) as domain
        from
            users
        GROUP by
            domain
        having
            count(8) > 1
        order by
            total desc
    ) as email_domains;





