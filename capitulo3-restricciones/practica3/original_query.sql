INSERT INTO users (
    id,
    name,
    age,
    username,
    password,
    is_admin
) VALUES (
    1,
    'Rudolf',
    33,
    'rudolf1234',
    'thisisnotsecure',
    false
);

INSERT INTO users (
    id,
    name,
    age,
    username,
    password,
    is_admin
) VALUES (
    1,
    'Jerry',
    25,
    'jerrysmith',
    'mypasswordis1234',
    true
);

SELECT * FROM users;
