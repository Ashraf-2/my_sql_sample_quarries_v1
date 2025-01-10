CREATE DATABASE college;

USE college;

-- CREATE DATABASE IF NOT EXISTS college 
-- DRPP DATEBASE ___NAME___;
CREATE TABLE student (
	id INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT NOT NULL,
    Class INT NOT NULL,
    Blood_Group VARCHAR(5),
    Address VARCHAR(50),
    Phone_number INT NOT NULL
);

INSERT INTO student VALUES(1,"Abir",12,7,"B+","Dhaka","880172244");

SELECT * from student;

INSERT INTO student VALUES(2, "Amir", 12, 6, "B+", "Dhaka", "880162244");
INSERT INTO student VALUES(3, "Asad", 12, 7, "B-", "Dhaka", "880132244");

SELECT Name, age, class from student;

-- drop table student

SHOW TABLES;

CREATE TABLE temp1 (
	id INT UNIQUE,
    Name VARCHAR (10)
);

INSERT INTO temp1 VALUES(100,"Robin");
-- INSERT INTO temp1 VALUES(100,"RIMA");  ##THIS IS NOT POSSIBLE

INSERT INTO temp1 VALUES(101,"Robinh");

select * from temp1;

CREATE TABLE employee (
	id INT,
    Name VARCHAR (10),
    Age int,
    address VARCHAR(20),
    PRIMARY KEY (id,Name)
);

INSERT INTO employee VALUES(100,"Robin",5,"Rohinston");
INSERT INTO employee VALUES(120,"Robin",4,"Rohinston");
INSERT INTO employee VALUES(100,"Robin Sr",1,"Rohinston");

select * from employee;

CREATE TABLE manush (
	man_id int,
    salary INT default 2500
);

INSERT INTO manush (man_id) VALUES(101);
INSERT INTO manush (man_id) VALUES(103);
INSERT INTO manush (man_id) VALUES(105);

show tables;
SELECT * FROM manush;
select * from temp1;
select * from employee;
select * from student;

-- ADDING ONE COLUMN TO AN EXISTING TABLE
ALTER TABLE student ADD Gender CHAR(1) CHECK (Gender IN ('M','F'));

-- UPDATING COLUMN ATTRIBUTES
update student set gender = 'M' where id in (1,2,3);

-- ADD ROWS IN A TABLE
insert into employee values(220, 'Sigan', 23, 'Delhi'), (320, 'Risan',20, 'Bihar'), (410,'Manish',31,'Manipur');
INSERT INTO employee VALUES(520, 'Sitara', 19, 'Kolkata'), (511, 'Samiul', 19,'Delhi');
select * from employee;

-- USE OF 'NOT'
SELECT * FROM employee WHERE address NOT IN('Delhi','Bihar');
SELECT * FROM employee WHERE address in ('Delhi');

select * from student;
INSERT INTO student VALUES(4, 'Supty', 19,8,'A+','Sylhet',880132244,'F'), (5, 'Rima', 16,10,'O+','Ctg',880132233,'F');
select * from student;

-- USE OF 'LIMIT'.
SELECT * FROM student LIMIT 3;
SELECT * FROM student WHERE Gender = 'M' LIMIT 3;

CREATE TABLE subject_table (
	sub_code INT NOT NULL,
    sub_name VARCHAR(13),
    tec_name VARCHAR(20),
    gender CHAR(1) CHECK (gender in('M','F'))
);

INSERT INTO subject_table 
values (101, 'Math', 'DMK','F'),
(201,'Physics','PRC','M'),
(301,'Chemistry','RBC','M'),
(210,'Zoology','KNC','M'),
(105,'Botany','NLF','F'),
(205,'ICT','KMC','M');

SELECT * FROM subject_table ORDER BY sub_code ASC;
SELECT * FROM subject_table ORDER BY sub_code DESC;

-- DELETE SOME ROWS
DELETE FROM subject_table WHERE sub_code = 201 limit 1;



-- RENAME A TABLE
RENAME TABLE temp2 TO Employee;

-- AGGREGATE FUNCTIONS
SELECT * FROM subject_table;
SELECT * FROM temp1;
SELECT * FROM employee;
SELECT * FROM student;

SELECT COUNT(sub_name) FROM subject_table;
SELECT COUNT(gender) FROM subject_table;
SELECT MAX(Age) FROM employee;
SELECT MIN(Age) FROM employee;
SELECT AVG(Age) FROM employee;
SELECT SUM(Age) FROM employee;
SELECT SUM(id) FROM employee;
 
 -- USE of "GROUP BY" 
 -- Task: count how many employees are working from different cities from employee table
select address, count(Name) from employee group by address;

-- Task: count how many employees are working from different cities from students table

show tables;
select * from student;
SELECT Address,count(Name) from student GROUP BY Address;

-- Task: count how many students are studing from different classes from student table
SELECT Class, count(Name) from student GROUP BY Class;

SELECT Class, Name, count(Name) from student GROUP BY Class, Name ORDER BY class ASC;

create table Marks_table (
	Name varchar (40),
    Gender Varchar(1) CHECK (Gender IN ('M','F')),
    Marks int not null,
    City varchar (40)
);

insert into Marks_table values ("Abir", "M",78,"Dhaka"),("Amir","M",78,"Dhaka"),("Asad","M",88,"Dhaka"),("Robin","M",40,"Bhola"),("Shabbir","M",75,"Sylhet"),("Sayma","F",98,"Ctg"),("Sitara","F",92,"Ctg");
SELECT * FROM MARKS_TABLE;

SELECT City, count(Name) from Marks_table Group by City order by City ASC;
select city, count(marks) from Marks_table group by city order by city asc;
select city, avg(marks) from Marks_table group by city order by city asc;

-- create a table of payment information
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    PaymentMode VARCHAR(50),
    City VARCHAR(100)
);
-- RENAME THE TABLE
ALTER TABLE Customers RENAME TO Payment_Table;
-- add 15 customers information in payment table
INSERT INTO Payment_table (CustomerID, CustomerName, PaymentMode, City) VALUES
(1, 'John Doe', 'Credit Card', 'New York'),
(2, 'Jane Smith', 'Cash', 'Los Angeles'),
(3, 'Ali Khan', 'Debit Card', 'Houston'),
(4, 'Emily Davis', 'PayPal', 'Chicago'),
(5, 'Chris Brown', 'Credit Card', 'Phoenix'),
(6, 'Sarah Lee', 'Cash', 'Philadelphia'),
(7, 'David Clark', 'Debit Card', 'San Antonio'),
(8, 'Emma Wilson', 'PayPal', 'San Diego'),
(9, 'Liam Johnson', 'Credit Card', 'Dallas'),
(10, 'Sophia Martinez', 'Cash', 'Austin'),
(11, 'Mason Hernandez', 'Debit Card', 'San Jose'),
(12, 'Olivia Lopez', 'PayPal', 'Fort Worth'),
(13, 'James Wright', 'Credit Card', 'Seattle'),
(14, 'Isabella Thomas', 'Cash', 'Denver'),
(15, 'Benjamin Perez', 'Debit Card', 'Boston');

SELECT * FROM Payment_table;
-- Task: count total payment in each PaymentMode
SELECT PaymentMode, count(PaymentMode) from Payment_table GROUP BY PaymentMode;

Select * from Marks_table ORDER BY Marks ASC;

insert into Marks_table values ("Rani","F",93,"Borishal"),("Salma","F",99,"Borishal"),("Rima","F",88,"Khulna"),("Ananna","F",91,"Khulna");

-- use of "HAVING" clause.
SELECT city,count(Name) from Marks_table GROUP BY City HAVING Max(Marks)>89;
SELECT Marks,city from Marks_table;


-- another chapter

show tables;
-- change the table name of "temp1" to "table3"
select * from temp1;
alter table temp1 rename to table3;

show tables;

-- add a new column of "Grade" in Marks_table.
ALTER TABLE Marks_table ADD COLUMN grade varchar(2);
select * from Marks_table;
UPDATE Marks_table SET grade = "A+" where Marks >=90;
UPDATE Marks_table SET grade = "B" where Marks>=80 and Marks<=89;
UPDATE Marks_table SET grade = "C" where Marks>=70 and Marks<=79;
UPDATE Marks_table SET grade = "D" where Marks>=60 and Marks<=69;
UPDATE Marks_table SET grade = "F" where Marks<=59;

-- TASK: find out the numbers of students in each grade by using "group by"
SELECT grade,count(name) from Marks_table group by grade ORDER BY grade ASC;

-- TASK: you mistakenly set a Marks of a student name Asad. His actual Marks is 75. Please update his marks.
UPDATE Marks_table SET Marks = 75 where Name="Asad";

-- TASK: Reduce by 1 a student name Salma.
UPDATE Marks_table SET Marks = Marks-1 where Name ="Salma";

-- TASK: Increase by 1 of all students Marks in Marks_table.alter
UPDATE Marks_table SET Marks = Marks+1;

select * from Marks_table;

-- Use of "delete"

show tables;
select * from table3;

INSERT INTO table3 (id, Name) VALUES
(201, 'Alice'),
(202, 'Bob'),
(203, 'Charlie'),
(204, 'Diana'),
(205, 'Ethan'),
(206, 'Fiona'),
(207, 'George'),
(208, 'Hannah'),
(209, 'Ian'),
(210, 'Julia'),
(211, 'Kevin'),
(212, 'Luna'),
(213, 'Mason'),
(214, 'Nora'),
(215, 'Oliver');

select * from table3;

-- TASK: perform a delete operation in "table3" to delete the information of id in between 205 and 207.
DELETE FROM table3 where id between 205 and 207;
select * from table3;

show tables;
select * from subject_table;
select * from employee;
select * from manush;

-- New Chapter: Foreign Keys

create table dept_table (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept_table values(101,"Math"),(102,"Science"),(103,"English"),(104,"Bangla");
select * from dept_table;

CREATE TABLE teachers_table (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    foreign key (dept_id) REFERENCES dept_table(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
-- DROP TABLE teachers_table;
INSERT INTO teachers_table values (1001,"Rifat",101),(1002,"Rima",102),(1003,"Sayma",103),(1004,"Ruma",104);
show tables;
select * from teachers_table;

-- Add new column to "teachers_table" and add values to the column.
AlTER TABLE teachers_table ADD COLUMN age INT NOT NULL;
UPDATE Teachers_table SET age = 34 where id = 1001;
UPDATE Teachers_table SET age = 43 where id = 1002;
UPDATE Teachers_table SET age = 36 where id = 1003;
UPDATE Teachers_table SET age = 28 WHERE id = 1004;



-- NEW CHAPTER

-- SQL JOINS
show tables;
-- delete from employee where age = 1;
select * from teachers_table;

create table tec_salary (
	id INT NOT NULL,
    salary INT NOT NULL
);

INSERT INTO tec_salary values (1001,20000),(1002,30000),(1003,15000),(1004,17000);
INSERT INTO tec_salary values (1006,12000);
SELECT * FROM tec_salary;

-- TASK: Find out the salary from tec_salary table using the id from teachers_table (booth same). using INNER JOIN method.
SELECT name,salary FROM Teachers_table INNER JOIN tec_salary ON Teachers_table.id = tec_salary.id;
SELECT * FROM Teachers_table INNER JOIN tec_salary ON Teachers_table.id = tec_salary.id;

-- LEFT JOIN
select * from teachers_table as tc_n
left join tec_salary as tc_s
on tc_n.id = tc_s.id;

-- RIGHT JOIN	
select * from tec_salary as tc_s
RIGHT join teachers_table as tc_n
on tc_s.id = tc_n.id;

-- NOTE: mySql does not support FULL JOIN, but we use UNION JOIN to use indirectly the "FULL JOIN".
-- use of - "UNION JOIN"
select * from teachers_table as tc_n
left join tec_salary as tc_s
on tc_n.id = tc_s.id
UNION 
select * from teachers_table as tc_n
RIGHT join tec_salary as tc_s
on tc_n.id = tc_s.id;


