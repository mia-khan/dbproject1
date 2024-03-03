-- This query groups plants by family and provides the total number of plants in each family
-- and the count of plants requiring daily, weekly, and bi-weekly watering for each family.

SELECT plants.plant_family,
       COUNT(*) AS total_plants,
       COUNT(CASE WHEN Plants.watering_frequency = 'Daily' THEN 1 END) AS daily_watering,
       COUNT(CASE WHEN plants.watering_frequency = 'Weekly' THEN 1 END) AS weekly_watering,
       COUNT(CASE WHEN plants.watering_frequency = 'Bi-weekly' THEN 1 END) AS biweekly_watering
FROM Plants
GROUP BY plants.plant_family;