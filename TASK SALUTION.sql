---1
select *from Book
----2
select Title,Genre, IsAvailable from Book
---3
select MemberID,FullName,Email,MembershipStartDate from Member
---4
select Title, Price as BookPrice from  Book
---5
select Price from Book where price >20 
----6
select MemberID,FullName,PhoneNumber from Member WHERE  MembershipStartDate < '2023-02-15'
----7
select Name,Location,ContactNumber from Library where EstablishedYear<2012
----8
select ISBN,Title,Genre from Book ORDER BY price DESC;
---9
select MAX(price) AS max_price,MIN(price) AS min_price,AVG(price) AS avg_price FROM Book;
---10
SELECT COUNT(*) AS total_books FROM Book;
---11
select FullName,PhoneNumber from  Member where Email ='aisha@oman.com'
---12
select ISBN,Genre from Book where Title  LIKE '%Data%'
--13
insert into Member (FullName, Email, PhoneNumber, MembershipStartDate)
VALUES('ahlam nassir alhinai','dreeaam1993@gmail.com',92301014,'2025-11-2')

select * from Member
---14
insert into Loan (LoanDate, DueDate, ReturnDate, Status, MemberID, BookID)
VALUES('2023-04-01', '2023-04-15', '2023-04-17','Returned',5,4)
select * from Loan 
---15
---insert into Member (FullName, Email, PhoneNumber, MembershipStartDate)VALUES('muna alhinai',null,null,'2024-03-20')
--- not working , all entrubutes is not null.

----16
update Loan set ReturnDate =  GETDATE() WHERE MemberID = 5 and BookID =4
---17
UPDATE Book SET price = price * 1.05 WHERE price < 35

---18
----their is no entity called  status in member table .
----19
delete from Member WHERE NOT EXISTS ( SELECT 1 FROM Loan WHERE Loan.MemberID = Member.MemberID);
