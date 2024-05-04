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
(3, 'Yumeko Jabami', 20, 'Female', '3');

INSERT INTO Doctor (doctor_id,name,specialization) VALUES
(3, 'Light Yagami', 'Cardiologist'),
(1, 'Kiyotaka Ayanokoji', 'Neurosergon'),
(2, 'Johan Liebert', 'Psychologist');

select * from Patient;
-- Updating patient record
UPDATE Patient SET name = 'Nidhi Khade',age = '19', gender = 'Female' WHERE patient_id = 1;

select * from Patient;
-- Deletiong patient record
DELETE FROM Patient WHERE patient_id = 2;

select * from Patient;

