
select 
    round(avg(Salary)) - round(avg(replace(Salary, 0, ''))) 
from EMPLOYEES;