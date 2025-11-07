--144p
--테이블 복사하기
CREATE table dept3 AS SELECT * from dept2;
SELECT * from dept2;


CREATE table dept4 AS SELECT dcode, dname from dept2;
SELECT * from dept4;


CREATE table dept5 AS SELECT * from dept2 where dcode = 1002;
SELECT * from dept5;


CREATE table dept6 AS SELECT dcode, dname from dept2 where dcode in(1000,1001,1002);
--                                                        ↑있는게 in에 있으면 출력   
SELECT * from dept6;


--table 구조만 가져오고 싶을때 쓰는거 일부러 틀리게
CREATE table dept7 as SELECT * from dept2 where 1=2;
SELECT * from dept7;


--새로운거 추가
ALTER table dept6 add (location VARCHAR2(10));
SELECT * from dept6;

ALTER table dept6 add (location2 VARCHAR2(10) DEFAULT 'SEOUL');
SELECT * from dept6;