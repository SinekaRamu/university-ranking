-- ddl script 
CREATE TABLE colleges (college_id SERIAL PRIMARY KEY NOT NULL, college_name VARCHAR NOT NULL);
CREATE TABLE courses(course_id SERIAL PRIMARY KEY NOT NULL, course_name VARCHAR NOT NULL);
CREATE TABLE subjects(subject_id SERIAL PRIMARY KEY NOT NULL, subject_name VARCHAR NOT NULL);

CREATE TABLE college_courses (
college_courses_id SERIAL PRIMARY KEY NOT NULL,
college_id SERIAL REFERENCES colleges(college_id),
course_id SERIAL REFERENCES courses(course_id)
);

CREATE TABLE course_subjects (
course_subjects_id SERIAL PRIMARY KEY NOT NULL,  
subject_id SERIAL REFERENCES subjects(subject_id),
course SERIAL REFERENCES courses(course_id)
);

create table students (
stid SERIAL primary key not null,
stname VARCHAR,
batch date,
dob date,
address VARCHAR,
course SERIAL REFERENCES courses(course_id),
college SERIAL REFERENCES colleges(college_id)
);

create table semesters (
sem_id SERIAL primary key not null,
sem_year INTEGER,
sem_month VARCHAR
);

create table exam_marks(
exam_id SERIAL primary key not null,
candidate SERIAL references students(stid),
subjects SERIAL references course_subjects(course_subjects_id),
semester SERIAL references semesters(sem_id),
marks VARCHAR
);
