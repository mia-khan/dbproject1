-- This query returns plants with water frequency of weekly or daily and plants in the family Cactaceae or Crassulaceae
-- It uses complex search criterion of  AND & IN 

SELECT
  plants.name,
  plants.plant_family,
  plants.watering_frequency
FROM Plants
WHERE plants.watering_frequency IN ('Weekly', 'Daily')  
  AND plants.plant_family = 'Cactaceae' OR plants.plant_family = 'Crassulaceae';


