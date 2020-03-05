DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS users_data CASCADE;

CREATE TABLE users
(
    id SERIAL PRIMARY KEY NOT NULL,
    login VARCHAR(30) NOT NULL,
    mail VARCHAR(100) NOT NULL
);

CREATE TABLE users_data
(
    id SERIAL PRIMARY KEY NOT NULL,
    user_id INTEGER REFERENCES users(id),
    date_inscription DATE NOT NULL,
    date_naissance DATE,
    code_postal VARCHAR(5),
    passw VARCHAR(30) NOT NULL
);