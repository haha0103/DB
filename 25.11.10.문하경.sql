create table dept7 as SELECT * from dept2;
SELECT * from dept7;
desc dept7;

--149p
--이름 변경
--컬럼 이름 변경
ALTER table dept6 add (location VARCHAR2(10));
alter table dept7 rename COLUMN location to loc;
SELECT * from dept7;
--테이블명 변경
rename dept7 to dept6;
SELECT * from dept6;

--테이블 구조 보기
desc dept6;
--컬럼의 데이터 크기 조정하기
alter TABLE dept6 MODIFY (loc VARCHAR2(20));
desc dept6;

--컬럼 삭제하기
alter table dept6 drop COLUMN loc;
SELECT * from dept6;
alter table dept6 drop COLUMN location CASCADE CONSTRAINTS;

-- truncate drop 차이비교
CREATE TABLE dept7 as SELECT * from dept6;

TRUNCATE table dept7;
SELECT * from dept7;
--TRUNCATE table: 모든 데이터를 빠르게 삭제함, 구조는 남아있음

drop table dept7;
SELECT * from dept7;
--drop table: 데이터와 구조를 모두 삭제함