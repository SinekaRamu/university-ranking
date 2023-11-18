-- task 2

-- 1. get students count college wise
select 	c.college-name, count(stid) 
from students s
right join colleges c 
on s.college = c.college_id 
group by course_name;

-- 2. get students count in a college, course wise
-- 3. get the university rank holder across all courses(1 student)
-- 4. get the list of rank holders each course
-- 5. get the college topper across all courses
-- 6. get the college toppers each course
-- 7. get the failed students count each subject 
-- 8. get over all students list with semester marks
-- 9. get the student list who wasnt appear to the exams
