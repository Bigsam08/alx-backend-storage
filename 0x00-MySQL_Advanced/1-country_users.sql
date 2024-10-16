-- SQL script that creates a table 'users' 
-- with 3 attributes of ID(primpary key), EMAIL, NAME
-- using the ENUM keyword to take either of the countries available with US as default

CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL AUTO_INCREAMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255)
	country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
