select * from books;
select * from members;
select * from books_Issue;

insert into Books
Values(3,'5 Seonds Rule', 'Unkown',1)

UPDATE books
set author_name = 'abc' where id=3
select * from books;

--violatre foreign key regulations
insert into books_issue(issue_no, books_id, MID, issue_date,return_date)
Values(501,3,1,'2025-12-31','2026-01-09')

--after revoke
select * from books