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

-- DCL COOMANDS

-- GRANT: This command is used to give user access privileges to a database.

GRANT SELECT, INSERT, UPDATE ON Patient TO user_name;

-- REVOKE: This command is used to take back the access privileges from a user.

REVOKE UPDATE ON Patient FROM user_name;


-- TCL COMMANDS


START TRANSACTION;
INSERT INTO Patient (patient_id, name, age, gender, doctor_id) VALUES (4, 'New Patient', 30, 'Male', 1);
SAVEPOINT sp1;
INSERT INTO Patient (patient_id, name, age, gender, doctor_id) VALUES (5, 'Another Patient', 40, 'Female', 2);
ROLLBACK TO sp1;
COMMIT;


select * from Patient;
select * from Doctor;
