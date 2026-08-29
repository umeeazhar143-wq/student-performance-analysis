DROP DATABASE IF EXISTS student_performance;

CREATE DATABASE student_performance;

USE student_performance;
SHOW DATABASES;
USE student_performance;

SELECT COUNT(*) AS total_students
FROM students;

SELECT sex, COUNT(*) AS total_students
FROM students
GROUP BY sex;
SELECT sex, AVG(G3) AS average_final_grade
FROM students
GROUP BY sex;
SELECT AVG(studytime) AS average_study_time,
       AVG(G3) AS average_final_grade
FROM students;
SELECT school, AVG(G3) AS average_final_grade
FROM students
GROUP BY school;
