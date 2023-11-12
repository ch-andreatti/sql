
select 
    Students.Name, 
    Grades.Grade, 
    Students.Marks
from Students
inner join Grades
    on Students.Marks between Grades.Min_Mark 
    and Grades.Max_Mark
where 
    Grades.Grade >= 8
order by 
    Grades.Grade desc, Students.Name asc;

select 
    "NULL", 
    Grades.Grade, 
    Students.Marks
from Students
inner join Grades
    on Students.Marks between Grades.Min_Mark and Grades.Max_Mark
where 
    Grades.Grade < 8
order by 
    Grades.Grade desc, Students.Marks asc;