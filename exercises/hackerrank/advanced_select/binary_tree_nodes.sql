
select
    case
        when P is Null then concat(N, " Root")
        when N in (select distinct P from BST order by P asc) then concat(N, " Inner")
        else concat(N, " Leaf")
    end
from BST
order by 
    N asc;