-- Name: Joseph Matos-Aldea
-- Date: May/16/23
-- Project's Name: Student Class List SQL


-- create database
create database studentClassList;

-- use database
use studentClassList;

-- Create Table for students
create table students(
    id int primary key auto_increment,
    StudentID varchar(5) not null,
    firstName varchar(100) not null,
    lastName varchar(100) not null,
    graduationYear varchar(4) not null
);

-- Create table for classes
create table Classes(
    id int primary key auto_increment,
    ClassID varchar(6) not null unique,
    ClassDesc varchar(100) not null
);

-- Create table for classList
create table ClassList(
    id int primary key auto_increment,
    ClassID varchar(6) not null,
    StudentID varchar(5) not null
);

-- Display the 3 tables
describe students;
describe Classes;
describe ClassList;

-- Inserting value to the Students table
insert into students(StudentID, firstName, lastName, graduationYear) values
("NH101", "Quandavias", "Squintillion Dihngle", "2023"),
("NH102", "Danhdale", "Razzmatazz Winkledink Jr", "2023"),
("NH103", "Henry", "A. Dontavious", "2024"),
("NH104", "Quanecious", "D. Coochiesmith", "2025"),
("NH105", "Johntavionquavious", "B. Williams", "2025"),
("NH106", "Johntavionquavious", "Razzmatazz Fingernoodle IV", "2025"),
("NH107", "Johntavionquavious", "Bartholomew Bingleton V", "2024"),
("NH108", "Wiggleton", "J. Gootch IV", "2024"),
("NH109", "Beezow", "Bartholomew Dinhgle VIII", "2023"),
("NH110", "Quandala", "Cornelius Doodleberry IV", "2025"),
("NH111", "Wiggleton", "Jones Bittleton", "2024"),
("NH112", "Quanfrazzle", "Jonathan Bittleton VIII", "2023"),
("NH113", "Quanlingling", "Razzmatazz Zingleton VII", "2023"),
("NH114", "Gooblesquibbins", "Big man Pringleton Sr", "2023"),
("NH115", "Danhdale", "Squintillion Williams V", "2024"),
("NH116", "Bingleton", "Barnacle Williams", "2024"),
("NH117", "Jamarius", "Bocksale Dihngle VI", "2025"),
("NH118", "Quanfrazzle", "Bartholomew Anicker VI", "2025"),
("NH119", "Quandalano", "Razzmatazz Pringle VII", "2023"),
("NH120", "Henry", "Triple Dontavious III", "2024");

-- Inserting value to the Classes table
insert into Classes (ClassID, ClassDesc) values
("CS1109", "Introduction to Computing"),
("CS1110", "Introduction to C Programming"),
("CS1166", "Discrete Mathematics for Computing"),
("CS2210", "Java Programming"),
("CS2212", "Intermediate Programming, C and C++"),
("CS2215", "Databases and SQL"),
("CS2226", "Data Structures and Algorithms"),
("CS2246", "Introduction to Computer Security"),
("CS2254", "Introduction to Game Development"),
("CS3316", "Professional Issues in Computing Technology"),
("CS3320", "Operating Systems"),
("CS3326", "Algorithm Design and Analysis"),
("CS3331", "Computer Organization Lab"),
("CS3338", "Introduction to Cyber Forensic Science"),
("CS3347", "Networking Technologies"),
("CS3351", "Script Programming/Python"),
("CS3354", "Intermediate Game Development"),
("CS3398", "Internship or Research"),
("CS4401", "Data Mining"),
("CS4429", "Software Quality assurance"),
("CS4434", "assembly Language Programming"),
("CS4438", "Small Scale Digital Forensic Science");

-- Inserting value to the ClassList table
insert into ClassList(ClassID, StudentID) values
("CS2226", "NH101"),
("CS3347", "NH101"),
("CS1110", "NH101"),
("CS4434", "NH101"),
("CS2212", "NH101"),
("CS1109", "NH102"),
("CS3316", "NH102"),
("CS1166", "NH102"),
("CS3398", "NH102"),
("CS3320", "NH102"),
("CS2215", "NH103"),
("CS3398", "NH103"),
("CS3331", "NH103"),
("CS2254", "NH103"),
("CS3347", "NH103"),
("CS2226", "NH104"),
("CS3354", "NH104"),
("CS4434", "NH104"),
("CS1109", "NH104"),
("CS1166", "NH104"),
("CS2215", "NH105"),
("CS2254", "NH105"),
("CS3326", "NH105"),
("CS3347", "NH105"),
("CS4401", "NH105"),
("CS2212", "NH106"),
("CS1109", "NH106"),
("CS2210", "NH106"),
("CS4429", "NH106"),
("CS4434", "NH106"),
("CS3320", "NH107"),
("CS3347", "NH107"),
("CS4401", "NH107"),
("CS2210", "NH107"),
("CS2215", "NH107"),
("CS3347", "NH108"),
("CS1110", "NH108"),
("CS2212", "NH108"),
("CS3320", "NH108"),
("CS1166", "NH108"),
("CS4438", "NH109"),
("CS3354", "NH109"),
("CS3326", "NH109"),
("CS2254", "NH109"),
("CS2226", "NH109"),
("CS3331", "NH110"),
("CS3354", "NH110"),
("CS4429", "NH110"),
("CS1166", "NH110"),
("CS1109", "NH110"),
("CS2254", "NH111"),
("CS2246", "NH111"),
("CS3331", "NH111"),
("CS3354", "NH111"),
("CS4401", "NH111"),
("CS1110", "NH112"),
("CS1166", "NH112"),
("CS3320", "NH112"),
("CS2246", "NH112"),
("CS3351", "NH112"),
("CS4434", "NH113"),
("CS4438", "NH113"),
("CS4429", "NH113"),
("CS2210", "NH113"),
("CS1109", "NH113"),
("CS1110", "NH114"),
("CS2212", "NH114"),
("CS2246", "NH114"),
("CS3316", "NH114"),
("CS3347", "NH114"),
("CS2254", "NH115"),
("CS2212", "NH115"),
("CS3338", "NH115"),
("CS3354", "NH115"),
("CS4429", "NH115"),
("CS1109", "NH116"),
("CS4438", "NH116"),
("CS4401", "NH116"),
("CS2254", "NH116"),
("CS1166", "NH116"),
("CS3326", "NH117"),
("CS3338", "NH117"),
("CS3351", "NH117"),
("CS2215", "NH117"),
("CS2210", "NH117"),
("CS2254", "NH118"),
("CS3331", "NH118"),
("CS3347", "NH118"),
("CS3354", "NH118"),
("CS4401", "NH118"),
("CS1110", "NH119"),
("CS2212", "NH119"),
("CS2226", "NH119"),
("CS3316", "NH119"),
("CS3326", "NH119"),
("CS3354", "NH120"),
("CS4438", "NH120"),
("CS2215", "NH120"),
("CS1110", "NH120"),
("CS2212", "NH120");


-- A list of all classes each student is enrolled in sorted by student’s last name.
select concat(students.StudentID, ', Name: ', students.firstName, " ",students.lastName) as "ID / Student",
concat(Classes.ClassID, ', Class: ', Classes.ClassDesc) as "Classes"
from ClassList
inner join students using(StudentID)
inner join Classes using(ClassID)
order by students.lastName;

-- A class list (Students enrolled in each class) sorted by class id.
select concat(students.StudentID, ', Name: ', students.firstName, " ",students.lastName) as "ID / Student",
concat(Classes.ClassID, ', Class: ', Classes.ClassDesc) as "Classes"
from ClassList
inner join students using(StudentID)
inner join Classes using(ClassID)
order by students.lastName;

-- Student list sorted by graduation year.
select concat(students.StudentID, ', Name: ', students.firstName, " ",students.lastName) as "ID / Student", 
DATE_FORMAT(students.graduationYear, "%M %D, %Y") as "Graduation Year "
from ClassList
inner join students using(StudentID)
order by students.graduationYear;

-- A count (use count()) of how many students are in each class sorted and grouped by class id
select concat(Classes.ClassID, ', Class: ', Classes.ClassDesc) as "Classes",
count(ClassList.StudentID) as "Student count"
from ClassList
inner join students using(StudentID)
inner join Classes using(ClassID)
GROUP BY Classes.ClassID
order by Classes.ClassID;

drop database studentClassList;