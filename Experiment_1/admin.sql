CREATE TABLE Books(
ID INT Primary Key,
Book_Title Varchar(30),
Author_Name Varchar(30),
Count int check(Count>=1) Not NULL,
)

insert Into Books(id, Book_Title, Author_Name,Count)
Values (11,'Harry Potter','J K Howling',2),
(22,'Overlord','Kugane Maruyama',4);

Select * from books;

delete from Books where id<=2;

update books
set ID=2 where ID = 22

ALTER table books
ALTER column Book_Title set NOT NULL,
ALTER column Author_Name set NOT NULL;

alter table books
alter column count set not null;

create table members(
	MID INT Primary Key,
	Name varchar(30) NOT NULL,
	age int check(age>=16) NOT NULL,
	email varchar(30) UNIQUE NOT NULL
)

insert into members(MID, Name, age, email)
Values (101,'Jagrath',18,'jagrath@gmail.com'),
(102,'Daksh',19,'daksh@gmail.com')

select * from members

create table Books_Issue(
	Issue_No INT Primary Key,
	Books_ID INT references Books(ID) NOT NULL,
	MID INT references members(MID) NOT NULL,
	Issue_Date DATE NOT NULL,
	Return_Date DATE check(Issue_Date <= Return_date or Return_Date is NULL),
	Overdue BOOL NOT NULL default false
)

insert into Books_Issue(Issue_No,Books_ID,MID,Issue_Date, Return_Date)
Values (500,1,101,'2026-01-01','2026-01-10')

select * from books_issue

create role librarian
with LOGIN PASSWORD '123';

grant select,update,delete,insert on Books to librarian;
grant select,update,delete,insert on members to librarian;
grant select,update,delete,insert on Books_Issue to librarian;


revoke select, update, delete, insert on Books from librarian;
revoke select, update, delete, insert on members from librarian;
revoke select, update, delete, insert on Books_issue from librarian;
