CREATE DATABASE LIBRARY__1

create table Library0 (LibraryID INT PRIMARY KEY,name VARCHAR(100) NOT NULL,Location VARCHAR(255),ContactNumber int,EstablishedYear int)


create table Staff (StaffID INT PRIMARY KEY,FullName VARCHAR(100) NOT NULL, Position VARCHAR(50), ContactNumber int,LibraryID INT NOT NULL, FOREIGN KEY (LibraryID) REFERENCES Library0(LibraryID))


create table Book (  BookID INT PRIMARY KEY,ISBN INT, Title VARCHAR(255) NOT NULL,Genre VARCHAR(50),Price DECIMAL(10,2),  AvailabilityStatus VARCHAR(30),ShelfLocation VARCHAR(50), LibraryID INT NOT NULL, 
FOREIGN KEY (LibraryID) REFERENCES Library0(LibraryID))


create table Member(MemberID INT PRIMARY KEY,FullName VARCHAR(100) NOT NULL,Email VARCHAR(100) UNIQUE, PhoneNumber INT, MembershipStartDate DATE)

create table Loan ( LoanID INT PRIMARY KEY,MemberID INT NOT NULL, BookID INT NOT NULL, LoanDate DATE,  DueDate DATE, ReturnDate DATE,Status VARCHAR(20),
FOREIGN KEY (MemberID) REFERENCES Member(MemberID),FOREIGN KEY (BookID) REFERENCES Book(BookID))

create table Payment (PaymentID INT PRIMARY KEY,LoanID INT NOT NULL, PaymentDate DATE, Amount DECIMAL(10,2), Method VARCHAR(50),FOREIGN KEY (LoanID) REFERENCES Loan(LoanID))


create table Review (ReviewID INT PRIMARY KEY,MemberID INT NOT NULL,  BookID INT NOT NULL,Rating INT CHECK (Rating BETWEEN 1 AND 5),Comments TEXT,ReviewDate DATE, 
FOREIGN KEY (MemberID) REFERENCES Member(MemberID), FOREIGN KEY (BookID) REFERENCES Book(BookID))

