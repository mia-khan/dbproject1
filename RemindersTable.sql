CREATE TABLE Reminders (
    reminder_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    plant_id INTEGER,
    task TEXT,
    frequency TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (plant_id) REFERENCES Plants(plant_id)
);