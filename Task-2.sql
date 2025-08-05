USE TASKONE;

ALTER TABLE Department
MODIFY Dept_Name VARCHAR(50);

-- Inserting data for Department Table
INSERT INTO DEPARTMENT(Department_id, Dept_Name)
values(101, 'Electrical & Electronics'),
	  (102, 'Electronics & Communication'),
      (103, 'Mechanical'),
      (104, 'Computer Science'),
      (105, 'AIML'),
      (106, 'CS & IT'),
      (107, 'Cyber Security'),
      (108, 'Civil');
      
-- Inserting Data for Students Table
INSERT INTO Student
VALUES 
(01, 'Thulasi', 'M', 'Thulasee@gmail.com', 7896541230, 101),
(02, 'Eswar', 'M', 'Eswar123@gmail.com', 9632587410, 101),
(03, 'Ravi', 'M', 'Ravi18@gmail.com', 8523669740, 105),
(04, 'Sandhya', 'F', 'Sandhya29@gmail.com', 6392584712, 102),
(05, 'Sagar', 'M', 'Sagar256@gmail.com', 6547823910, 108),
(06, 'Vidya', 'F', 'Vidya@gmail.com', 8547963214, 106),
(07, 'Theja', 'F', 'Theja1@gmail.com', 7845236914, 103),
(08, 'Vidya Sagar', 'M', 'Vidyasagar13@gmail.com', 9110362785, 107),
(09, 'Sai Krishna', 'M', 'Sai1@gmail.com', 8526479319, 104),
(10, 'Akash', 'M', 'Akash@gmail.com', 6987452139, 103);

-- Inserting Data for Manuals Table
INSERT INTO Manuals
VALUES
(1, 'Digital Circuits', '2019-06-15', 500, 101),
(2, 'Embedded Systems', '2021-03-10', 600, 102),
(3, 'Thermodynamics', '2018-11-25', 700, 103),
(4, 'Operating Systems', '2020-09-12', 550, 104),
(5, 'AI Fundamentals', '2022-01-20', 750, 105),
(6, 'Database Management', '2023-02-18', 620, 106),
(7, 'Cybersecurity Essentials', '2021-07-30', 800, 107),
(8, 'Structural Analysis', '2017-05-22', 670, 108);


UPDATE Student
SET Student_Name = 'RaviTeja'
WHERE Student_id = 03;

UPDATE STUDENT
SET Email_id = 'Thulasi29@gmail.com'
WHERE Student_id = 01;

UPDATE Manuals
SET Manual_Name = 'Cybersecurity Fundamentals'
WHERE Manual_id = 07;

UPDATE Manuals
SET Manual_Price = CASE
    WHEN Manual_id = 1 THEN 299
    WHEN Manual_id = 2 THEN 349
    WHEN Manual_id = 3 THEN 949
    WHEN Manual_id = 4 THEN 499
    WHEN Manual_id = 5 THEN 599
    WHEN Manual_id = 6 THEN 1599
    WHEN Manual_id = 7 THEN 1999
    WHEN Manual_id = 8 THEN 1499
END
WHERE Manual_id IN (1, 2, 3, 4, 5, 6, 7, 8);

SELECT * 
FROM MANUALS;

SELECT * FROM STUDENT;

DELETE FROM Manuals
WHERE Manual_id = 3;
