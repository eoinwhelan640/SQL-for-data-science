-- 1. Is the students table directly related to the courses table? Why or why not?

-- No, it's linked by a link

-- 2. Using subqueries only, write a SQL statement that returns the names of those students that are taking 
-- the courses Physics and US History.
--  NOTE: Do not jump ahead and use joins. I want you to solve this problem using only what youve 
-- learned in this section.

select student_name from students 
where student_no in (select student_no 
                    from student_enrollment 
                    where course_no in (select course_no 
                                        from courses 
                                        where course_title 
                                        in ('Physics','US History'))) 


-- 3. Using subqueries only, write a query that returns the name of the student that is taking the highest 
-- number of courses.
--  NOTE: Do not jump ahead and use joins. I want you to solve this problem using only what 
-- youve learned in this section.
select student_name 
from students 
where student_no = (select student_no,count(course_no) cnt from student_enrollment
                    group by student_no 
                    order by cnt desc
                    limit 1)


SELECT student_name 
FROM students 
WHERE student_no IN (SELECT student_no 
                    FROM (SELECT student_no, COUNT(course_no) course_cnt 
                            FROM STUDENT_ENROLLMENT 
                            GROUP BY student_no 
                            ORDER BY course_cnt desc 
                            LIMIT 1) a )

-- 4. Answer TRUE or FALSE for the following statement:

--  Subqueries can be used in the FROM clause and the WHERE clause but cannot be used in the SELECT Clause.
-- false


-- 5. Write a query to find the student that is the oldest. You are not allowed to use LIMIT or the ORDER BY clause to solve this problem.
SELECT *

FROM students

WHERE age = (SELECT MAX(age) FROM students)


