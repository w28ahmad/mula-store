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
DROP TABLE IF EXISTS QuestionOptions;
CREATE TABLE QuestionOptions(
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
DROP TABLE IF EXISTS QuestionSolutions;
CREATE TABLE QuestionSolutions(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    correct_solution VARCHAR(100),
    diagram CHAR(255),
    explination TEXT
);

-- Create Details Table
DROP TABLE IF EXISTS QuestionDetails;
CREATE TABLE QuestionDetails(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    grade INT,
    part_type CHAR(1),
    part_number INT,
    part_size INT
);

-- Create Hints Table
DROP TABLE IF EXISTS QuestionHints;
CREATE TABLE QuestionHints(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    hint_one VARCHAR(100),
    hint_two VARCHAR(100),
    hint_three VARCHAR(100),
    hint_four VARCHAR(100)
);


-- Create Questions Table
DROP TABLE IF EXISTS Questions;
CREATE TABLE Questions(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    question_snippet TEXT,
    diagram CHAR(255),
    options_id INT UNIQUE,
    solution_id INT UNIQUE,
    details_id INT UNIQUE,
    hints_id INT UNIQUE,

    CONSTRAINT fk_options_id FOREIGN KEY (options_id) REFERENCES QuestionOptions(id),
    CONSTRAINT fk_solution_id FOREIGN KEY (solution_id) REFERENCES QuestionSolutions(id),
    CONSTRAINT fk_details_id FOREIGN KEY (details_id) REFERENCES QuestionDetails(id),
    CONSTRAINT fk_hints_id FOREIGN KEY (hints_id) REFERENCES QuestionHints(id)
);