PRAGMA foreign_keys = ON;

CREATE table countries(code TEXT PRIMARY KEY, name TEXT);

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    country_code TEXT NOT NULL,
    username TEXT ,
    password TEXT,
    is_admin BOOLEAN,
    FOREIGN KEY (country_code)
    REFERENCES countries(code)
);

INSERT INTO countries (
    code,
    name
) VALUES (
    'US',
    'United States of America'
);

INSERT INTO countries (
    code,
    name
) VALUES (
    'IN',
    'India'
);