

select 
    sum(CITY.POPULATION)
from CITY
inner join COUNTRY
    on (CITY.COUNTRYCODE = COUNTRY.CODE)
where 
    CONTINENT  = 'Asia';