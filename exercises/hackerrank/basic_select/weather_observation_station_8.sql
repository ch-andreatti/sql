
select distinct 
    CITY
from STATION
where 
    CITY RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$';