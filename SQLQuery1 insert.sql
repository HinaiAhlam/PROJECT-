INSERT INTO Library (Name, Location, ContactNumber, EstablishedYear)
VALUES
('Muscat Public Library', 'Muscat', 91234567, 1998),
('Salalah Knowledge Library', 'Salalah', 92345678, 2005);
select * from Library
INSERT INTO Library (Name, Location, ContactNumber, EstablishedYear)
VALUES('Nizwa Cultural Library', 'Nizwa', 93456789, 2012),
('Sohar Community Library', 'Sohar', 94567890, 2015);

INSERT INTO Member (FullName, Email, PhoneNumber, MembershipStartDate)
VALUES
('ahlam alhinai', 'ahlam@oman.com', 90000001, '2023-01-10'),
('tasnim Al Harthy', 'tasnim@oman.com', 90000002, '2023-02-15'),
('alzahra Al Amri', 'alzahra@oman.com', 90000003, '2023-03-01'),
('Aisha Al Zadjali', 'aisha@oman.com', 90000004, '2023-03-20');
select * from Member


INSERT INTO Staff (FullName, Position, ContactNumber, LibraryID)
VALUES
('Khalid Al hinai', 'Manager', 91111111, 1),
('Mariam Al Hinai', 'Librarian', 92222222, 2),
('Salem almurike', 'Assistant', 93333333, 3),
('Noor Al Abri', 'Clerk', 94444444, 4);

select * from Staff

INSERT INTO Book (ISBN, Title, Genre, Price, IsAvailable, ShelfLocation, LibraryID)
VALUES
(30001, 'Database Basics', 'Reference', 40.00, 1, 'R1', 1),
(30002, 'Omani Heritage', 'Non-fiction', 35.00, 1, 'N2', 2),
(30003, 'Desert Stories', 'Fiction', 25.00, 1, 'F3', 3),
(30004, 'Kids Learning', 'Children', 20.00, 1, 'C4', 4);
select * from Book


INSERT INTO Loan (LoanDate, DueDate, ReturnDate, Status, MemberID, BookID)
VALUES
('2023-04-01', '2023-04-15', '2023-04-17', 'Issued', 1, 1),
('2023-04-02', '2023-04-16', '2023-04-14', 'Returned', 2, 2),
('2023-04-03', '2023-04-17', '2023-04-19', 'Issued', 3, 3),
('2023-04-04', '2023-04-18', '2023-04-18', 'Returned', 4, 4);
select * from  Loan

INSERT INTO Payment (PaymentDate, Amount, Method, LoanID)
VALUES
('2023-04-14', 5.00, 'Cash', 2),
('2023-04-18', 7.00, 'Card', 4),
('2023-04-10', 3.00, 'Cash', 5),
('2023-04-12', 4.00, 'Card', 3);
select * from  Payment

INSERT INTO Review (Rating, Comments, ReviewDate, MemberID, BookID)
VALUES
(5, 'Excellent book', '2023-04-16', 2, 2),
(4, 'Very useful', '2023-04-17', 1, 1),
(3, 'Good', '2023-04-18', 3, 3),
(5, 'Suitable for children', '2023-04-19', 4, 4);

select * from  Review 
