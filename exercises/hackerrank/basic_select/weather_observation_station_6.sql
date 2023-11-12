
select distinct 
    CITY
from STATION
where 
    left(CITY, 1) in ('a', 'e', 'i', 'o', 'u');