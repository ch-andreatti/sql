
select 
    COUNTRY.CONTINENT, 
    floor(avg(CITY.POPULATION))
from CITY
inner join COUNTRY
    on CITY.CountryCode = COUNTRY.Code
group by 
    COUNTRY.CONTINENT;