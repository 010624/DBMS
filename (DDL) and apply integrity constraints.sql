CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    address VARCHAR(255)
);

CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100)
);

INSERT INTO Patient (patient_id, name, age, gender, address)
VALUES (1, 'John Doe', 35, 'Male', '123 Main St');

INSERT INTO Doctor (doctor_id,name,specialization) VALUES
(3, 'Light Yagami', 'Cardiologist'),
(1, 'Kiyotaka Ayanokoji', 'Neurosergon'),
(2, 'Johan Liebert', 'Psychologist');
