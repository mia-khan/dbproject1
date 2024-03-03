-- I am the finding users who have plants that need watering 
-- AND have not logged any watering activity in the CareLogs table.


SELECT
users.username, 
plants.name,
plants.watering_frequency, 
       CareLogs.activity AS last_watering_activity 
FROM Users 
INNER JOIN Plants 
	ON users.user_id = plants.user_id
LEFT JOIN CareLogs 
	ON plants.plant_id = CareLogs.plant_id  
WHERE Plants.watering_frequency < 'weekly' 
  AND (CareLogs.activity IS NULL OR CareLogs.activity NOT LIKE '%watering%');
