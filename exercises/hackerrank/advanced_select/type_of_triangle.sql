
select
    case
        when (A + B <= C) or (A + C <= B) or (B + C <= A) then 'Not A Triangle'
        when (A = B) and (A = C) and (B = C) then 'Equilateral'
        when (A <> B) and (A <> C) and (B <> C) then 'Scalene'
        else 'Isosceles'
    end
from TRIANGLES;