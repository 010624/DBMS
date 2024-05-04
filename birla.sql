-- // dml commnad

-- create
CREATE TABLE STUDENTS (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);

-- insert
INSERT INTO STUDENTS VALUES (0001, 'birla', 'manager');
INSERT INTO STUDENTS VALUES (0002, 'kandya', 'chairmain');
INSERT INTO STUDENTS VALUES (0003, 'bansode', 'ceo');

-- update
UPDATE STUDENTS SET name ='pratham' WHERE empId=0003;

-- fetch 
SELECT * FROM STUDENTS WHERE dept = 'ceo';
SELECT * FROM STUDENTS WHERE dept = 'manager';
SELECT * FROM STUDENTS WHERE dept = 'chairmain';








-- //Dcl COMMNAD

create table data_info (
name varchar(50),
sal varchar(50),
job varchar(50)
);
insert into data_info values ('birla',1000000,'gamer designer');
insert into data_info values ('khade',5000000,'softeware engg');
insert into data_info values ('doru',1000000,'game taster');
 select * from  data_info;
grant data_info  to 'birla';
revoke data_info from  'khade';








-- //view

CREATE TABLE STUDENTS (
  stuId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  marks int NOT NULL
);

-- insert
INSERT INTO STUDENTS VALUES (0001, 'BIRLA', 'SCIENCE',78);
INSERT INTO STUDENTS VALUES (0002, 'OM', 'MATHS',89);
INSERT INTO STUDENTS VALUES (0003, 'PRATHAM', 'ARTS',30);


CREATE VIEW CUSTOMERS_VIEW AS
SELECT name,marks
FROM STUDENTS;

SELECT * FROM CUSTOMERS_VIEW;

UPDATE CUSTOMERS_VIEW
SET marks = 35
WHERE name = 'om';
SELECT * FROM CUSTOMERS_VIEW;
DELETE FROM CUSTOMERS_VIEW
WHERE marks = 30;
SELECT * FROM CUSTOMERS_VIEW;
DROP VIEW CUSTOMERS_VIEW;







-- ///ddl 
CREATE TABLE Student (
StudentID INT PRIMARY KEY,
Name VARCHAR(50),
Email VARCHAR(100)
);

-- Inserting data into Student table
INSERT INTO Student (StudentID, Name, Email) VALUES
(1, 'prat', 'prat@example.com'),
(2, 'birla', 'birla@example.com'),
(3, 'pratham','prat@example.com');

SELECT * FROM Student;

ALTER TABLE Student ADD CONSTRAINT Unique_Email UNIQUE (Email);


-- //triggers
CREATE TABLE students(name varchar(45) NOT NULL,course varchar(35) NOT NULL, admission_date date, attendance varchar(10) ); 
INSERT INTO students VALUES 
('shreyas', 'csd', '2020-10-04', 13),
('nidhi', 'aids', '2020-10-04', 30),
('pratham', 'computer', '2020-10-04', 76),  
('om', 'mechanical', '2020-10-04', 100), 
('vedant', 'civil', '2020-10-04', 67),  
('janvi', 'it', '2020-10-04', 51); 
select*from students;
-- DELIMITER //
Create Trigger before_insert_empworkinghours BEFORE INSERT ON students FOR EACH ROW 
BEGIN IF NEW.attendance < 0 THEN SET NEW.attendance = 0;  
END IF;  
END // 
INSERT INTO students VALUES ('Markus', 'Former', '2020-10-08', 14);  
INSERT INTO students VALUES ('Alexander', 'Actor', '2020-10-012', -13);
select*from students;









-- // joins in sql


create table STUDENT (id int,Name varchar(30));
insert into STUDENT VALUES(1,'shreyas'),(2,'nidhi'),(3,'om'),(4,'pratham'),(5,'janhavi');
select * from STUDENT;
create table GRADE (id int,Grade varchar(30));
insert into GRADE VALUES(1,'A'),(2,'B'),(3,'C'),(5,'D');
select * from GRADE;
select STUDENT.Name,GRADE.Grade from STUDENT left join GRADE on
STUDENT.id=GRADE.id;







-- /// tcl


CREATE TABLE STUDENTS (
  rollno INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  mob_no INTEGER NOT NULL,
  dept TEXT NOT NULL
);

INSERT INTO STUDENTS VALUES (1254, 'Shreyas', 547812, 'Cse');
INSERT INTO STUDENTS VALUES (1255, 'nilesh', 630245, 'Cse');
INSERT INTO STUDENTS VALUES (1378, 'rushabh', 784252, 'Mec');
INSERT INTO STUDENTS VALUES (1395, 'sidhhav', 871452, 'It');

INSERT INTO STUDENTS VALUES(1359, 'vinit', 874569, 'Ece');
COMMIT;
UPDATE STUDENTS SET name = 'dipesh' WHERE rollno = '1254';
SAVEPOINT A;
INSERT INTO STUDENTS VALUES(1387, 'chaitanya', 754231,'Mec');
SAVEPOINT B;
SELECT * FROM STUDENTS;









-- //nested and complex queries
 Nested and complex queries.
CREATE TABLE EMPLOYEE (
  EId INTEGER PRIMARY KEY,
  Ename TEXT NOT NULL,
  DId INTEGER NOT NULL,
  Salary INTEGER NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'noob', 11,80000);
INSERT INTO EMPLOYEE VALUES (0002, 'gandu', 12,92000);
INSERT INTO EMPLOYEE VALUES (0003, 'pagal', 13,76000);
INSERT INTO EMPLOYEE VALUES (0007,'yz',18,50000);
INSERT INTO EMPLOYEE VALUES (0009,'c',19,45000);

-- NESTED QUERY
SELECT * FROM EMPLOYEE WHERE Did=
(select Did from EMPLOYEE where Ename='noob');

-- COMPLEX QUERY
SELECT Eid,Ename
FROM EMPLOYEE
WHERE Salary> (
SELECT AVG(75000)
FROM EMPLOYEE
WHERE Did=19);









-- /// entity is basic concept of er model, refers to specific object,entities have attributes, weak and stong
-- ///simple and composite single value multivalue complex attributes
-- ///normalization - spliting single table into multiple table
-- ///    ddl- create alter DROP
--     dml - select insert update DELETE
--     dcl - grant revoke
--     tcl
-- /// drop- remove table  truncate- delete the row from the table
-- /// foreign - provide link between data in two table
-- /// query dis - no indexes complictaed join
-- /// dis dbms- costly more complex
-- /// view constrain - primry kry foreign unique
-- /// set of one or more more column that uniquely identifies record u-key
-- /// database is collection of database
-- /// Collection of 1 or more column that allows a row  to be disnctly indentified
-- /// drop delete whole table or database
-- /// sequential query language (SQL)
--  /// dbms is software is use to manage the data and allow user to define datatype and constrain
--  /// table is a logical representation of data in the form of row and column
--  /// comstrain are use to specify rule for data
--  /// structured unstructured semi-structured
 


