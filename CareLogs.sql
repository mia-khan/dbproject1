CREATE TABLE CareLogs (
    log_id INTEGER PRIMARY KEY,
    plant_id INTEGER,
    activity TEXT,
    timestamp DATETIME,
    FOREIGN KEY (plant_id) REFERENCES Plants(plant_id)
);