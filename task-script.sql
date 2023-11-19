-- task 2

-- 1. get students count college wise
select 	c.college-name, count(stid) 
from students s
right join colleges c 
on s.college = c.college_id 
group by course_name;

-- 2. get students count in a college, course wise
select c.college_name, cr.course_name, count(s.stid)
from colleges s 
inner join college_courses cc on c.college_id = cc.college_id
inner join courses cr on cr.course_id = cc.course_id
left join students s on cc.college_id = s.college and cr.course_id = s.course
group by c. college_name, cr.course_name having count (s.stid) > 0
order by c.college_name, student_count desc;

-- 3. get the university rank holder across all courses(1 student)
-- 4. get the list of rank holders each course
-- 5. get the college topper across all courses
-- 6. get the college toppers each course
select candidate,stname,college_name ,course_name,cgp as avg_marks
from(
	select m.candidate  ,s.stname , c.college_name,c2.course_name, AVG(m.marks) AS cgp,
rank() over(partition by c2.course_id,c.college_id  order by AVG(m.marks) DESC) as ranking
from exam_marks m 
join students s on s.stid  = m.candidate  
join colleges c on c.college_id = s.college  
join courses c2 on c2.course_id = s.course  
group by m.candidate  ,s.stname , c.college_name,c2.course_id,c.college_id  ,c2.course_name) course_rank
where ranking =1;

-- 7. get the failed students count each subject 
select s.subject_name, count (st.stid) as failed_students_count
from subjects s inner join course_subjects cs 
on s.subject_id = cs.subject_id
inner join exm_marks em on em.candidate = st.stid
where em.marks < 35
group by s.subject_name;

-- 8. get over all students list with semester marks
SELECT SUM(em.marks), em.candidate  
FROM exam_marks em group by em.candidate;

-- 9. get the student list who wasnt appear to the exams
select s.stname
from students s inner join exam_marks em 
on s.stid = em.candidate
where em.marks < 0; 
