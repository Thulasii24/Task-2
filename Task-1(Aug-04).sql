CREATE DATABASE TASKONE; 
USE TASKONE; 

-- Department table
CREATE TABLE Department (
    Department_id INT PRIMARY KEY,
    Dept_Name VARCHAR(25) NOT NULL
);


-- Student table
CREATE TABLE Student (
    Student_id INT PRIMARY KEY,
    Student_Name VARCHAR(30),
    Gender ENUM('M', 'F'),
    Email_id VARCHAR(30) UNIQUE,
    Mobile_No BIGINT UNIQUE,
    Department_id INT,  
    FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
);

-- Manuals table
CREATE TABLE Manuals (
    Manual_id INT PRIMARY KEY,
    Manual_name VARCHAR(30) NOT NULL,
    Published_year DATE NOT NULL,
    Manual_price INT NOT NULL,
    Department_id INT,  
    FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
);





