
CREATE TABLE medication (
    id SERIAL PRIMARY KEY int ,
    generic_name TEXT NOT NULL,
    brand_name TEXT NOT NULL,
    dosage TEXT NOT NULL,
    drug_description TEXT NOT NULL,
);

CREATE TABLE user (
    id PRIMARY KEY int,
    user_name TEXT NOT NULL,
);

CREATE TABLE reminder (
    id PRIMARY KEY int,
    user_id FOREIGN KEY int,
    medication_id FOREIGN KEY int, 
    title TEXT NOT NULL,
    description_notes TEXT NOT NULL,
    is_complete BOOLEAN DEFAULT FALSE,
);

CREATE TABLE notification (
    id PRIMARY KEY int,
    reminder_id FOREIGN KEY int NOT NULL,
    notification_time TIMESTAMP NOT NULL,
);
