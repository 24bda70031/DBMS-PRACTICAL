CREATE TABLE Students (
    id NUMERIC PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(30),
    marks NUMERIC(10)
);

INSERT INTO Students VALUES (1, 'Aman', 'Mohali', 85);
INSERT INTO Students VALUES (2, 'Rohit', 'Mohali', 78);
INSERT INTO Students VALUES (3, 'Neha', 'Mohali', 92);
INSERT INTO Students VALUES (4, 'Simran', 'Amritsar', 88);
INSERT INTO Students VALUES (5, 'Karan', 'Amritsar', 75);

SELECT * FROM Students

--i
SELECT CITY, COUNT(*) AS COUNT_OF_STUDENTS
FROM Students
GROUP BY CITY

--ii
SELECT CITY, COUNT(Id) AS COUNT_OF_STUDENTS
FROM Students
GROUP BY CITY

--iii
SELECT CITY, COUNT(Id) AS COUNT_OF_STUDENTS
FROM Students
GROUP BY CITY
HAVING COUNT(Id)<3

SELECT city,AVG(MARKS)::NUMERIC(10,2) as average_marks
FROM Students
Group BY city;

SELECT city, SUM(marks) FROM Students GROUP BY city;

SELECT city, MAX(marks) FROM Students GROUP BY city;

SELECT city, MIN(marks) FROM Students GROUP BY city;
