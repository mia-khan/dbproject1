-- I am joing the tables plants, users, PlantCollections, and PlantCondition
-- I am showing the relationship betweent plant collections, users, ans plants
-- Users can make collections with as many plants as they want and in as many collections as they want 

SELECT 
	plants.name,
	users.username,
	PlantCollections.name,
	PlantCondition.condition_status
FROM Plants
INNER JOIN PlantCollections
	ON plants.plant_id = PlantCollections.plant_id
INNER JOIN users 
	ON PlantCollections.user_id = users.user_id
INNER JOIN PlantCondition
	ON plants.plant_id = PlantCondition.plant_id
