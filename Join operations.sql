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
select * from Doctor;

-- Inner Join:

SELECT Patient.name AS patient_name, Doctor.name AS doctor_name, Doctor.specialization
FROM Patient
INNER JOIN Doctor ON Patient.doctor_id = Doctor.doctor_id;

-- Left Join:

SELECT Patient.name AS patient_name, Doctor.name AS doctor_name, Doctor.specialization
FROM Patient
LEFT JOIN Doctor ON Patient.doctor_id = Doctor.doctor_id;

-- Right Join:

SELECT Patient.name AS patient_name, Doctor.name AS doctor_name, Doctor.specialization
FROM Patient
RIGHT JOIN Doctor ON Patient.doctor_id = Doctor.doctor_id;

-- Full Outer Join:

SELECT Patient.name AS patient_name, Doctor.name AS doctor_name, Doctor.specialization
FROM Patient
FULL JOIN Doctor ON Patient.doctor_id = Doctor.doctor_id;
