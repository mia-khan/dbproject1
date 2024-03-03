CREATE TABLE Events (
    event_id INTEGER PRIMARY KEY,
    plant_id INTEGER,
    event_type TEXT,
    event_date DATE,
    FOREIGN KEY (plant_id) REFERENCES Plants(plant_id)
);
