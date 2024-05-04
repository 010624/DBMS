CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    doctor_id INT
);

CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100)
);

INSERT INTO Patient (patient_id, name, age, gender, doctor_id) VALUES 
(1, 'John Doe', 35, 'Male', '1'),
(2, 'Yuuichi Katagiri', 20, 'Male', '2'),
(3, 'Yumeko Jabami', 19, 'Female', '3');

INSERT INTO Doctor (doctor_id,name,specialization) VALUES
(3, 'Light Yagami', 'Cardiologist'),
(1, 'Kiyotaka Ayanokoji', 'Neurosergon'),
(2, 'Johan Liebert', 'Psychologist');

-- String manuplation operation
SELECT CONCAT(name, ' ', gender) AS name FROM Patient;
SELECT SUBSTRING_INDEX(name, ' ',1) AS first_name FROM Patient;

-- simple queries
select * from Patient;

-- Aggregate Functions 
SELECT COUNT(*) AS Total_patients FROM Patient;

SELECT AVG(age) AS Average_age FROM Patient;

SELECT MAX(age) AS Max_age FROM Patient;

SELECT MIN(age) AS Min_age FROM Patient;


