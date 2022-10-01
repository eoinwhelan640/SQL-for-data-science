-- 1. Write a query against the professors table that can output the following in the result: "Chong works in the Science department"
-- Don't need to replace anythinng, just add to the first name
--SELECT REPLACE(last_name, last_name ||''|| 'works in the ' || department||' department' ) FROM professors

SELECT last_name || ' ' || 'works in the '|| department ||' department' FROM professors

-- 2. Write a SQL query against the professors table that would return the following result:

--"It is false that professor Chong is highly paid"
--"It is true that professor Brown is highly paid"
--"It is false that professor Jones is highly paid"
--"It is true that professor Wilson is highly paid"
--"It is false that professor Miller is highly paid"
--"It is true that professor Williams is highly paid"

--NOTE: A professor is highly paid if they make greater than 95000.
SELECT "It is " ||(salary>95000)|| ' that professor ' ||last_name|| ' is highly paid' FROM professor





-- 3. Write a query that returns all of the records and columns from the professors table but shortens the department names to only the first three characters in upper case.
SELECT UPPER(SUBSTRING(department,3)), salary, hire_date FROM professors




-- 4. Write a query that returns the highest and lowest salary from the professors table excluding the professor named 'Wilson'.
SELECT MAX(salary),MIN(salary) FROM professors where not last_name='Wilson'


-- 5. Write a query that will display the hire date of the professor that has been teaching the longest.

--SELECT last_name FROM professors where hire_date= MAX(hire_date)
-- two imprtant points
--1. SQL doesnt allow aggregators in the where section
--2. if they're teaching the longest, you want the minimum hire date
SELECT MIN(hire_date) FROM professors