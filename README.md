# HealthCare Database management and Analysis
Simple Project showcasing  my ability to create and manage a database, perform essential SQL Queries and derive useful insights.

# Project Overview 

### Objective : 

the goal of this  design and implement a comprehensive database to manage patient information appointments, and medical records in the healthcare industry.
Additionally, perform data analysis to extract meningful insights from the data.

# Skill Demonstrated:

1.  Database Design: Normalized tables with appropriate primary and foreign keys to ensure data integrity.
2.  Sql Proficiency: Complex SQL queries for data retrieval, aggregation, and analysi.
3.  Data Management: proceesses for insering, updating and managing healthcare data.
4.  roblem Solving: Data Analysis to derive actionable insights from healthcare data.

# Technologies Used

* PostgreSQL
* pgAdmin / Valentina Studio


# Database Schema

# Tables
```SQL
1- Patients-
* PatientID: SERIAL PRIMARY KEY
* FirstName: VARCHAR(50)
* LastName: VARCHAR(50)
* DateOfBirth: DATE
* Gender: VARCHAR(10)
* ContactNumber: VARCHAR(15)
* Email: VARCHAR(100)
 ``` 
2- Doctors
```SQL
* DoctorID: SERIAL PRIMARY KEY
* FirstName: VARCHAR(50)
* LastName: VARCHAR(50)
* Specialty: VARCHAR(100)
* ContactNumber: VARCHAR(15)
* Email: VARCHAR(100)
  ```

3- Appointments
```SQL
* AppointmentID: SERIAL PRIMARY KEY
* PatientID: INT REFERENCES Patients(PatientID)
* DoctorID: INT REFERENCES Doctors(DoctorID)
* AppointmentDate: DATE
* Reason: VARCHAR(255)
```

4- MedicalRecords
```SQL
* RecordID: SERIAL PRIMARY KEY
* PatientID: INT REFERENCES Patients(PatientID)
* Diagnosis: VARCHAR(255)
* Treatment: VARCHAR(255)
* RecordDate: DATE
```

  <img width="1780" alt="Screenshot 2024-08-01 at 3 09 09 PM" src="https://github.com/user-attachments/assets/d614f438-d5a2-47df-90a0-55d7f9b42081">

 # Insert Sample Data 

 
<img width="996" alt="Screenshot 2024-08-01 at 3 13 54 PM" src="https://github.com/user-attachments/assets/ddbf24f9-1205-4f49-9fda-29edd25f1000">

-- Insert Sample Data into Patients Table
```SQL
INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, ContactNumber, Email)
VALUES 
('John', 'Doe', '1980-01-15', 'Male', '123-456-7890', 'john.doe@example.com'),
('Jane', 'Smith', '1990-05-20', 'Female', '987-654-3210', 'jane.smith@example.com');
```

-- Insert Sample Data into Doctors Table
```SQL
INSERT INTO Doctors (FirstName, LastName, Specialty, ContactNumber, Email)
VALUES 
('Alice', 'Brown', 'Cardiology', '555-123-4567', 'alice.brown@example.com'),
('Bob', 'Johnson', 'Neurology', '555-987-6543', 'bob.johnson@example.com');
```
-- Insert Sample Data into Appointments Table
```SQL
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Reason)
VALUES 
(1, 1, '2023-07-10', 'Routine Checkup'),
(2, 2, '2023-07-12', 'Headache');
```
-- Insert Sample Data into MedicalRecords Table
```SQL
INSERT INTO MedicalRecords (PatientID, Diagnosis, Treatment, RecordDate)
VALUES 
(1, 'Hypertension', 'Medication', '2023-07-10'),
(2, 'Migraine', 'Painkillers', '2023-07-12');
```
# Perform Basic Queries and Analysis

1. Retrieve all patient information:

```SQL
  SELECT * FROM Patients;
```
2. List all appointments
```SQL
   SELECT a.AppointmentID, d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName, a.AppointmentDate, a.Reason
FROM Appointments a
JOIN Doctors d ON a.DoctorID = d.DoctorID
WHERE a.PatientID = 1;
```

3. Get the count of appointments by each doctor:
```SQL
   SELECT d.FirstName, d.LastName, COUNT(a.AppointmentID) AS AppointmentCount
FROM Appointments a
JOIN Doctors d ON a.DoctorID = d.DoctorID
GROUP BY d.DoctorID;
```

4. Fetch medical records for a specific patients.
```SQL
SELECT * FROM MedicalRecords WHERE PatientID =
```
