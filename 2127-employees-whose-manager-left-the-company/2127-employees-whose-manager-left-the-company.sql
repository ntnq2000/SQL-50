# Write your MySQL query statement below
select a.employee_id 
from Employees as a # table a
left join Employees as b # table b and we want to obtain all of the information in table a with the exception of some information from table b that also presents in table a 
on a.manager_id = b.employee_id # check if the id in manager_id in table a is present within employee_id in table b
where a.salary < 30000 # making sure to verify the id with a salary that is less than $30k
and a.manager_id is not null # making sure to verify the id that has an actual id in the manager_id
and b.employee_id is null # making sure to verify when the employee_id does not exist
order by employee_id; # organize in ascending order