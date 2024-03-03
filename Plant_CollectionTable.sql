CREATE TABLE PlantCollections (
    collection_id INTEGER PRIMARY KEY,
    name TEXT,
    user_id INTEGER,
    plant_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
    FOREIGN KEY (plant_id) REFERENCES Plants(plant_id)
);
