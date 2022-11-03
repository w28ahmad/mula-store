/**************************************************************
-- GENERATE QUESTION STORE SCRIPT
-- This script will recreate the DB
-- Create the relavent tables
-- Insert the data
--
-- Creator: Wahab Ahmad
**************************************************************/

-- Create DB
DROP DATABASE IF EXISTS Mula;
CREATE DATABASE Mula;

USE Mula;

-- Create Question Options table
DROP TABLE IF EXISTS question_options;
CREATE TABLE question_options(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    option_A VARCHAR(100),
    option_B VARCHAR(100),
    option_C VARCHAR(100),
    option_D VARCHAR(100),
    option_E VARCHAR(100)
);

-- Create Question Solutions Table
DROP TABLE IF EXISTS question_solutions;
CREATE TABLE question_solutions(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    correct_solution VARCHAR(100),
    diagram CHAR(255),
    explination TEXT
);

-- Create Details Table
DROP TABLE IF EXISTS question_details;
CREATE TABLE question_details(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    grade INT,
    part_type CHAR(1),
    part_number INT,
    part_size INT
);

-- Create Hints Table
DROP TABLE IF EXISTS question_hints;
CREATE TABLE question_hints(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    hint_one VARCHAR(100),
    hint_two VARCHAR(100),
    hint_three VARCHAR(100),
    hint_four VARCHAR(100)
);


-- Create Questions Table
DROP TABLE IF EXISTS question;
CREATE TABLE question(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    question_snippet TEXT,
    diagram CHAR(255),
    options_id INT UNIQUE,
    solution_id INT UNIQUE,
    details_id INT UNIQUE,
    hints_id INT UNIQUE,

    CONSTRAINT fk_options_id FOREIGN KEY (options_id) REFERENCES question_options(id),
    CONSTRAINT fk_solution_id FOREIGN KEY (solution_id) REFERENCES question_solutions(id),
    CONSTRAINT fk_details_id FOREIGN KEY (details_id) REFERENCES question_details(id),
    CONSTRAINT fk_hints_id FOREIGN KEY (hints_id) REFERENCES question_hints(id)
);