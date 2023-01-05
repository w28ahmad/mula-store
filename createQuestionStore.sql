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


-- Create Questions Table
DROP TABLE IF EXISTS question;
CREATE TABLE question(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    question_snippet TEXT,
    diagram CHAR(255)
) ENGINE=INNODB;

-- Create Question Options table
DROP TABLE IF EXISTS question_options;
CREATE TABLE question_options(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    option_a VARCHAR(100),
    option_b VARCHAR(100),
    option_c VARCHAR(100),
    option_d VARCHAR(100),
    option_e VARCHAR(100),
    question_id INT UNIQUE,

    CONSTRAINT fk_option_question_id FOREIGN KEY (question_id) REFERENCES question(id)
) ENGINE=INNODB;

-- Create Question Solutions Table
DROP TABLE IF EXISTS question_solutions;
CREATE TABLE question_solutions(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    correct_solution VARCHAR(100),
    diagram CHAR(255),
    explanation TEXT,
    question_id INT UNIQUE,

    CONSTRAINT fk_solution_question_id FOREIGN KEY (question_id) REFERENCES question(id)
) ENGINE=INNODB;

-- Create Details Table
DROP TABLE IF EXISTS question_details;
CREATE TABLE question_details(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    grade INT,
    part_type CHAR(1),
    part_number INT,
    part_size INT,
    subject CHAR(100),
    topic CHAR(100),
    question_id INT UNIQUE,

    CONSTRAINT fk_details_question_id FOREIGN KEY (question_id) REFERENCES question(id)
) ENGINE=INNODB;

-- Important index
CREATE INDEX grade_part_type_index ON question_details (grade, part_type);

-- Create Hints Table
DROP TABLE IF EXISTS question_hints;
CREATE TABLE question_hints(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    hint_one VARCHAR(100),
    hint_two VARCHAR(100),
    hint_three VARCHAR(100),
    hint_four VARCHAR(100),
    question_id INT UNIQUE,

    CONSTRAINT fk_hints_question_id FOREIGN KEY (question_id) REFERENCES question(id)
) ENGINE=INNODB;