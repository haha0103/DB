--표1
CREATE TABLE BOOK
(BOOK_ID NUMBER(5) not null,
category VARCHAR2(10) not null,
author_id NUMBER(5) not null,
price NUMBER(10) not null,
published_date DATE not null);

SELECT * from book;

--표3
INSERT into book VALUES(1,'인문',1,10000,'2020-01-01');
INSERT into book VALUES(2,'경제',1,9000,'2021-04-11');
INSERT into book VALUES(3,'경제',2,11000,'2021-02-05');
INSERT into book VALUES(4,'인문',3,10000,'2021-03-15');
INSERT into book VALUES(5,'생활',2,12000,'2020-01-10');
-- 삭제 DELETE book where book_id=5;

SELECT * from book;

--표2
CREATE TABLE author(
author_id NUMBER(5) not null,
author_name VARCHAR(10) not null);

SELECT * from author;

--표4
INSERT into author VALUES(1,'홍길동');
INSERT into author VALUES(2,'김영호');
INSERT into author VALUES(3,'이현정');
INSERT into author VALUES(4,'김균도');

SELECT * from author;

--3.문제
--1.
SELECT book_id 도서ID, published_date 출판일 from book where category = '경제' and TO_char(published_date,'YYYY') = '2021' 
ORDER by published_date;

--2.
SELECT a.book_id 도서ID, b.author_name 저자명, a.published_date 출판일 from book a, author b 
where b.author_id=a.author_id and a.category='경제' ORDER by published_date;