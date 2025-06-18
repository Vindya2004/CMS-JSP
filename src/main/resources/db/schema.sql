CREATE DATABASE cms;

USE cms;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255),
    password VARCHAR(255),
    email VARCHAR(255),
    job VARCHAR(255)
);

CREATE TABLE complaints (
    complaint_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    description TEXT,
    date DATE,
    status VARCHAR(20) DEFAULT 'Pending',
    comment VARCHAR(30)
);
