CREATE TABLE PlantCondition (
    condition_id INTEGER PRIMARY KEY,
    plant_id INTEGER,
    condition_date DATE,
    condition_status TEXT,
    FOREIGN KEY (plant_id) REFERENCES Plants(plant_id)
);