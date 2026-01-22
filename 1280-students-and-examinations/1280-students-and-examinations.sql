# Write your MySQL query statement below
select S.student_id, 
S.student_name, 
SU.subject_name, 
count(E.student_id) as attended_exams 
from Students as S
inner join Subjects as SU
left join Examinations as E 
on S.student_id = E.student_id
and SU.subject_name = E.subject_name
GROUP BY S.student_id, S.student_name, SU.subject_name
ORDER BY S.student_id, S.student_name, SU.subject_name
;
