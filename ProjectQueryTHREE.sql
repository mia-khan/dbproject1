-- In this query it analyzes plant care activities grouped by plant family.

SELECT Plants.plant_family,
       COUNT(*) AS total_activities
FROM Events 
INNER JOIN Plants 
	ON events.plant_id = plants.plant_id
GROUP BY plants.plant_family
HAVING COUNT(*) > 5
  AND AVG(LENGTH(events.event_type)) > 5;