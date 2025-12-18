create database finallibarary 

CREATE TABLE Library (
    LibraryID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL UNIQUE,
    Location VARCHAR(150) NOT NULL,
    ContactNumber int NOT NULL,
    EstablishedYear INT
);

CREATE TABLE Book (
    BookID INT IDENTITY(1,1) PRIMARY KEY,
    ISBN int NOT NULL UNIQUE,
    Title VARCHAR(150) NOT NULL,
    Genre VARCHAR(20) NOT NULL,
    Price DECIMAL(8,2) CHECK (Price > 0),
    IsAvailable BIT NOT NULL DEFAULT 1,
    ShelfLocation VARCHAR(50) NOT NULL,
    LibraryID INT NOT NULL,

    CHECK (Genre IN ('Fiction', 'Non-fiction', 'Reference', 'Children')),

    FOREIGN KEY (LibraryID)
        REFERENCES Library(LibraryID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Member (
    MemberID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100)NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    PhoneNumber int NOT NULL,
    MembershipStartDate DATE NOT NULL
);


CREATE TABLE Staff (
    StaffID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100)NOT NULL,
    Position VARCHAR(50)NOT NULL,
    ContactNumber int NOT NULL,
    LibraryID INT NOT NULL,

    FOREIGN KEY (LibraryID)
        REFERENCES Library(LibraryID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Loan (
    LoanID INT IDENTITY(1,1) PRIMARY KEY,
    LoanDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE NOT NULL,
    Status VARCHAR(20) NOT NULL DEFAULT 'Issued',
    MemberID INT NOT NULL,
    BookID INT NOT NULL,

    CHECK (Status IN ('Issued', 'Returned', 'Overdue')),
    CHECK (ReturnDate IS NULL OR ReturnDate >= LoanDate),

    FOREIGN KEY (MemberID)
        REFERENCES Member(MemberID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (BookID)
        REFERENCES Book(BookID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE Payment (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(8,2) NOT NULL CHECK (Amount > 0),
    Method VARCHAR(30)NOT NULL,
    LoanID INT NOT NULL,

    FOREIGN KEY (LoanID)
        REFERENCES Loan(LoanID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE Review (
    ReviewID INT IDENTITY(1,1) PRIMARY KEY,
    Rating INT NOT NULL,
    Comments VARCHAR(255)NOT NULL DEFAULT 'No comments',
    ReviewDate DATE NOT NULL,
    MemberID INT NOT NULL,
    BookID INT NOT NULL,

    CHECK (Rating BETWEEN 1 AND 5),

    FOREIGN KEY (MemberID)
        REFERENCES Member(MemberID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (BookID)
        REFERENCES Book(BookID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


