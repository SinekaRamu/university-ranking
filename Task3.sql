-- task 3
-- 1. update the mark to 40 those who were scored the marks between 35 to 39
update exam_marks 
set marks = 40
where marks between 35 and 39;

-- 2. get the history of marks that are changed
-- 3. choose any select query from tast 2 and insert the values into a temp table(https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-select-into/)
-- 4. delete a college and its respective things
-- 5. alter all the tables add audit columns (createdAt,createBy,updatedAt,updatedBy)
-- 6. remove the duplicate values in the mark table(insert values for your convenient)
