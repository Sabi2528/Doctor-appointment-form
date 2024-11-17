CREATE DATABASE doctor_appointment;
use doctor_appointment;
CREATE TABLE appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_name VARCHAR(255),
    contact VARCHAR(50),
    appointment_date DATE,
    doctor_name VARCHAR(255),
    reason VARCHAR(255)
);
select*from appointments;

