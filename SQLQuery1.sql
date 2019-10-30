DROP TABLE IF EXISTS StudentExercise;
DROP TABLE IF EXISTS Exercise;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Cohort;

CREATE TABLE Cohort (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[name] VARCHAR(25) NOT NULL
);

CREATE TABLE Student (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[firstName] VARCHAR(25) NOT NULL,
[lastName] VARCHAR(25) NOT NULL,
[cohortId] INT NOT NULL,
[slackHack] VARCHAR(15) NOT NULL,
CONSTRAINT FK_Student_Cohort FOREIGN KEY(cohortId) REFERENCES Cohort(Id) 
);

CREATE TABLE Exercise (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[name] VARCHAR(25) NOT NULL,
[language] VARCHAR(25) NOT NULL

);

CREATE TABLE StudentExercise (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
exerciseId INT NOT NULL,
CONSTRAINT FK_StudentExercise_Exercise FOREIGN KEY (exerciseId) REFERENCES Exercise (Id),
studentId INT NOT NULL
CONSTRAINT FK_StudentExercise_Student FOREIGN KEY (studentId) REFERENCES Student (Id) 
);


CREATE TABLE Instructor (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[firstName] VARCHAR(25) NOT NULL,
[lastName] VARCHAR(25) NOT NULL,
[cohortId] INT NOT NULL,
[slackHack] VARCHAR(15) NOT NULL,
specialty VARCHAR(15) NOT NULL
);


--Adding Cohort--
INSERT INTO Cohort (name) VALUES ('Michael''s Dream Cohort 2');
INSERT INTO Cohort (name) VALUES ( 'Nightmare Cohort 1');
INSERT INTO Cohort (name) VALUES ('Cohort Neutral ');


--Adding Student--

INSERT INTO Student (firstName,lastName, cohortId, slackHack) VALUES ('Michael', 'Stiles', 1, 'mstiles01');
INSERT INTO Student (firstName,lastName, cohortId, slackHack) VALUES ('Noah', 'Bartfeild', 1, 'noahb');

INSERT INTO Student (firstName,lastName, cohortId, slackHack) VALUES ('Brantley', 'Jones', 3, 'brantleyJ');

INSERT INTO Student (firstName,lastName, cohortId, slackHack) VALUES ('Eric', 'Taylor', 3, 'et');

INSERT INTO Student (firstName,lastName, cohortId, slackHack) VALUES ('Bobby', 'Brady', 2, 'bobbyB');

--Adding Instructor--

INSERT INTO Instructor(firstName,lastName, cohortId, slackHack, specialty) VALUES ('Adam', 'Sheaffer', 1, 'asheaffer', 'Code');

INSERT INTO Instructor (firstName,lastName, cohortId, slackHack, specialty) VALUES ('Jenna', 'Solis', 2, 'jSolis', 'Hurting others');

INSERT INTO Instructor (firstName,lastName, cohortId, slackHack, specialty) VALUES ('Bryan', 'Neilson', 3, 'bryNeilson', 'Positivety' );

INSERT INTO Instructor (firstName,lastName, cohortId, slackHack, specialty) VALUES ('Steve', 'Brownlee', 3, 'sBrownlee', 'Belching')
;
INSERT INTO Instructor (firstName,lastName, cohortId, slackHack, specialty) VALUES ('Andy', 'Collins', 1, 'acollins', 'CSharp');

-- Adding Exercises--
INSERT INTO Exercise (name, language) VALUES ('FarmSomething', 'CSharp');

INSERT INTO Exercise (name, language) VALUES ('Turd Boi', 'JS');

INSERT INTO Exercise (name, language) VALUES ('PreCapstone', 'React.Js');

--Adding Student Exercises--

INSERT INTO StudentExercise (exerciseId, studentId) VALUES (1, 1);

INSERT INTO StudentExercise (exerciseId, studentId) VALUES (2, 2);

INSERT INTO StudentExercise (exerciseId, studentId) VALUES (3, 3);

INSERT INTO StudentExercise (exerciseId, studentId) VALUES (1, 4);

INSERT INTO StudentExercise (exerciseId, studentId) VALUES (2, 5);

