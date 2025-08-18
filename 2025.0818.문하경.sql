--count
SELECT * from emp;
SELECT COUNT(*), count(comm) from emp;

--sum
SELECT COUNT(comm), sum(comm) from emp;

--avg
SELECT COUNT(comm), sum(comm), avg(comm) from emp;

--max,min
SELECT * from emp;
SELECT max(sal), min(sal) from emp;
SELECT max(hiredate) "MAX", min(hiredate) "MiN" from emp;

--group by         ↓null값 치환
SELECT deptno, round(avg(nvl(sal,0)),2) "AVG" from emp 
group by deptno;

SELECT deptno, job, avg(nvl(sal,0)) "AVG_SAL" from emp group by deptno, job ORDER by deptno;

--주의 사항: select절에 사용된 그룹함수 이외의 컬럼이나 표현식은 반드시 group by 절에 사용되어야 합니다 아니면 에러생김, 별칭안됨


--그룹 함수 연습문제
--1.
SELECT max(sal+nvl(comm,0)) "MAX", min(sal+nvl(comm,0)) "MIN", round(avg(sal+nvl(comm,0)),1) "AVG" from emp;

--2.
SELECT * from student;
SELECT  substr(birthday,4,2) "birthday", count(*) from student group by substr(birthday,4,2) ORDER by "birthday";
SELECT COUNT(*)||'EA' "TOTAL", count(decode(substr(birthday,4,2),'01',0))||'EA' "JAN",
                               count(decode(substr(birthday,4,2),'02',0))||'EA' "FEB",
                               count(decode(substr(birthday,4,2),'03',0))||'EA' "MAR",
                               count(decode(substr(birthday,4,2),'04',0))||'EA' "APR",
                               count(decode(substr(birthday,4,2),'05',0))||'EA' "MAY",
                               count(decode(substr(birthday,4,2),'06',0))||'EA' "JUN",
                               count(decode(substr(birthday,4,2),'07',0))||'EA' "JUL",
                               count(decode(substr(birthday,4,2),'08',0))||'EA' "AUG",
                               count(decode(substr(birthday,4,2),'09',0))||'EA' "SEP",
                               count(decode(substr(birthday,4,2),'10',0))||'EA' "OCT",
                               count(decode(substr(birthday,4,2),'11',0))||'EA' "NOV",
                               count(decode(substr(birthday,4,2),'12',0))||'EA' "DEC"
                               from student;
                               
--3.
SELECT * from student;
SELECT count(*) "TOTAL", count(decode(substr(tel,1,instr(tel,')')-1),'02',0)) "SEOUL",
                         count(decode(substr(tel,1,instr(tel,')')-1),'031',0)) "GYEONGGI",
                         count(decode(substr(tel,1,instr(tel,')')-1),'051',0)) "BUSAN",
                         count(decode(substr(tel,1,instr(tel,')')-1),'052',0)) "ULSAN",
                         count(decode(substr(tel,1,instr(tel,')')-1),'053',0)) "DAEGU",
                         count(decode(substr(tel,1,instr(tel,')')-1),'055',0)) "GYEONGBAM"
from student;