SELECT student_name FROM students
WHERE age BETWEEN 18 AND 20; 

SELECT * FROM students
WHERE student_name like '%ch%'
OR student_name like "%nd";

SELECT * FROM students
WHERE (student_name like '%ae%'
OR student_name like "%ph%")
AND NOT age=19;

SELECT student_name FROM students
ORDER BY age desc;
-- Should be comments, can also do the order by by index col that was selected
--SELECT student_name FROM students
--ORDER BY 1 desc;


SELECT student_name,age FROM students
ORDER BY age desc LIMIT 4;
--SELECT student_name,age FROM students
--ORDER BY age desc
--FETCH FIRST 4 ROWS ONLY

SELECT * 
FROM students 
WHERE age<20 
AND (student_no BETWEEN 3 and 5 OR student_no =7)
OR (age>20 AND student_no>=4);