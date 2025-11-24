--1.
CREATE table book(
book_id NUMBER(5) not null,
category VARCHAR(10) not null,
author_id NUMBER(5) not null,
price NUMBER(10) not null,
published_date date not null);

SELECT * from book;

INSERT into book VALUES(1,'인문',1,10000,'2020-01-01');
INSERT into book VALUES(2,'경제',1,9000,'2021-04-11');
INSERT into book VALUES(3,'경제',2,11000,'2021-02-05');
INSERT into book VALUES(4,'인문',3,10000,'2021-03-15');
INSERT into book VALUES(5,'생활',2,12000,'2021-01-10');

SELECT * from book;

--2.
CREATE table author(
author_id NUMBER(5) not null,
author_name VARCHAR(10) not null);

SELECT * from author;

INSERT into author VALUES(1,'홍길동');
INSERT into author VALUES(2,'김영호');
INSERT into author VALUES(3,'이현정');
INSERT into author VALUES(4,'김균도');

SELECT * from author;


--3.
--1)
SELECT book_id 도서id, published_date 출판일 from book 
where category='인문' and to_char(published_date,'YYYY')='2021' 
ORDER BY published_date;

--2)
SELECT a.book_id "도서ID", b.author_name "저자명", a.published_date "출판일" from book a, author b 
where a.author_id=b.author_id and a.category='경제' ORDER BY published_date;