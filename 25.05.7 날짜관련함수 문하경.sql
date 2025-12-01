--2025/05/07 날짜 관련 함수
---sysdate:시스템의 현재 날짜와 시간
--월
SELECT sysdate, to_char(sysdate) from dual;
SELECT sysdate, to_char(sysdate) "문자열로 바뀜", to_char(sysdate,'mm'), to_char(sysdate,'month')from dual;
--일
SELECT sysdate, to_char(sysdate) "문자열로 바뀜", to_char(sysdate,'dd'), to_char(sysdate,'day'),to_char(sysdate,'ddth')from dual;
--시간
 SELECT sysdate, to_char(sysdate,'rrrr-mm-dd:hh24:mi:ss') from dual;

SELECT * from student;
SELECT studno,name,birthday from student
where substr(to_char(birthday),4,2)='01';

SELECT * from emp;
SELECT ename,empno,hiredate from emp
where substr(to_char(hiredate),4,2)in('01','02','03');

SELECT empno,ename,sal,comm, to_char(sal*12+comm,'999,999.00') from emp where ename='ALLEN';

SELECT empno,ename,to_char(hiredate,'yyyy-mm-dd')hiredate,
to_char(sal*12+comm,'999,999$')sal,   
to_char((sal*12+comm)*15,'999,999$')"15% up" from emp where comm is not null;
