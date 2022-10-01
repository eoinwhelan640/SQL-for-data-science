-- 1. Write a query that displays only the state with the largest amount of fruit supply.
select state,max(supply) from fruit_imports group by state order by max(supply) limit 1
select state FROM fruit_imports group by state order by sum(supply) desc limit 1


-- 2. Write a query that returns the most expensive cost_per_unit of every season. 
--The query should display 2 columns, the season and the cost_per_unit
select season,cost_per_unit from fruit_imports group by season order by cost_per_unit desc

SELECT season, MAX(cost_per_unit) highest_cost_per_unit
FROM fruit_imports
GROUP BY season

-- 3. Write a query that returns the state that has more than 1 import of the same fruit.
select state from fruit_imports group by state,name having (count(*) > 1)



-- 4. Write a query that returns the seasons that produce either 3 fruits or 4 fruits.
select season,count(name)
from fruit_imports
group by season
having count(name)=3 or count(name)=4


-- 5. Write a query that takes into consideration the supply and cost_per_unit columns for determining 
-- the total cost and returns the most expensive state with the total cost.
select state,sum(supply*cost_per_unit) as total_cost
from fruit_imports
group by state
order by total_cost
limit 1




-- Execute the below SQL script and answer the question that follows:

CREATE table fruits (fruit_name varchar(10));
INSERT INTO fruits VALUES ('Orange');
INSERT INTO fruits VALUES ('Apple');
INSERT INTO fruits VALUES (NULL);
INSERT INTO fruits VALUES (NULL);

-- 6. Write a query that returns the count of 4. You'll need to count on the column fruit_name 
-- and not use COUNT(*)
SELECT COUNT(COALESCE(fruit_name, 'SOMEVALUE'))
FROM fruits;