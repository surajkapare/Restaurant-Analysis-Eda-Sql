create database cognifyz;

use cognifyz;
show tables;
select database();
select * from cleaned_data;

-- Task 1 : Top Cuisines
-- Determine the top three most common cuisines in the dataset.
-- Calculate the percentage of restaurants that serve each of the top cuisines.

-- --->  
SELECT 
    cuisines,
    COUNT(*) AS restaurant_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_data),2)AS percentage
FROM cleaned_data
WHERE cuisines IS NOT NULL
GROUP BY cuisines
ORDER BY restaurant_count DESC
LIMIT 3;

-- -----------------------------------------------------------------------------------------------------------------------------------------

-- Task: City Analysis 
-- A. Identify the city with the highest number of restaurants in the dataset.

select * from cleaned_data;
select city , count(restaurant_name) as total_restaurant
from cleaned_data
group by city 
order by total_restaurant desc
limit 1;
-- ----------------------------------------------------------------------------------------------------------------------------------------
-- B.Calculate the average rating for restaurants in each city.
select * from cleaned_data;
select city,restaurant_name,avg(aggregate_rating) as average_rating  
from cleaned_data
group by city,restaurant_name
order by average_rating desc; 

-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- C.Determine the city with the highest average rating.
select city , avg(aggregate_rating) as average_rating
from cleaned_data
group by city 
order by average_rating desc
limit 1;