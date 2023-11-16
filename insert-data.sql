-- DML scripts

insert into university (university_name) values ('Anna University'), ('Pondicherry University');

insert into colleges (college_name, university) values 
('St. Joseph College of Engineering and Technology', 1), 
('CK College of Engineering and Technology', 1),
('KrishnaSamy College of Engineering and Technology',1),
('St.Anne''s College of Engineering and Technology',1),
('Excel College of Engineering and Technology',1),
('Rajiv Gandhi College of Engineering and Technology', 2)

insert into courses (course_name) values 
('Computer Science Engineering'), ('Mechanical Engineering'),
('Electronics and Communication Engineering'), 
('Electrical and Electronics Engineering'), 
('Marine Engineering'),('Aeronautical Engineering'),
('Mectronics Engineering'), ('Bio-Chemical Engineering'), ('Manufacturing Engineering'),
('Design Engineering'), ('Civil Engineering')

insert into subjects (subject_name) values 
('Engineering Physics'), ('Engineering Chemistry'),
('Engineering Mathematics 1'), ('Signals and Systems'),
('Basics Electrical and Electronics'), ('Graphical Egineering'),
('Digital Communication'), ('Discrete Time Signal Processing'),
('Analog Electronics'), ('Power Electronics'), ('Database Management System'),
('Computer Architecture'), ('Computer Networks'), ('Data Structure of C Programming'),
('Engineering Machanics'), ('Satellite Comminucation'), ('Control System'),
('Artificial Intelligence'), ('Embedded Systems'), ('Random Variables and vector engineering'),
('Engineering calculus'), ('Digital Electronics'), ('Thermodynamics'), ('Adhoc Wireless Communication'),
('Engineering Mathematics 1'), ('Electronics Circuits'),('Technical English'), 
('Robotics')

insert into semesters (sem_year, sem_month) values 
(2023, 'apr'),(2023, 'oct'), (2024, 'apr'), (2024, 'oct')

insert into college_courses (college_id, course_id) values 
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,11),(2,1),(2,2),(2,3),(2,4),(2,11),
(3,1),(3,2),(3,3),(3,4),(3,11),(3,8),(4,1),(4,2),(4,3),(4,4),(5,1),(5,1),(5,2),(5,3),
(5,4),(5,5),(5,8),(5,9),(5,10),(5,11),(5,6),(6,1),(6,2),(6,3),(6,4),(6,7)

-- common subjects for all courses
insert into course_subjects (course, subject_id) values 
(1,1),(1,2),(1,3),(1,6),(1,27),(2,1),(2,2),(2,3),(2,6),(2,27),(3,1),(3,2),(3,3),(3,6),(3,27),
(4,1),(4,2),(4,3),(4,6),(4,27),(5,1),(5,2),(5,3),(5,6),(5,27),(6,1),(6,2),(6,3),(6,6),(6,27),
(7,1),(7,2),(7,3),(7,6),(7,27),(8,1),(8,2),(8,3),(8,6),(8,27),(9,1),(9,2),(9,3),(9,6),(9,27),
(10,1),(10,2),(10,3),(10,6),(10,27),(11,1),(11,2),(11,3),(11,6),(11,27),
-- ECE
(3,4), (3,5), (3,7), (3,8), (3,9), (3,12), (3,13), (3,14), 
(3,16), (3,17), (3,19), (3,20), (3,21), (3,22), (3,24), (3,26),
--CSE
(1,5), (1,7), (1,11), (1,12), (1,13), (1,14), (1,18), (1,20), (1,21), (1,22), (1,25)

insert into students (stname, batch, dob, address, course, college) values 
('Sineka Ramamoorthy', '2018-07-19', '2001-10-6', 'Cuddalore', '4', 3 ),
('Kamal Ravinthar', '2019-6-19', '2000-9-15', 'Tirchy.', 4,1),
('Kalam Rajesh', '2019-07-19', '2000-10-15', 'Tirchy.', 6,1),
('Ishan Rishab', '2019-07-22', '1999-11-14', 'coimbatore.', 1, 1),
('Ramesh Vishnu', '2019-05-22', '1999-5-6', 'salem.', 1, 1),
('Suresh Vishnu', '2019-05-22', '1999-5-6', 'salem.', 2,1),
('Kamali Vignesh', '2019-05-22', '1999-5-6', 'Thanjavur.', 1, 1),
('Knox Knapp','2018-5-16','2001-10-01','Shimla',2,4),
('Charlotte Mcclure','2019-4-16','2001-01-22','Panjim',2,6),
('Drake Pierce','2019-4-16','2001-07-15','Kavaratti',2,4),
('Veda Snyder','2019-4-16','2001-03-16','Bilaspur',1,4),
('Cadman Gilbert','2019-4-16','2001-05-14','Gangtok',3,1),
('Malcolm Stevens','2019-5-16','2001-09-11','Aizwal',1,4),
('Kareem Shaffer','2019-6-12','2001-09-25','Dewas',3,6),
('Myra Durham','2019-6-3','2000-12-09','Agartala',3,6),
('Dean Foster','2019-6-16','2001-05-21','Bangalore',3,3),
('Yael Koch','2019-6-3','2001-09-16','Raj Nandgaon',2,5),
('Jermaine Mccoy','2019-6-4','2001-08-16','Gangtok',1,6),
('Demetrius Vaughn','2019-6-4','2001-06-27','Nizamabad',2,3),
('Jackson Oneal','2019-6-4','2001-01-10','Junagadh',1,3),
('Madeson Kirkland','2019-6-14','2001-04-15','Mandya',4,2),
('Cullen King','2019-6-19','2001-07-29','Delhi',4,5),
('Freya Albert','2019-6-6','2001-09-01','Silvassa',3,1),
('Vivien Gates','2019-7-16','2001-07-11','Jamshedpur',3,4),
('Olivia Reid','2019-7-7','2001-10-08','Delhi',2,4),
('Catherine Reed','2019-7-7','2001-08-21','Agartala',2,6),
('Ori Sexton','2019-7-7','2001-04-12','Dibrugarh',4,4),
('Bert Moran','2019-7-9','2001-02-22','Daman',2,5),
('Amal Richards','2019-7-9','2001-02-03','Imphal',3,6),
('Tad Stein','2019-7-11','2001-11-12','Bahawalnagar',3,4),
('Geoffrey Rich','2019-7-11','2001-10-26','Shillong',2,5),
('Guinevere Bruce','2019-7-15','2001-02-24','Bharuch',3,2),
('Lewis Pierce','2019-7-15','2001-07-13','Kollam',2,2),
('Silas Morin','2019-7-19','2001-04-27','Silchar',1,5),
('Honorato Stokes','2019-7-19','2001-01-22','Budaun',1,5),
('Reuben Zamora','2019-7-16','2001-01-19','Aizwal',3,2),
('Ian Ewing','2019-7-16','2000-12-08','Chandigarh',3,1),
('Kellie Park','2019-7-16','2001-01-09','Sambhal',2,6),
('Armando Petty','2019-7-16','2001-02-11','Panipat',1,2),
('Zeus Kemp','2019-7-16','2001-08-13','Daman',2,2),
('Brody Sullivan','2019-7-16','2001-03-26','Shimla',1,4),
('Mason Battle','2019-7-16','2001-09-24','Agartala',4,1),
('Kamal Carr','2019-7-16','2001-06-07','Ganganagar',1,3),
('Olga Ford','2019-7-16','2001-02-27','Bellary',3,2),
('Elaine Harmon','2019-7-16','2001-04-08','Kohima',3,2),
('Christian Molina','2019-7-16','2001-07-23','Agartala',2,5),
('Damian Blackwell','2019-7-16','2001-04-21','Brahmapur',2,5),
('Finn Flynn','2019-7-16','2001-10-13','Pondicherry',2,1),
('Kirestin Mayo','2019-7-16','2001-06-24','Cuttack',2,3),
('Adena York','2019-7-16','2001-06-30','Bhilai',3,2),
('Leila Henson','2019-7-16','2001-10-01','Gangtok',2,2),
('Simon King','2019-7-16','2001-05-11','Kohima',3,1),
('Eugenia Sears','2019-7-16','2000-12-20','Imphal',2,3),
('Rhona O''connor','2019-7-16','2001-02-14','Avadi',3,5),
('Kadeem Mack','2019-7-16','2000-11-18','Kavaratti',2,3),
('Fitzgerald Larson','2019-7-16','2001-01-25','Allappuzha',2,1),
('Alden Walsh','2019-7-16','2001-01-18','Raj Nandgaon',2,4),
('Quinlan Waller','2019-7-16','2001-11-03','Avadi',3,6),
('Kylan Bernard','2019-7-16','2001-03-23','Srinagar',2,5),
('Christian Mueller','2019-7-16','2001-05-18','Kavaratti',3,1),
('Jeremy Camacho','2019-7-16','2001-01-04','Achalpur',2,3),
('Amanda Bishop','2019-7-16','2001-02-26','Srinagar',4,3),
('Aileen Buckley','2019-7-16','2001-08-18','Daman',3,6),
('Beatrice Shannon','2019-6-16','2001-01-10','Bidar',1,4),
('Joshua Knowles','2019-6-16','2001-03-09','Gangtok',1,4),
('Risa Bryan','2019-6-16','2000-11-26','Bellary',3,4),
('Cameron Goodwin','2019-6-16','2001-06-06','Sheikhupura',2,2),
('Yvette Landry','2019-6-16','2001-10-18','Imphal',3,6),
('Evangeline Perry','2019-6-16','2001-08-07','Delhi',4,5),
('Zenia Camacho','2019-6-16','2000-11-21','Abohar',3,2),
('Colleen Cline','2019-5-16','2001-03-07','Kohima',2,3),
('Sage Hutchinson','2019-5-16','2001-07-20','Chandigarh',4,4),
('Aretha Ramirez','2019-5-16','2001-09-15','Daman',4,4),
('Candice Workman','2019-5-16','2000-12-04','Agartala',4,4),
('Shay Walton','2019-5-16','2001-04-17','Srinagar',3,3),
('Ivy Howard','2019-5-16','2001-11-07','Pondicherry',2,4),
('Kay Houston','2019-7-16','2001-03-15','Ujjain',2,2),
('Tana Poole','2019-7-16','2001-08-26','Balurghat',3,5),
('Signe Daniel','2019-7-16','2000-11-26','Ambala',2,6),
('Hyacinth Shaffer','2019-6-16','2001-01-07','Daman',2,3),
('Aladdin Young','2019-6-16','2001-06-13','Aizwal',4,1),
('Blossom Sosa','2019-6-16','2001-07-25','Dibrugarh',1,5),
('Sebastian Cantu','2019-6-16','2001-03-18','Srinagar',1,4),
('Kirestin Finch','2019-6-16','2001-05-10','Haridwar',2,2),
('Gannon Mercado','2019-6-16','2000-11-17','Delhi',3,4),
('Allen Talley','2019-5-16','2001-01-05','Shillong',3,2),
('Dustin Melton','2019-5-16','2000-12-24','Delhi',2,5),
('Piper Matthews','2019-5-16','2001-03-08','Kavaratti',2,4),
('Jenna Hancock','2019-5-16','2001-08-04','South Dum Dum',2,4),
('Lane Raymond','2019-5-16','2001-03-09','Panjim',2,2),
('Cecilia Langley','2019-5-16','2001-05-03','Sambalpur',2,4),
('Serina Munoz','2019-5-16','2001-10-26','Shimla',1,6),
('Sangesh Elangovan', '2018-07-19', '2001-10-6', 'Chennia', 1, 1),
('Stephen Savaltore', '2018-07-19', '2001-8-14', 'Chennia', 1, 1),
('Damon Savaltore', '2018-07-19', '1999-12-9', 'Chennia', 1, 1),
('Klaus Mickalson', '2018-07-19', '1998-10-19', 'Chennia', 1, 1);

-- students marks for apr 2023
insert into exam_marks (candidate, subjects, semester, marks) values 
(1,1,1,96), (1,2,1,87), (1,3,1,97), (1,6,1,89), (1,27,1,95),
(4,1,1,76), (4,2,1,65), (4,3,1,45), (4,6,1,85), (4,27,1,82),
(5,1,1,78), (5,2,1,63), (5,3,1,74), (5,6,1,65),(5,27,1,36),
(7,1,1,92), (7,2,1,51), (7,3,1,84), (7,6,1,93), (7,27,1,85),
(93,1,1,72), (93,2,1,93), (93,3,1,57), (93,6,1,79), (93,27,1,85)
