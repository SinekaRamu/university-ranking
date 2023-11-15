# university-ranking
university ranking database in postgres

## DDL scripts
```
-- creating master table
CREATE TABLE university (university_id SERIAL primary key not null, university_name VARCHAR not null);
CREATE TABLE colleges (college_id SERIAL PRIMARY KEY NOT NULL, college_name VARCHAR NOT NULL, university SERIAL references university(university_id));
CREATE TABLE courses(course_id SERIAL PRIMARY KEY NOT NULL, course_name VARCHAR NOT NULL);
CREATE TABLE subjects(subject_id SERIAL PRIMARY KEY NOT NULL, subject_name VARCHAR NOT NULL);

create table semesters (
semester_id SERIAL primary key not null,
semester_name VARCHAR
);

create table students (
student_id SERIAL primary key not null,
student_name VARCHAR,
joining_year INTEGER
);

CREATE TABLE college_courses (
college_courses_id SERIAL PRIMARY KEY NOT NULL,
college_id SERIAL REFERENCES colleges(college_id),
course_id SERIAL REFERENCES courses(course_id)
);

CREATE TABLE course_subjects (
course_subjects_id SERIAL PRIMARY KEY NOT NULL,
course_id SERIAL references courses(course_id),
subject_id SERIAL references subjects(subject_id),
semester_id SERIAL references semesters(semester_id)
);

create table student_details (
register_id SERIAL primary key not null,
student SERIAL references students(student_id),
department SERIAL references college_courses (college_courses_id)
);

create table exam_marks(
exam_id SERIAL primary key not null,
candidate SERIAL references student_details(register_id),
subjects SERIAL references course_subjects(course_subjects_id)
);
```


