CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country_code TEXT NOT NULL,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    is_admin BOOLEAN
);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (1, 'David', 34, 'US', 'DavidDev', 'insertPractice', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (2, 'Samantha', 29, 'BR', 'Sammy93', 'addingRecords!', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (3, 'John', 57, 'CA', 'Jjdev21', 'welovebootdev', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (4, 'Ram', 42, 'IN', 'Ram11c', 'thisSQLcourserocks', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (5, 'Tony', 27, 'US', 'cashpall', 'loveThePass', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (6, 'Admin', 0, 'US', 'cashpal_support', 'backendDev', true);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (7, 'Allan', 27, 'US', 'Alires', 'iLoveB00tdev', true);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (8, 'Dexter', 32, 'US', 'tech-support', 'badBoi99', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (9, 'Tiffany', 15, 'US', 'Tifferoon', 'autoincrement', true);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (10, 'Lane', 27, 'US', 'wagslane', 'update_me', true);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (11, 'Darren', 42, 'CA', 'cashpal_support_tech', 'found_me', false);
