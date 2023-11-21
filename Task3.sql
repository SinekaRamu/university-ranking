-- task 3
-- 1. update the mark to 40 those who were scored the marks between 35 to 39
update exam_marks 
set marks = 40
where marks between 35 and 39
	returning *;

-- 2. get the history of marks that are changed
select s.subject_name , count (em.candidate) no_of_failed_students
into table arrear_students
from subjects s
	inner join exam_marks em on em.subjects = s.subject_id 
where marks between 0 and 40
group by s.subject_name 

select * from arrear_students

-- 3. choose any select query from tast 2 and insert the values into a temp table(https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-select-into/)
select s.subject_name , count (em.candidate) no_of_failed_students
into table failed_student_count
from subjects s
	inner join exam_marks em on em.subjects = s.subject_id 
where marks between 0 and 40
group by s.subject_name 

select * from failed_student_count ;

-- 4. delete a college and its respective things
delete from colleges where college_id=6 returning *;
select * from colleges c ;

-- 5. alter all the tables add audit columns (createdAt,createBy,updatedAt,updatedBy)
alter table exam_marks
add column createdAt TIMESTAMP default current_timestamp,
add column createBy VARCHAR default current_user,
add column updatedAt timestamp default current_timestamp,
add column updatedBy varchar default session_user
	
-- 6. remove the duplicate values in the mark table(insert values for your convenient)

begin transaction;

--To find the duplicate
select candidate, subjects, count(*) cnt
from exam_marks em 
group by candidate , subjects having count(*) > 1
			
-- delete the duplicate using delete statement
delete from exam_marks m1
	using exam_marks m2
where m1.exam_id > m2.exam_id 
and m1.subjects = m2.subjects 
and m1.candidate = m2.candidate

commit;
