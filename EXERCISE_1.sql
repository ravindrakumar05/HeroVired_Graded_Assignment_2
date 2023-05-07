-- DATABASE CREATION 

CREATE DATABASE CONSULTATION;

-- CREATING A DOCTOR TABLE 

CREATE TABLE DOCTOR(
DOC_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
EMAIL VARCHAR(30) NOT NULL,
EDUCATION VARCHAR(30) NOT NULL,
SPECIALIZATION VARCHAR(25) NOT NULL,
EXPERIENCE INT NOT NULL);

-- ASSIGNING THE AUTO_INCREMENT VALUE TO 101

ALTER TABLE DOCTOR AUTO_INCREMENT = 101;


-- CREATING A PATIENT  TABLE 

CREATE TABLE PATIENT(
PATIENT_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
PATIENT_NAME VARCHAR(30) NOT NULL,
GENDER VARCHAR(10) NOT NULL,
DOB DATE NOT NULL,
AGE INT NOT NULL,
PHONE BIGINT NOT NULL
);

-- ASSIGNING THE AUTO_INCREMENT VALUE TO 201

ALTER TABLE PATIENT AUTO_INCREMENT = 201;

-- CREATING APPOINTMENT TABLE 

CREATE TABLE APPOINTMENT(
APPOI_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
DOC_ID  INT NOT NULL,
PATIENT_ID INT NOT NULL,
DATE_ DATE NOT NULL,
TIME_ TIME NOT NULL,
DURATION INT NOT NULL,
FOREIGN KEY (DOC_ID) REFERENCES DOCTOR(DOC_ID),
FOREIGN KEY (PATIENT_ID) REFERENCES PATIENT(PATIENT_ID)
);

-- ASSIGNING THE AUTO_INCREMENT VALUE TO 301

ALTER TABLE APPOINTMENT AUTO_INCREMENT = 301;

-- CREATING A REVIEW TABLE 

CREATE TABLE REVIEW(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
DOC_ID INT NOT NULL,
PATIENT_ID INT NOT NULL,
RATING INT NOT NULL,
TEXT_ VARCHAR(300) NOT NULL,
FOREIGN KEY (DOC_ID) REFERENCES DOCTOR(DOC_ID),
FOREIGN KEY (PATIENT_ID) REFERENCES PATIENT(PATIENT_ID)
);

-- ASSIGNING THE AUTO_INCREMENT VALUE TO 401

ALTER TABLE REVIEW AUTO_INCREMENT = 401;


-- INSERTING THE DATA INTO THE DOCTOR TABLE 

INSERT INTO DOCTOR (NAME, EMAIL, EDUCATION, SPECIALIZATION, EXPERIENCE)
VALUES
('Dr. Rajesh Sharma', 'rajesh.sharma@email.com', 'MBBS', 'Cardiology', 10),
('Dr. Priya Singh', 'priya.singh@email.com', 'MD', 'Oncology', 8),
('Dr. Sanjay Patel', 'sanjay.patel@email.com', 'PhD', 'Neurology', 12),
('Dr. Shalini Gupta', 'shalini.gupta@email.com', 'MD', 'Pediatrics', 6),
('Dr. Ankit Kapoor', 'ankit.kapoor@email.com', 'DO', 'Orthopedics', 9),
('Dr. Pooja Desai', 'pooja.desai@email.com', 'MBBS', 'Gynecology', 11),
('Dr. Arjun Reddy', 'arjun.reddy@email.com', 'PhD', 'Psychiatry', 15),
('Dr. Ritu Verma', 'ritu.verma@email.com', 'MD', 'Dermatology', 7),
('Dr. Siddharth Gupta', 'siddharth.gupta@email.com', 'DO', 'Sports Medicine', 10),
('Dr. Neha Singhania', 'neha.singhania@email.com', 'MD', 'Ophthalmology', 13);


-- INSERTING DATA INTO THE PATIENT TABLE 

INSERT INTO PATIENT (PATIENT_NAME,GENDER,DOB,AGE,PHONE) VALUES 
('Sneha Sharma', 'Female', '1993-07-25', 28, 9876543210),
('Amit Kumar', 'Male', '1987-11-23', 34, 9876543211),
('Divya Singh', 'Female', '1996-02-15', 25, 9876543212),
('Ravi Gupta', 'Male', '1983-06-05', 38, 9876543213),
('Pooja Patel', 'Female', '1989-09-11', 32, 9876543214),
('Saurabh Mishra', 'Male', '1980-04-28', 41, 9876543215),
('Kritika Chakraborty', 'Female', '1991-01-25', 30, 9876543216),
('Ankit Sharma', 'Male', '1984-08-12', 37, 9876543217),
('Neha Khanna', 'Female', '1994-04-05', 27, 9876543218),
('Rahul Singhania', 'Male', '1981-03-16', 40, 9876543219);


-- INSERTING THE DATA INTO THE APPOINTMENT TABLE 

INSERT INTO APPOINTMENT (DOC_ID,PATIENT_ID,DATE_,TIME_,DURATION) VALUES
(106, 207, '2023-05-10', '10:00:00', 60),
(103, 209, '2023-05-11', '11:30:00', 45),
(110, 201, '2023-05-12', '14:00:00', 60),
(104, 204, '2023-05-13', '15:30:00', 45),
(108, 208, '2023-05-14', '13:00:00', 60),
(105, 203, '2023-05-15', '10:30:00', 45),
(101, 210, '2023-05-16', '11:00:00', 60),
(107, 205, '2023-05-17', '14:30:00', 45),
(102, 206, '2023-05-18', '16:00:00', 60),
(109, 202, '2023-05-19', '13:30:00', 45);


-- INSERTING THE DATA INTO THE REVIEW TABLE 

INSERT INTO REVIEW (DOC_ID,PATIENT_ID,RATING,TEXT_) VALUES
(103, 201, 9, 'Dr. Sanjay Patel is an excellent doctor. She patiently listened to all my problems and gave me the best treatment possible.'),
(106, 204, 8, 'Dr. Pooja Desai was friendly and knowledgeable. I would definitely recommend him to others.'),
(104, 202, 7, 'Dr. Shalini Gupta was professional and courteous. However, the wait time was a bit long.'),
(110, 205, 9, 'Dr. Neha Singhania is a great doctor. He explained my condition clearly and answered all my questions.'),
(108, 203, 6, 'Dr. Ritu Verma seemed rushed during my appointment. She didn''t really listen to my concerns.'),
(102, 207, 10, 'Dr. Priya Singh is an amazing doctor. She made me feel comfortable and explained everything clearly.'),
(105, 208, 8, 'Dr. Ankit Kapoor was friendly and approachable. She gave me great advice.'),
(109, 206, 7, 'Dr. Siddharth Gupta seemed knowledgeable, but the wait time was excessive.'),
(101, 209, 9, 'Dr. Rajesh Sharma is an excellent doctor. She was very thorough and caring.'),
(107, 210, 8, 'Dr. Arjun Reddy was professional and courteous. However, the wait time was a bit long.');


SELECT * FROM DOCTOR;
SELECT * FROM PATIENT;
SELECT * FROM APPOINTMENT;
SELECT * FROM REVIEW;

