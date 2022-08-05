-- Database: mande_db

-- DROP DATABASE mande_db;

CREATE DATABASE mande_db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

\c mande_db


CREATE TABLE Ptype(
    type_ID SERIAL PRIMARY KEY,
    type_name VARCHAR(60),
    breed VARCHAR(60),
    description VARCHAR(60) DEFAULT ' '
);

CREATE TABLE Pet(
    pet_ID SERIAL PRIMARY KEY,
    pet_name VARCHAR(60),
    age INT,
    type_ID INT,
    FOREIGN KEY (type_ID) REFERENCES Ptype(type_ID)
);

CREATE TABLE Toy(
    toy_ID SERIAL PRIMARY KEY,
    toy_name VARCHAR(60),
    color VARCHAR(60),
    pet_ID INT,
    FOREIGN KEY (pet_ID) REFERENCES Pet(pet_ID)
);