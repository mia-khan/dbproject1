# Problem Description

### Problem:
Many people struggle to keep their plants alive, which is mainly due to the fact they are not sure what the proper instructions are for their plant and easily forget to carry out the instructions. It may be hard to find specific instructions on each plant without a database that keeps track of it.

### Objective:
A plant care tracker database that helps plant keepers in managing their plant collections effectively. It lets them store information about different plants, track plant condition, manage care activities such as activities like watering, fertilizing, or repotting for each plant. It helps set reminders so that plant care requirements are met. It can also help record events such as recording occurrences like flowering, pruning, or pest infestations.

### Nouns:
- plants
- users
- instructions
- reminders
- tracker
- locations
- plant collections
- activity
- events
- plant condition

### Verbs:
- store
- manage
- keep
- add
- update
- record
- monitor

### Aggregated Nouns and Verbs

#### Nouns:

**Plants Table:**
- `plant_id` (Primary Key)
- Name
- Description
- care_requirements (e.g., watering frequency, sunlight exposure, temperature range)

**Plant Condition Table:**
- `condition_id` (Primary Key)
- `plant_id` (Foreign Key referencing Plants table)
- `condition_date`: Date when the condition was assessed.
- `condition_status`: Indicates the condition status of the plant (e.g., good, fair, poor).

**Plant Collection Table:**
- `collection_id` (Primary Key)
- `plant_id` (Foreign Key referencing Plants table)
- `user_id` (Foreign Key references Users table)
- Collection name

**Care Logs Table:**
- `log_id` (Primary Key)
- `plant_id` (Foreign Key referencing Plants table)
- Activity (e.g., watering, fertilizing, repotting, pruning)
- Timestamp

**Reminders Table:**
- `reminder_id` (Primary Key)
- `user_id` (Foreign Key referencing Users table)
- `plant_id` (Foreign Key referencing Plants table)
- Task (e.g., watering, fertilizing)
- Frequency (e.g., daily, weekly, monthly)

**Users Table:**
- `user_id` (Primary Key)
- Username
- Email
- Password

**Events Table:**
- `event_id` (Primary Key)
- `plant_id` (Foreign Key referencing Plants table)
- `event_type`: Describes the type of event (e.g., flowering, pruning, transplanting, pest infestation).
- `event_date`: Date when the event occurred.

---

### Notes:
- Users can manage plant collections, allowing plants to belong to multiple collections, with each collection linked to the user's account.
- Plant conditions are tracked to optimize care efforts, while care activities are logged with timestamps.
- Reminders for care tasks are associated with specific plants and user accounts.
- Events such as flowering, pruning, or pest infestations are tracked.

---

### Rules:
- Plants must have a unique identifier in the system.
- Users can add and manage information about different plants.
- Plants can be a part of many Plant Collections.
- Plant Collections need more than one plant.
- Plant conditions are tracked to optimize care routines for each plant.
- Users can log care activities for each plant.
- Reminders are set up for specific care tasks, associated with individual plants and user accounts.
- Events impacting plant growth are recorded for plants affected.

---

### Relational Schema:

- **Users**(`user_id`, `username`, `password`, `email`)
- **Plants**(`plant_id (PK)`, `user_id (FK)`, `name`, `plant_family`, `watering_frequency`, `humidity_exposure`, `temperature_range`, `date_added`)
- **Plant Condition**(`condition_id (PK)`, `plant_id (FK)`, `condition_date`, `condition_status`)
- **Plant Collection**(`collection_id (PK)`, `user_id (FK)`, `plant_id (FK)`, `collection_name`)
- **Care Log**(`log_id (PK)`, `plant_id (FK)`, `activity`, `timestamp`)
- **Reminders**(`reminders_id (PK)`, `user_id (FK)`, `plant_id (FK)`, `task`, `frequency`)
- **Events**(`event_id (PK)`, `plant_id (FK)`, `event_type`, `event_date`)

---

### UML Class Diagram:

*(Insert diagram here)*

---

### Logical ERD Diagram:

*(Insert diagram here)*

