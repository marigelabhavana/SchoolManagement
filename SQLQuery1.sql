create database SchoolManagement
use SchoolManagement

CREATE TABLE Class (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(50)
);

INSERT INTO Class (ClassID, ClassName)
VALUES
    (1, 'Class 10A'),
    (2, 'Class 10B'),
    (3, 'Class 11A'),
    (4, 'Class 11B'),
    (5, 'Class 12A');

CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    Gender NVARCHAR(10),
    SubjectTaught NVARCHAR(50)
);

INSERT INTO Teachers (TeacherID, FirstName, LastName, DateOfBirth, Gender, SubjectTaught)
VALUES
    (1, 'John', 'Smith', '1980-05-15', 'Male', 'Mathematics'),
    (2, 'Emily', 'Jones', '1985-08-22', 'Female', 'Science'),
    (3, 'Michael', 'Davis', '1975-12-10', 'Male', 'English'),
    (4, 'Sophia', 'Miller', '1988-04-30', 'Female', 'History'),
    (5, 'William', 'Taylor', '1982-07-18', 'Male', 'Physics');

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    Gender NVARCHAR(10),
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth, Gender, ClassID)
VALUES
    (1, 'Emma', 'Johnson', '2005-03-03', 'Female', 1),
    (2, 'Daniel', 'Brown', '2004-11-12', 'Male', 2),
    (3, 'Olivia', 'Williams', '2006-02-20', 'Female', 3),
    (4, 'James', 'Jones', '2005-06-25', 'Male', 4),
    (5, 'Ava', 'Anderson', '2004-09-14', 'Female', 5);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName NVARCHAR(100),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

INSERT INTO Courses (CourseID, CourseName, TeacherID)
VALUES
    (1, 'Mathematics 101', 1),
    (2, 'Science Basics', 2),
    (3, 'English Literature', 3),
    (4, 'History of World', 4),
    (5, 'Physics Fundamentals', 5);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5);






