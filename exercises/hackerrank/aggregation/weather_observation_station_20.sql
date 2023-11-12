
select 
    round(LAT_N, 4) 
from (
    select 
        LAT_N, 
        ROW_NUMBER() OVER(order by LAT_N) as RN 
    from station
) as a 
where 
    RN=ceil((select count(*) from station)/2);