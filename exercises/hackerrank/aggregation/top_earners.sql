
select 
    max(months * salary), count(employee_id)
from Employee
where 
    (months * salary) = (select max(months * salary) from employee);