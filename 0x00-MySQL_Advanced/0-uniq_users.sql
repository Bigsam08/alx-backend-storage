-- SQL script that creates a table 'users' 
-- with 3 attributes of ID(primpary key), EMAIL, NAME

CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL AUTO_INCREAMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255)
);
