-- Write a query that displays 3 columns. The query should display the fruit and it's total supply along with 
-- a category of either LOW, ENOUGH or FULL. Low category means that the total supply of the fruit is 
-- less than 20,000. The enough category means that the total supply is between 20,000 and 50,000. If the total 
-- supply is greater than 50,000 then that fruit falls in the full category.
select a.name,a.fruit_count,
CASE
    (WHEN a.fruit_count < 20000 THEN "LOW")
    (WHEN a.fruit_count > 20000 AND a.fruit_count < 50000 THEN "ENOUGH")
    (WHEN a.fruit_count > 50000 THEN "FULL")
END as category
from (select name,sum(supply) fruit_count from fruits group by name) a


-- Taking into consideration the supply column and the cost_per_unit column, you should be able to tabulate 
-- the total cost to import fruits by each season. The result will look something like this:

-- "Winter" "10072.50"
-- "Summer" "19623.00"
-- "All Year" "22688.00"
-- "Spring" "29930.00"
-- "Fall" "29035.00"

-- Write a query that would transpose this data so that the seasons become columns and the total cost for 
-- each season fills the first row?
select sum(CASE WHEN season='WINTER' THEN total_cost END),
sum(CASE WHEN season='Summer' THEN total_cost END)
sum(CASE WHEN season='Spring' THEN total_cost END)
sum(CASE WHEN season='Fall' THEN total_cost END) 
sum(CASE WHEN season='All Year' THEN total_cost END) 
from (select season,(cost_per_unit * supply) total_cost from fruits group by season) a









