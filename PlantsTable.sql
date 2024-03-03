CREATE TABLE Plants (
plant_id INTEGER PRIMARY KEY,
name TEXT,
plant_family TEXT, 
watering_frequency TEXT, 
humidity_exposure TEXT, 
temperature_range TEXT, 
date_added DATE,
user_id INTEGER, 
FOREIGN KEY (user_id) REFERENCES Users(user_id) 
);
