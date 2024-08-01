# HealthCare Database management and Analysis
Simple Project showcasing  my ability to create and manage a database, perform essential SQL Queries and derive useful insights.

# Project Overview 

Objective : the goal of this  design and implement a comprehensive databse to manage patient information appointments, and medical records in the healthcare industry.
Additionally, perform data analysis to extract meningful insights from the data.

# Skill Demonstrated:

* Database Design: Normalized tables with appropriate primary and foreign keys to ensure data integrity.
* Sql Proficiency: Complex SQL queries for data retrieval, aggregation, and analysi.
* Data Management: proceesses for insering, updating and managing healthcare data.
* Problem Solving: Data Analysis to derive actionable insights from healthcare data.

# Technologies Used
* PostgreSQL
* pgAdmin / Valentina Studio

# Database Schema

# Tables
1- Patients-
* PatientID: SERIAL PRIMARY KEY
* FirstName: VARCHAR(50)
* LastName: VARCHAR(50)
* DateOfBirth: DATE
* Gender: VARCHAR(10)
* ContactNumber: VARCHAR(15)
* Email: VARCHAR(100)
  
2- Doctors
* DoctorID: SERIAL PRIMARY KEY
* FirstName: VARCHAR(50)
* LastName: VARCHAR(50)
* Specialty: VARCHAR(100)
* ContactNumber: VARCHAR(15)
* Email: VARCHAR(100)
  
3- Appointments
* AppointmentID: SERIAL PRIMARY KEY
* PatientID: INT REFERENCES Patients(PatientID)
* DoctorID: INT REFERENCES Doctors(DoctorID)
* AppointmentDate: DATE
* Reason: VARCHAR(255)

4- MedicalRecords
* RecordID: SERIAL PRIMARY KEY
* PatientID: INT REFERENCES Patients(PatientID)
* Diagnosis: VARCHAR(255)
* Treatment: VARCHAR(255)
* RecordDate: DATE
