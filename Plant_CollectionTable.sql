CREATE TABLE PlantCollections (
    collection_id INTEGER PRIMARY KEY,
    name TEXT,
    description TEXT,
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);