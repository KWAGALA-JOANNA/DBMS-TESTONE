CREATE TABLE students(
	Reg_no VARCHAR(255) PRIMARY KEY,
	First_Name VARCHAR(255),
	Last_Name VARCHAR(255),
	Course VARCHAR(255),
	Gender VARCHAR(255),
	D_O_B DATE
);

INSERT INTO students(Reg_no, First_Name, Last_Name,  Course, Gender, D_O_B )
VALUES 		('1/2016', 'John', 'Mutuku', 'DCS', 'Male', 13/6/1990),
			('2/2016', 'Steve', 'KipKorir', 'DCS', 'Male', 13/3/1985),
			('3/2016', 'Susan', 'Mutua', 'CIT', 'Female', 19/11/1986),
			('4/2017', 'Steve', 'Kingori', 'DBIT','Male', 1/3/1978);
			 
SELECT * FROM students;
		 
-- SELECT Reg_no, Last_Name, First_Name FROM students;

-- combining first name and last name in student name

SELECT *, CONCAT(Last_Name,  First_Name) AS Student_Name FROM students;

-- SELECT DISTINCT gender, D_O_B, Last_Name, First_Name FROM students
-- WHERE course = 'DCS';

--Produce total number of students per course
-- SELECT SUM(Reg_no) FROM students
-- WHERE course = 'DCS' ;
-- SELECT SUM(Reg_no) FROM students
-- WHERE course = 'CIT' ;
-- SELECT SUM(Reg_no) FROM students
-- WHERE course = 'DBIT' ;

--List of all male students born between 1980 and 1989
-- Modifying the last name
UPDATE students
SET Last_Name= 'Mwangi'
WHERE Reg_no ='4/2017';

DELETE FROM students;








